tabItem(tabName = "datatables",
        busyIndicator("Loading Data", wait = 0),
        fluidRow(column(12,
                        fluidRow(
                          column(
                            12,
                            box(
                              title = "Combined Filters",
                              status = "primary",
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
                              status = "primary",
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
                              )
                            )
                          ),
                          column(
                            6,
                            box(
                              title = "NCS Filters",
                              status = "primary",
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
                              )
                            )
                          )
                        ))))