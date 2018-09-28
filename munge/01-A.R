# Example preprocessing script.
url <- 'https://tinyurl.com/ybjbdpp3'                                           #Specifying the url for desired website to be scrapped
webpage <- read_html(url)                                                       #Reading the HTML code from the website
rank_data_html <- html_nodes(webpage,'.tableauViz')                             #Using CSS selectors to scrap the rankings section

# Load Tabula functions
library(tabulizer)
library(tabulizerjars)

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

grad_res<-pdf.tbl[2:5, c(1, 11)]
grad_non_res<-pdf.tbl[8:11, c(1, 11)]

colnames(grad_res)[2] <- "ay1617"
colnames(grad_non_res)[2] <- "ay1617"

#!/usr/bin/env Rscript
# bookdown::render_book("index.Rmd", "bookdown::gitbook")
# rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
# rmarkdown::render(source('/src/01-A.R'))
# rmarkdown::render(source('C:/Users/gfalk/Documents/GitHub/AnnualReportsBookdownPT/src/01-A.R'))
# rmarkdown::render('/Users/gfalk/Documents/GitHub/AnnualReportsBookdownPT/src/01-A.R')