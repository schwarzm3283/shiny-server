# Michael Schwarz
# June 26 2017

library(shiny)
library(shinydashboard)
library(DT)
library(shinyjs)
library(shinysky)
library(shinyBS)

dashboardPage(
  # Dashboard header
  
  dashboardHeader(title = "SOII-NCS"),
  
  # Dashboard sidebar
  dashboardSidebar(sidebarMenu(id = "tabs", sidebarMenuOutput("menu"))),
  
  # Dashboard body
  dashboardBody(
    shinyjs::useShinyjs(),
    busyIndicator("Loading Data",wait = 0),
    HTML("<link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>"),
    
    tabItems(source(file.path("ui", "about.R"),  local = TRUE)$value,
             source(file.path("ui", "datatables.R"),  local = TRUE)$value)
  )
)

