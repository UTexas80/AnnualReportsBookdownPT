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
formattable(pdf.tbl)

# pdf2<-datatable(pdf.tbl)
pdf2<-datatable(data.table(pdf.tbl), options = list(
  searching = FALSE,
  paging = FALSE,
  lengthMenu = c(5, 10, 15, 20)
))
pdf2<-formatCurrency(pdf2,2:11, digits = 0)
saveRDS(pdf2, file="pdf2.rds")
pdf2

# grad_res<-pdf.tbl[2:5, c(1, 11)]
# grad_non_res<-pdf.tbl[8:11, c(1, 11)]

grad_res<-coa.gr.res
grad_non_res<-coa.gr.non

coa.gr <-data.table(coa.gr.res, coa.gr.non)
coa.gr<-coa.gr[, !c(3)]
colnames(coa.gr)[2] <- "Res"                                               # Rename columns
colnames(coa.gr)[3] <- "NonRes"