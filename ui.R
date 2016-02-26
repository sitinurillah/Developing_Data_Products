shinyUI(fluidPage(
  headerPanel("Can you catch Johor DT?"),
  sidebarPanel(
    dataTableOutput('lTable')
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Super League Malaysia Predictor",
               h3("How To Use This App"),
               p("This application will help you calculate how 
                 many points current Super League Malasyia leaders, 
                 Johor DT, will end up on by the end of the season. You 
                 can then see how many points each of the other 
                 teams would require to win the league."),
               p("All you have to do is predict the result for 
                 each of JohorDT's remaining fixtures on the 
                 Remaining Fixtures tab. Then click on the End 
                 of Season tab to see how many points all of 
                 the other teams would require to win the league. 
                 Easy as that!"),
               p("On the left you can see the current league 
                 standings as of 13/03/15")),
      tabPanel("Remaining Fixtures",
               radioButtons("Pahang", "15/03 - JohorDT vs Pahang",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("Selangor", "22/03 - Selangor vs JohorDT",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("Terengganu", "04/04 - JohorDT vs Terengganu",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("FeldaUnited", "12/04 - FeldaUnited vs JohorDT",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("PDRM", "18/05 - JohorDT vs PDRM",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("LIONS", "26/04 - LIONS vs JohorDT",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("PerakFA", "29/04 - PerakFA vs JohorDT",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("Kelantan", "02/05 - JohorDT vs Kelantan",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("Sarawak", "09/05 - JohorDT vs Sarawak",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("ATM", "15/03 - ATM vs JohorDT",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE),
               radioButtons("SimeDarby", "24/05 - JohorDT vs SimeDarby",
                            c("JohorDT Win" = "win",
                              "Draw" = "draw",
                              "JohorDT Loss" = "loss"), inline=TRUE)),
      tabPanel("End of Season", 
               textOutput("totalPoints"),
               textOutput("Pahang"),
               textOutput("Selangor"),
               textOutput("Terengganu"),
               textOutput("FeldaUnited"),
               textOutput("PDRM"),
               textOutput("LIONS"),
               textOutput("PerakFA"),
               textOutput("Kelantan"),
               textOutput("Sarawak"),
               textOutput("ATM"),
               textOutput("SimeDarby"),
               textOutput("TTeam"),
               textOutput("KedahFA"),
               textOutput("Sabah"),
               textOutput("Perlis"),
               textOutput("N9"),
               textOutput("MelakaFA"),
               textOutput("Penang"),
               textOutput("LAbuanFA")
      )
               )
    )))