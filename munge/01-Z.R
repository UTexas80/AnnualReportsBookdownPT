# rmarkdown::render('/Users/gfalk/Documents/GitHub/AnnualReportsBookdownPT/src/01-A.R')
# rmarkdown::render('./src/01-A.R')
# rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
# rmarkdown::render_site(encoding = 'UTF-8')                                                          # produce all formats; .gitbook, pdf, ebook
# rmarkdown::render_site(output_format = 'bookdown::pdf_book', encoding = 'UTF-8')                    # produce .pdf only
# render("07-flexdashboard.Rmd", "flex_dashboard")
render("1-example.Rmd", output_format = "pdf_document")
# render("1-example.Rmd", beamer_presentation())