# This code updates tsibble objects to resolve changes in the data structure
library(rlang)
library(tsibble)
data_env <- new.env()
lapply(list.files("data/", full.names = TRUE), load, envir = data_env)
env_bind(data_env, !!!lapply(data_env, function(data){
  idx <- data[[index_var(data)]]
  if(tsibble::is_yearmonth(idx)) {
    idx <- yearmonth(as.Date(idx))
  } else if(tsibble::is_yearquarter(idx)) {
    idx <- yearquarter(as.Date(idx))
  } else if(tsibble::is_yearweek(idx)) {
    idx <- yearweek(as.Date(idx))
  }
  data[[index_var(data)]] <- idx
  as_tsibble(as_tibble(data),
             regular = !is_empty(interval(data)),
             index = index_var(data),
             key = vapply(key(data), as_string, character(1L))
  )
}))
lapply(ls(data_env), function(data) {
  eval_tidy(expr(
    usethis::use_data(
      !!sym(data),
      overwrite = TRUE
    )
  ), env = data_env)
})
