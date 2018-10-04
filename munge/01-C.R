# Example preprocessing script.
# change column names

c_pie_grad_res <- plot_ly(grad_res, labels = ~Description, values = ~cost, type = 'pie',
        textposition = 'inside',
        textinfo = 'label+percent',
        insidetextfont = list(color = '#FFFFFF'),
        hoverinfo = 'text',
        text = ~paste('$', cost, ' dollars'),
        marker = list(colors = colors,
                      line = list(color = '#FFFFFF', width = 1)),
                      #The 'pull' attribute can also be used to create space between the sectors
        showlegend = FALSE) %>%
  layout(title = str_c(currentAY, '-COA Graduate Resident'),
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

c_pie_grad_non<- plot_ly(grad_non_res, labels = ~Description, values = ~cost, type = 'pie',
        textposition = 'inside',
        textinfo = 'label+percent',
        insidetextfont = list(color = '#FFFFFF'),
        hoverinfo = 'text',
        text = ~paste('$', cost, ' dollars'),
        marker = list(colors = colors,
                      line = list(color = '#FFFFFF', width = 1)),
                      #The 'pull' attribute can also be used to create space between the sectors
        showlegend = FALSE) %>%
  layout(title = str_c(currentAY, '-COA Graduate Non-Resident'),
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

print(c_pie_grad_res)
print(c_pie_grad_non)

tt <- data.frame(labels1 = LETTERS[1:5], values1 = sample(100:200, size = 5),
                 labels2 = LETTERS[6:10], values2 = sample(100:200, size = 5))

grad_coa_res_non <- data.frame(coa.gr.res, coa.gr.non)

coa_grad <- plot_ly(grad_coa_res_non, labels = grad_coa_res_non$Description, values = grad_coa_res_non$cost, type = "pie", 
      domain = list(x = c(0, 0.4)), showlegend = F) %>% 
      add_trace(labels = grad_coa_res_non$Description.1, values = grad_coa_res_non$cost.1, type = "pie", 
      domain = list(x = c(0.6, 1)), showlegend = F) %>% 
      layout(title = "COA - Graduate")

coa_grad

grad_residence <- plot_ly(tt, labels = tt$labels1, values = tt$values1, type = "pie", 
      domain = list(x = c(0, 0.4)), showlegend = F) %>% 
      add_trace(labels = tt$labels2, values = tt$values2, type = "pie", 
      domain = list(x = c(0.6, 1)), showlegend = F) %>% 
      layout(title = "Pie chart - subplot")

saveRDS(c_pie_grad_res, file="c_pie_grad_res.rds")
saveRDS(c_pie_grad_non, file="c_pie_grad_non.rds")
saveRDS(coa_grad, file="coa_grad.rds")