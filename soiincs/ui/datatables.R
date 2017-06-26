

tabItem(
  tabName = "datatables",
  busyIndicator("Loading Data",wait = 0),
  fluidRow(
    column(12,
           fluidRow(
             column(12,
                    box(
                      title = "SOII and NCS Data Tables",
                      status = "primary", 
                      busyIndicator("Loading Data",wait = 500),
                      solidHeader = TRUE, 
                      width = NULL,
                      height = NULL,
                      collapsible = F,
                      uiOutput("industry_tf")
                    )))
    )
  )
)