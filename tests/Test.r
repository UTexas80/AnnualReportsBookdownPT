Several packages support making beautiful tables with R, such as

* [xtable](https://cran.r-project.org/web/packages/xtable/)
* [stargazer](https://cran.r-project.org/web/packages/stargazer/)
* [pander](http://rapporter.github.io/pander/)
* [tables](https://cran.r-project.org/web/packages/tables/)
* [ascii](http://eusebe.github.io/ascii/)
* etc.


pdf_tbl %>%
  mutate(
    car = row.names(.),
    mpg = color_tile("white", "orange")(mpg),
    cyl = cell_spec(cyl, "html", angle = (1:5)*60, 
                    background = "red", color = "white", align = "center"),
    disp = ifelse(disp > 200,
                  cell_spec(disp, "html", color = "red", bold = T),
                  cell_spec(disp, "html", color = "green", italic = T)),
    hp = color_bar("lightgreen")(hp)
  ) %>%