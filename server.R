# Let's first create the data frame:

Club <- c("Johor DT", "Pahang", "Selangor", "Terengganu", "Felda United",
          "PDRM", "LIONS", "Perak FA", "Kelantan", "Sarawak",
          "ATM", "Sime Darby", "TTeam", "Kedah FA",
          "Sabah", "Perlis", "N9", "Melaka FA", "Penang",
          "Labuan FA")

Played <- c(27, rep(28, 18), 27)

Points <- c(63, 58, 54, 53, 51, 50, 49, 42, 40, 39, 35, 30, 30, 28,
            27, 26, 25, 22, 22, 18)

leagueTable <- data.frame(Club, Played, Points)

shinyServer(
  function(input, output) {
    output$lTable <- renderDataTable(leagueTable, options=list(paging = FALSE, searching = FALSE))
    Pahang <- reactive({
      switch(input$Pahang, "win" = 3, "draw" = 1, "loss" = 0)
    })
    Selangor <- reactive({
      switch(input$Selangor, "win" = 3, "draw" = 1, "loss" = 0)
    })
    Terengganu <- reactive({
      switch(input$Terengganu, "win" = 3, "draw" = 1, "loss" = 0)
    })
    FeldaUnited <- reactive({
      switch(input$FeldaUnited, "win" = 3, "draw" = 1, "loss" = 0)
    })
    PDRM <- reactive({
      switch(input$PDRM, "win" = 3, "draw" = 1, "loss" = 0)
    })
    LIONS <- reactive({
      switch(input$LIONS, "win" = 3, "draw" = 1, "loss" = 0)
    })
    PerakFA <- reactive({
      switch(input$PerakFA, "win" = 3, "draw" = 1, "loss" = 0)
    })
    Kelantan <- reactive({
      switch(input$Kelantan, "win" = 3, "draw" = 1, "loss" = 0)
    })
    Sarawak <- reactive({
      switch(input$Sarawak, "win" = 3, "draw" = 1, "loss" = 0)
    })
    ATM <- reactive({
      switch(input$ATM, "win" = 3, "draw" = 1, "loss" = 0)
    })
    SimeDarby <- reactive({
      switch(input$SimeDarby, "win" = 3, "draw" = 1, "loss" = 0)
    })
    output$totalPoints <- renderText({
      paste("These results give JohorDT a total of ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby(), " points.")
      
    })
    output$Pahang <- renderText({
      paste("To win the league, Pahang would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 57, " points.")
    })
    output$Selangor <- renderText({
      paste("To win the league, Selangor would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 53, " points.")
    })
    output$Terengganu <- renderText({
      paste("To win the league, Terengganu would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 52, " points.")
    })
    output$FeldaUnited <- renderText({
      paste("To win the league, Felda United would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 50, " points.")
    })
    output$PDRM <- renderText({
      paste("To win the league, PDRM would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 49, " points.")
    })
    output$LIONS <- renderText({
      paste("To win the league, LIONS would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 48, " points.")
    })
    output$PerakFA <- renderText({
      paste("To win the league, Perak FA would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 41, " points.")
    })
    output$Kelantan <- renderText({
      paste("To win the league, Kelantan would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 39, " points.")
    })
    output$Sarawak <- renderText({
      paste("To win the league, Sarawak would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 38, " points.")
    })
    output$ATM <- renderText({
      paste("To win the league, ATM would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 34, " points.")
    })
    output$SimeDarby <- renderText({
      paste("To win the league, Sime Darby would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 29, " points.")
    })
    output$TTeam <- renderText({
      paste("To win the league, TTeam would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 29, " points.")
    })
    output$KedahFA <- renderText({
      paste("To win the league, Kedah FA would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 27, " points.")
    })
    output$Sabah <- renderText({
      paste("To win the league, Sabah would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 26, " points.")
    })
    output$Perlis <- renderText({
      paste("To win the league, Perlis would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 25, " points.")
    })
    output$N9 <- renderText({
      paste("To win the league, N9 would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 24, " points.")
    })
    output$MelakaFA <- renderText({
      paste("To win the league, Melaka FA would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 21, " points.")
    })
    output$Penang <- renderText({
      paste("To win the league, Penang would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 21, " points.")
    })
    output$LabuanFA <- renderText({
      paste("To win the league, Labuan FA would need ", 
            63 + Pahang() + Selangor() + Terengganu() + FeldaUnited() + PDRM() + 
              LIONS() + PerakFA() + Kelantan() + 
              Sarawak() + ATM() + SimeDarby() - 17, " points.")
    })
  }
  
)