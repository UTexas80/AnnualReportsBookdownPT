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
      domain = list(x = c(0, 0.4)), showlegend = T) %>% 
      add_trace(labels = grad_coa_res_non$Description.1, values = grad_coa_res_non$cost.1, type = "pie", 
      domain = list(x = c(0.6, 1)), showlegend = T) %>% 
      layout(title = "COA - Graduate")

coa_grad

grad_residence <- plot_ly(tt, labels = tt$labels1, values = tt$values1, type = "pie", 
      domain = list(x = c(0, 0.4)), showlegend = F) %>% 
      add_trace(labels = tt$labels2, values = tt$values2, type = "pie", 
      domain = list(x = c(0.6, 1)), showlegend = F) %>% 
      layout(title = "Pie chart - subplot")



p_coa_gr <- plot_ly(coa.gr, x = ~ Description, y = ~Res, type = 'bar', name = 'Resident') %>%
  add_trace(y = ~NonRes, name = 'Non-Resident') %>%
  add_trace(z = ~NonRes, name = 'Non-Resident') %>%
  add_trace(a = ~NonRes, name = 'Non-Resident') %>%
  layout(yaxis = list(title = 'COA-Graduate'), barmode = 'group')

p_coa_gr

## ----basic_treemap-------------------------------------------------------
t_coa<-treemap(coa.gr.tree, #Your data frame object
        index=c("residency","desc"),                                                                #A list of your categorical variables
        vSize = "cost",                                                                             #This is your quantitative variable
        type="index",                                                                               #Type sets the organization and color scheme of your treemap
        palette = "Blues",                                                                          #Select your color palette from the RColorBrewer presets or make your own.
        title="Cost of Attendance",                                                                 #Customize your title
        fontsize.title = 14                                                                         #Change the font size of the title
        )

t_coa

saveRDS(c_pie_grad_res, file="c_pie_grad_res.rds")
saveRDS(c_pie_grad_non, file="c_pie_grad_non.rds")
saveRDS(coa_grad, file="coa_grad.rds")
saveRDS(p_coa_gr, file="p_coa_gr.rds")
saveRDS(t_coa, file="t_coa.rds")
saveRDS(coa.gr, file="coa.gr.rds")