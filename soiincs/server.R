# Michael Schwarz
# Michael 08 2017

# This is the server portion of a shiny app that returns IIF lab stat tdata

# source("utils.R")
#import lookup tables data


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
  source(file.path("server", "datatables.R"),  local = TRUE)$value
  
  
})
