--- 
title: "Annual Reports"
author: "Glen C. Falk"
date: "2018-10-08"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "This is a minimal example of using the bookdown package to write a book. The output format for this example is bookdown::gitbook."
---

# Financial Aid Summary


\includegraphics[width=1\linewidth]{lib/GEORGIA-XH-FC} 

\begin{table}

\caption{(\#tab:mtcars_table)A knitr kable.}
\centering
\begin{tabular}[t]{l|r|r|r|r|r|r|r|r|r|r|r}
\hline
  & mpg & cyl & disp & hp & drat & wt & qsec & vs & am & gear & carb\\
\hline
Mazda RX4 & 21.0 & 6 & 160 & 110 & 3.90 & 2.620 & 16.46 & 0 & 1 & 4 & 4\\
\hline
Mazda RX4 Wag & 21.0 & 6 & 160 & 110 & 3.90 & 2.875 & 17.02 & 0 & 1 & 4 & 4\\
\hline
Datsun 710 & 22.8 & 4 & 108 & 93 & 3.85 & 2.320 & 18.61 & 1 & 1 & 4 & 1\\
\hline
Hornet 4 Drive & 21.4 & 6 & 258 & 110 & 3.08 & 3.215 & 19.44 & 1 & 0 & 3 & 1\\
\hline
Hornet Sportabout & 18.7 & 8 & 360 & 175 & 3.15 & 3.440 & 17.02 & 0 & 0 & 3 & 2\\
\hline
\end{tabular}
\end{table}

![](index_files/figure-latex/coa_table-1.pdf)<!-- --> 

## Cost of Attendance-Graduate
![](index_files/figure-latex/COA-Grad-Resident-1.pdf)<!-- --> 

![(\#fig:COA-Grad-Non_Resident)COA-Grad Non Resident](index_files/figure-latex/COA-Grad-Non_Resident-1.pdf) 


```
## Warning: 'bar' objects don't have these attributes: 'z'
## Valid attributes include:
## 'type', 'visible', 'showlegend', 'legendgroup', 'opacity', 'name', 'uid', 'ids', 'customdata', 'selectedpoints', 'hoverinfo', 'hoverlabel', 'stream', 'transforms', 'x', 'x0', 'dx', 'y', 'y0', 'dy', 'text', 'hovertext', 'textposition', 'textfont', 'insidetextfont', 'outsidetextfont', 'constraintext', 'cliponaxis', 'orientation', 'base', 'offset', 'width', 'marker', 'selected', 'unselected', 'r', 't', '_deprecated', 'error_x', 'error_y', 'xcalendar', 'ycalendar', 'xaxis', 'yaxis', 'idssrc', 'customdatasrc', 'hoverinfosrc', 'xsrc', 'ysrc', 'textsrc', 'hovertextsrc', 'textpositionsrc', 'basesrc', 'offsetsrc', 'widthsrc', 'rsrc', 'tsrc', 'key', 'set', 'frame', 'transforms', '_isNestedKey', '_isSimpleKey', '_isGraticule', '_bbox'
```

```
## Warning: 'bar' objects don't have these attributes: 'a'
## Valid attributes include:
## 'type', 'visible', 'showlegend', 'legendgroup', 'opacity', 'name', 'uid', 'ids', 'customdata', 'selectedpoints', 'hoverinfo', 'hoverlabel', 'stream', 'transforms', 'x', 'x0', 'dx', 'y', 'y0', 'dy', 'text', 'hovertext', 'textposition', 'textfont', 'insidetextfont', 'outsidetextfont', 'constraintext', 'cliponaxis', 'orientation', 'base', 'offset', 'width', 'marker', 'selected', 'unselected', 'r', 't', '_deprecated', 'error_x', 'error_y', 'xcalendar', 'ycalendar', 'xaxis', 'yaxis', 'idssrc', 'customdatasrc', 'hoverinfosrc', 'xsrc', 'ysrc', 'textsrc', 'hovertextsrc', 'textpositionsrc', 'basesrc', 'offsetsrc', 'widthsrc', 'rsrc', 'tsrc', 'key', 'set', 'frame', 'transforms', '_isNestedKey', '_isSimpleKey', '_isGraticule', '_bbox'
```

![](index_files/figure-latex/COA-Grad-1.pdf)<!-- --> 


![](index_files/figure-latex/Grad-COA-1.pdf)<!-- --> 


This is a _sample_ book written in **Markdown**. You can use anything that Pandoc's Markdown supports, e.g., a math equation $a^2 + b^2 = c^2$.

The **bookdown** package can be installed from CRAN or Github:


```r
# install.packages("bookdown")
# or the development version
# devtools::install_github("rstudio/bookdown")
```


```r
knitr::kable(
  head(iris, 20), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```

\begin{table}

\caption{(\#tab:tbl-summary)Here is a nice table!}
\centering
\begin{tabular}[t]{rrrrl}
\toprule
Sepal.Length & Sepal.Width & Petal.Length & Petal.Width & Species\\
\midrule
5.1 & 3.5 & 1.4 & 0.2 & setosa\\
4.9 & 3.0 & 1.4 & 0.2 & setosa\\
4.7 & 3.2 & 1.3 & 0.2 & setosa\\
4.6 & 3.1 & 1.5 & 0.2 & setosa\\
5.0 & 3.6 & 1.4 & 0.2 & setosa\\
\addlinespace
5.4 & 3.9 & 1.7 & 0.4 & setosa\\
4.6 & 3.4 & 1.4 & 0.3 & setosa\\
5.0 & 3.4 & 1.5 & 0.2 & setosa\\
4.4 & 2.9 & 1.4 & 0.2 & setosa\\
4.9 & 3.1 & 1.5 & 0.1 & setosa\\
\addlinespace
5.4 & 3.7 & 1.5 & 0.2 & setosa\\
4.8 & 3.4 & 1.6 & 0.2 & setosa\\
4.8 & 3.0 & 1.4 & 0.1 & setosa\\
4.3 & 3.0 & 1.1 & 0.1 & setosa\\
5.8 & 4.0 & 1.2 & 0.2 & setosa\\
\addlinespace
5.7 & 4.4 & 1.5 & 0.4 & setosa\\
5.4 & 3.9 & 1.3 & 0.4 & setosa\\
5.1 & 3.5 & 1.4 & 0.3 & setosa\\
5.7 & 3.8 & 1.7 & 0.3 & setosa\\
5.1 & 3.8 & 1.5 & 0.3 & setosa\\
\bottomrule
\end{tabular}
\end{table}

Remember each Rmd file contains one and only one chapter, and a chapter is defined by the first-level heading `#`.

To compile this example to PDF, you need XeLaTeX. You are recommended to install TinyTeX (which includes XeLaTeX): <https://yihui.name/tinytex/>.


