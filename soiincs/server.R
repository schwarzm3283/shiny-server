# Michael Schwarz
# Michael 08 2017


shinyServer(function(input, output, session) {
 
  #---------------Create sidebar menu
  
  output$menu <- renderMenu({
    sidebarMenu(
      menuItem("About", tabName = "info", icon = icon("info")),
      menuItem("Data Tables", tabName = "datatables", icon = icon("table")),
      menuItem("Viz 1", tabName = "vizone", icon = icon("area-chart")),
      menuItem("Viz 2", tabName = "viztwo", icon = icon("area-chart"))
    )
  })
  isolate({updateTabItems(session, "tabs", "info")})
  #include server source files
  source(file.path("server", "datatables_srv.R"),  local = TRUE)$value
  
})
