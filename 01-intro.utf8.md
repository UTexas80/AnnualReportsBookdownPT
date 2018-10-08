# Undergraduate COA {#intro}

You can label chapter and section titles using `{#label}` after them, e.g., we can reference Chapter \@ref(intro). If you do not manually label them, there will be automatic labels anyway, e.g., Chapter \@ref(methods).

Figures and tables with captions will be placed in `figure` and `table` environments, respectively.


```r
par(mar = c(4, 4, .1, .1))
plot(pressure, type = 'b', pch = 19)
```

<div class="figure" style="text-align: center">
<img src="01-intro_files/figure-html/nice-fig-1.png" alt="Here is a nice figure!" width="80%" />
<p class="caption">(\#fig:nice-fig)Here is a nice figure!</p>
</div>

Reference a figure by its code chunk label with the `fig:` prefix, e.g., see Figure \@ref(fig:nice-fig). Similarly, you can reference tables generated from `knitr::kable()`, e.g., see Table \@ref(tab:nice-tab).


```r
knitr::kable(
  head(iris, 20), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```



Table: (\#tab:nice-tab)Here is a nice table!

 Sepal.Length   Sepal.Width   Petal.Length   Petal.Width  Species 
-------------  ------------  -------------  ------------  --------
          5.1           3.5            1.4           0.2  setosa  
          4.9           3.0            1.4           0.2  setosa  
          4.7           3.2            1.3           0.2  setosa  
          4.6           3.1            1.5           0.2  setosa  
          5.0           3.6            1.4           0.2  setosa  
          5.4           3.9            1.7           0.4  setosa  
          4.6           3.4            1.4           0.3  setosa  
          5.0           3.4            1.5           0.2  setosa  
          4.4           2.9            1.4           0.2  setosa  
          4.9           3.1            1.5           0.1  setosa  
          5.4           3.7            1.5           0.2  setosa  
          4.8           3.4            1.6           0.2  setosa  
          4.8           3.0            1.4           0.1  setosa  
          4.3           3.0            1.1           0.1  setosa  
          5.8           4.0            1.2           0.2  setosa  
          5.7           4.4            1.5           0.4  setosa  
          5.4           3.9            1.3           0.4  setosa  
          5.1           3.5            1.4           0.3  setosa  
          5.7           3.8            1.7           0.3  setosa  
          5.1           3.8            1.5           0.3  setosa  


```r
plot(1:10)
plot(rnorm(10), pch=19)
plot(pressure, type = 'b', pch = 19)
```

<div class="figure">
<img src="01-intro_files/figure-html/fig-sub-1.png" alt="three plots" width="33%" /><img src="01-intro_files/figure-html/fig-sub-2.png" alt="three plots" width="33%" /><img src="01-intro_files/figure-html/fig-sub-3.png" alt="three plots" width="33%" />
<p class="caption">(\#fig:fig-sub)three plots</p>
</div>

```r
grad_residence <- readRDS("grad_residence.rds")
grad_residence
```

<!--html_preserve--><div id="htmlwidget-d4c6f01a3d024297391d" style="width:672px;height:480px;" class="plotly html-widget"></div>
<script type="application/json" data-for="htmlwidget-d4c6f01a3d024297391d">{"x":{"visdat":{"a9033744aa2":["function () ","plotlyVisDat"]},"cur_data":"a9033744aa2","attrs":{"a9033744aa2":{"labels":["A","B","C","D","E"],"values":[155,191,142,123,183],"domain":{"x":[0,0.4]},"showlegend":false,"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"pie"},"a9033744aa2.1":{"labels":["F","G","H","I","J"],"values":[191,126,116,105,166],"domain":{"x":[0.6,1]},"showlegend":false,"alpha_stroke":1,"sizes":[10,100],"spans":[1,20],"type":"pie","inherit":true}},"layout":{"margin":{"b":40,"l":60,"t":25,"r":10},"title":"Pie chart - subplot","hovermode":"closest","showlegend":false},"source":"A","config":{"modeBarButtonsToAdd":[{"name":"Collaborate","icon":{"width":1000,"ascent":500,"descent":-50,"path":"M487 375c7-10 9-23 5-36l-79-259c-3-12-11-23-22-31-11-8-22-12-35-12l-263 0c-15 0-29 5-43 15-13 10-23 23-28 37-5 13-5 25-1 37 0 0 0 3 1 7 1 5 1 8 1 11 0 2 0 4-1 6 0 3-1 5-1 6 1 2 2 4 3 6 1 2 2 4 4 6 2 3 4 5 5 7 5 7 9 16 13 26 4 10 7 19 9 26 0 2 0 5 0 9-1 4-1 6 0 8 0 2 2 5 4 8 3 3 5 5 5 7 4 6 8 15 12 26 4 11 7 19 7 26 1 1 0 4 0 9-1 4-1 7 0 8 1 2 3 5 6 8 4 4 6 6 6 7 4 5 8 13 13 24 4 11 7 20 7 28 1 1 0 4 0 7-1 3-1 6-1 7 0 2 1 4 3 6 1 1 3 4 5 6 2 3 3 5 5 6 1 2 3 5 4 9 2 3 3 7 5 10 1 3 2 6 4 10 2 4 4 7 6 9 2 3 4 5 7 7 3 2 7 3 11 3 3 0 8 0 13-1l0-1c7 2 12 2 14 2l218 0c14 0 25-5 32-16 8-10 10-23 6-37l-79-259c-7-22-13-37-20-43-7-7-19-10-37-10l-248 0c-5 0-9-2-11-5-2-3-2-7 0-12 4-13 18-20 41-20l264 0c5 0 10 2 16 5 5 3 8 6 10 11l85 282c2 5 2 10 2 17 7-3 13-7 17-13z m-304 0c-1-3-1-5 0-7 1-1 3-2 6-2l174 0c2 0 4 1 7 2 2 2 4 4 5 7l6 18c0 3 0 5-1 7-1 1-3 2-6 2l-173 0c-3 0-5-1-8-2-2-2-4-4-4-7z m-24-73c-1-3-1-5 0-7 2-2 3-2 6-2l174 0c2 0 5 0 7 2 3 2 4 4 5 7l6 18c1 2 0 5-1 6-1 2-3 3-5 3l-174 0c-3 0-5-1-7-3-3-1-4-4-5-6z"},"click":"function(gd) { \n        // is this being viewed in RStudio?\n        if (location.search == '?viewer_pane=1') {\n          alert('To learn about plotly for collaboration, visit:\\n https://cpsievert.github.io/plotly_book/plot-ly-for-collaboration.html');\n        } else {\n          window.open('https://cpsievert.github.io/plotly_book/plot-ly-for-collaboration.html', '_blank');\n        }\n      }"}],"cloud":false},"data":[{"labels":["A","B","C","D","E"],"values":[155,191,142,123,183],"domain":{"x":[0,0.4]},"showlegend":false,"type":"pie","marker":{"color":"rgba(31,119,180,1)","line":{"color":"rgba(31,119,180,1)"}},"frame":null},{"labels":["F","G","H","I","J"],"values":[191,126,116,105,166],"domain":{"x":[0.6,1]},"showlegend":false,"type":"pie","marker":{"color":"rgba(255,127,14,1)","line":{"color":"rgba(255,127,14,1)"}},"frame":null}],"highlight":{"on":"plotly_click","persistent":false,"dynamic":false,"selectize":false,"opacityDim":0.2,"selected":{"opacity":1},"debounce":0},"base_url":"https://plot.ly"},"evals":["config.modeBarButtonsToAdd.0.click"],"jsHooks":[]}</script><!--/html_preserve-->


```r
pdf_tbl <- readRDS("pdf2.rds")
pdf_tbl
```

<!--html_preserve--><div id="htmlwidget-f465cb7bf9026b2137af" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-f465cb7bf9026b2137af">{"x":{"filter":"none","data":[["1","2","3","4","5","6","7","8","9","10","11","12"],["Resident Costs*:","Tuition &amp; Fees","Books &amp; Supplies","Room &amp; Board","Misc. &amp; Travel","Resident Total Costs","Nonresident Costs*:","Tuition &amp; Fees","Books &amp; Supplies","Room &amp; Board","Misc. &amp; Travel","Nonresident Total Costs"],[null,5622,840,7292,2300,16054,null,20726,840,7292,2300,31158],[null,6030,900,7528,2300,16758,null,22342,900,7528,2300,33070],[null,7530,960,8046,1464,18000,null,25740,960,8046,1464,36210],[null,8736,1030,8460,1510,19736,null,26946,1030,8460,1510,37946],[null,9472,1078,8708,1562,20820,null,27682,1078,8708,1562,39030],[null,9842,848,8970,1590,21250,null,28052,848,8970,1590,39460],[null,10262,916,9246,1640,22064,null,28472,916,9246,1640,40274],[null,10836,800,9246,1798,22680,null,29046,800,9246,1798,40890],[null,11622,840,9450,3222,25134,null,29832,840,9450,3746,43868],[null,11634,1006,9616,3952,26208,null,29844,1006,9616,4662,45128]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Description<\/th>\n      <th>2007-08<\/th>\n      <th>2008-09<\/th>\n      <th>2009-10<\/th>\n      <th>2010-11<\/th>\n      <th>2011-12<\/th>\n      <th>2012-13<\/th>\n      <th>2013-14<\/th>\n      <th>2014-15<\/th>\n      <th>2015-16<\/th>\n      <th>2016-17<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"searching":false,"paging":false,"lengthMenu":[5,10,15,20],"columnDefs":[{"className":"dt-right","targets":[2,3,4,5,6,7,8,9,10,11]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false,"rowCallback":"function(row, data) {\nDTWidget.formatCurrency(this, row, data, 2, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 3, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 4, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 5, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 6, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 7, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 8, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 9, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 10, '$', 0, 3, ',', '.', true);\nDTWidget.formatCurrency(this, row, data, 11, '$', 0, 3, ',', '.', true);\n}"}},"evals":["options.rowCallback"],"jsHooks":[]}</script><!--/html_preserve-->

You can write citations, too. For example, we are using the **bookdown** package [@R-bookdown] in this sample book, which was built on top of R Markdown and **knitr** [@xie2015].
