# Example preprocessing script.
# url <- 'https://tinyurl.com/ybjbdpp3'                                           #Specifying the url for desired website to be scrapped
# webpage <- read_html(url)                                                       #Reading the HTML code from the website
# rank_data_html <- html_nodes(webpage,'.tableauViz')                             #Using CSS selectors to scrap the rankings section

# Load Tabula functions
# library(tabulizer)
# library(tabulizerjars)

pdf.file <- "~/AnnualReports/data/02UndergraduateCostOfAttendance.pdf"          # Define path to PDF file
pdf.dat <- extract_tables(pdf.file)                                             # Extract data table
# Coerce output matrix to data.frame
# pdf.tbl <- data.frame(pdf.dat[[1]][-1, ])
pdf.tbl <- data.table(pdf.dat[[1]][-1, ])                                       # Coerce output matrix to data.table
names(pdf.tbl) <- pdf.dat[[1]][1, ]
names(pdf.tbl)[1]<-"Description"
pdf.tbl[, c(2:11)] <-lapply(pdf.tbl[, c(2:11)], function(y) as.numeric(gsub('[^a-zA-Z0-9.]', '', y)))                                       # https://tinyurl.com/ya4ok9tb
pdf.tbl[is.na(pdf.tbl)] <- ""
pdf.tbl<-dplyr::mutate_if(pdf.tbl, is.numeric, format_dol_fun)
pdf.tbl1<-pdf.tbl[, c(2:11)] <-lapply(pdf.tbl[, c(2:11)], function(y) as.numeric(gsub('[^a-zA-Z0-9.]', '', y)))  
# formattable(pdf.tbl)
# pdf2<-datatable(pdf.tbl)
names(pdf.tbl)<- gsub("20","",names(pdf.tbl))                                   # rename columns
pdf2<-datatable(data.table(pdf.tbl), caption='Undergraduate Cost of Attendance', rownames=FALSE, options = list(
  autowidth = TRUE,
  bInfo = FALSE,
  bSort = FALSE,
  class = 'dt-center',
  columnDefs = list(list(width = '175px', targets = c(0), width = '210px', targets = c(1:11))),
  colnames = NULL,
  initComplete = JS(
    "function(settings, json) {",
    "$(this.api().table().header()).css({'background-color': '#000', 'color': '#fff'});",
    "}"),
  options = list(dom = 'f'),
  paging = FALSE,
  rownames = FALSE,
  searching = FALSE,
  showNEntries = FALSE
))

pdf2<-formatCurrency(pdf2,2:11, digits = 0) %>%
      formatStyle(columns = c(2:11), fontSize = '100%')
pdf2

# grad_res<-pdf.tbl[2:5, c(1, 11)]
# grad_non_res<-pdf.tbl[8:11, c(1, 11)]

grad_res<-coa.gr.res
grad_non_res<-coa.gr.non

coa.gr <-data.table(coa.gr.res, coa.gr.non)
coa.gr<-coa.gr[, !c(3)]
colnames(coa.gr)[2] <- "Res"                                               # Rename columns
colnames(coa.gr)[3] <- "NonRes"