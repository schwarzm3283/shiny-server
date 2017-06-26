####Industry Section######

##################timeframe input####################

output$industry_tf <- renderUI({
  selectInput("industry_timeframe", "Select Time Frame",
              c("2014 - Forward",
                "2003 - 2013",
                "2002",
                "1989 - 2001",
                "Pre 1989",
                "Please select timeframe"),
              selected = "Please select timeframe")
})







