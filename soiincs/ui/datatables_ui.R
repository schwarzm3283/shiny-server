tabItem(tabName = "datatables",
        busyIndicator("Loading Data", wait = 0),
        fluidRow(column(12,
                        fluidRow(
                          column(
                            12,
                            box(
                              title = "Global Filters",
                              status = "danger",
                              busyIndicator("Loading Data", wait = 500),
                              solidHeader = TRUE,
                              width = NULL,
                              height = NULL,
                              collapsible = F,
                              splitLayout(
                                cellWidths = c("33%", "33%", "33%"),
                                uiOutput("filter_occupation"),
                                uiOutput("filter_year"),
                                uiOutput("filter_ownership"),
                                tags$head(tags$style(
                                  HTML("
                                       .shiny-split-layout > div {
                                       overflow: visible;
                                       }
                                       ")
                                ))
                              )
                            )
                          )
                        ),
                        fluidRow(
                          column(
                            6,
                            box(
                              title = "SOII Filters",
                              status = "info",
                              busyIndicator("Loading Data", wait = 500),
                              solidHeader = TRUE,
                              width = NULL,
                              height = NULL,
                              collapsible = F,
                              splitLayout(
                                cellWidths = c("50%", "50%"),
                                uiOutput("filterone"),
                                uiOutput("filtertwo"),
                                tags$head(tags$style(
                                  HTML("
                                       .shiny-split-layout > div {
                                       overflow: visible;
                                       }
                                       ")
                                ))
                              ),
                              div(style = 'overflow-x: scroll', DT::dataTableOutput('soii_data_table'))
                            )
                          ),
                          column(
                            6,
                            box(
                              title = "NCS Filters",
                              status = "info",
                              busyIndicator("Loading Data", wait = 500),
                              solidHeader = TRUE,
                              width = NULL,
                              height = NULL,
                              collapsible = F,
                              splitLayout(
                                cellWidths = c("50%", "50%"),
                                uiOutput("filterthree"),
                                uiOutput("filterfour"),
                                tags$head(tags$style(
                                  HTML("
                                       .shiny-split-layout > div {
                                       overflow: visible;
                                       }
                                       ")
                                ))
                              ), 
                              div(style = 'overflow-x: scroll', DT::dataTableOutput('soii_data_tabletest'))
                            )
                          )
                        ))))