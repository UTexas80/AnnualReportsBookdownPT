# Example preprocessing script.
# change column names

c_pie_grad_res <- plot_ly(grad_res, labels = ~Description, values = ~ay1617, type = 'pie',
        textposition = 'inside',
        textinfo = 'label+percent',
        insidetextfont = list(color = '#FFFFFF'),
        hoverinfo = 'text',
        text = ~paste('$', ay1617, ' dollars'),
        marker = list(colors = colors,
                      line = list(color = '#FFFFFF', width = 1)),
                      #The 'pull' attribute can also be used to create space between the sectors
        showlegend = FALSE) %>%
  layout(title = str_c(currentAY, '-Resident Graduate COA'),
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

c_pie_grad_non<- plot_ly(grad_non_res, labels = ~Description, values = ~ay1617, type = 'pie',
        textposition = 'inside',
        textinfo = 'label+percent',
        insidetextfont = list(color = '#FFFFFF'),
        hoverinfo = 'text',
        text = ~paste('$', ay1617, ' dollars'),
        marker = list(colors = colors,
                      line = list(color = '#FFFFFF', width = 1)),
                      #The 'pull' attribute can also be used to create space between the sectors
        showlegend = FALSE) %>%
  layout(title = str_c(currentAY, '-Non-Resident Graduate COA'),
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

print(c_pie_grad_res)
print(c_pie_grad_non)

ugCOA


tt <- data.frame(labels1 = LETTERS[1:5], values1 = sample(100:200, size = 5),
                 labels2 = LETTERS[6:10], values2 = sample(100:200, size = 5))

grad_residence <- plot_ly(tt, labels = tt$labels1, values = tt$values1, type = "pie", 
      domain = list(x = c(0, 0.4)), showlegend = F) %>% 
      add_trace(labels = tt$labels2, values = tt$values2, type = "pie", 
      domain = list(x = c(0.6, 1)), showlegend = F) %>% 
      layout(title = "Pie chart - subplot")

saveRDS(grad_residence, file="grad_residence.rds")
