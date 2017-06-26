####Industry Section######

##################timeframe input####################

output$filterone <- renderUI({
  selectizeInput("filterone", "This is filter one",
              c("option one",
                "option two",
                "option three",
                "option four",
                "Please select option"),
              selected = "Please select option")
})

output$filtertwo <- renderUI({
  selectizeInput("filterone", "This is filter two",
              c("option one",
                "option two",
                "option three",
                "option four",
                "Please select option"),
              selected = "Please select option")
})

output$filterthree <- renderUI({
  selectizeInput("filterthree", "This is filter three",
                 c("option one",
                   "option two",
                   "option three",
                   "option four",
                   "Please select option"),
                 selected = "Please select option")
})

output$filterfour <- renderUI({
  selectizeInput("filterfour", "This is filter four",
                 c("option one",
                   "option two",
                   "option three",
                   "option four",
                   "Please select option"),
                 selected = "Please select option")
})








