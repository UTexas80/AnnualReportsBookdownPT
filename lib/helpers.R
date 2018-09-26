## Make a function that takes a path and another function
## and returns that same function with the path pre-progammed in
pathit <- function(FUN, path){
    function(file, ...){
        FUN(file=file.path(path, file), ...)
    }
}

format_dol_fun <- function(x){
  ifelse(x < 0, 
         paste0('(', scales::dollar(-x), ')'), 
         scales::dollar(x))
  }

helper.function <- function()
{
  return(1)
}
