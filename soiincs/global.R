

#----------------Industry datatable-------------------------
generate_datatable <- function(df, table_title=NULL){
  if(is.null(table_title)){
    DT::renderDataTable(df, caption = "SOII-NCS Data", options = list(width = "300", scrollX = TRUE, searching = FALSE), rownames = FALSE)
  }
  else{
    DT::renderDataTable(df, caption = table_title, options = list(width = "300", scrollX = TRUE, searching = FALSE), rownames = FALSE)
  }
}