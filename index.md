---
title       : Slidify
subtitle    : Developing Data Products
author      : Siti Nurillah Binti Mohd Fadzil
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Who would use this?

* JohorDT have been dominant in the Super League Malaysia 2015. They are 6 points clear and have a game in hand, with just 10 games left.
* However, they still have some tricky games coming up including Pahang and Terengganu.
* Football fans would be able to see easily how many points Johor DT will end up on by predicting the results of their remaining games.
* They can then see how many points their team would still require to win the league.
* Something like this could be expanded to include all remaining Super League Malaysia fixtures.

--- .class #id bg:#ECF9F9

## The ui.R file

* It uses the fluidPage layout.
* Then, to ensure all the information is not crammed onto one page, the tabsetPanel has been used to effectively put multiple pages all on one page.
* Radio buttons have been used instead of a select menu. This means the user can change their choices even quicker than with select boxes.


```r
radioButtons("Pahang", "15/03 - JohorDT vs Pahang",
                                              c("JohorDT Win" = "win",
                                                "Draw" = "draw",
                                                "JohorDT Loss" = "loss"), inline=TRUE)
```

* The results are just shown as lines of text. The presentation here is very basic but the information is still clearly conveyed.

--- .class #id bg:#ECF9F9

## The server.R file

* Makes use of the renderDataTable function. This means that the results can be stored in server.R as a data frame for easy R calculation.


```r
output$lTable <- renderDataTable(leagueTable, options=list(paging = FALSE, 
                                                           searching = FALSE))
```

* Turning a radio buttin input from text into a number is not trivial and the switch function must be used.


```r
Pahang <- reactive({
                        switch(input$Pahang, "win" = 3, 
                                                  "draw" = 1, 
                                                  "loss" = 0)
                })
```

--- .class #id bg:#ECF9F9

## The Calculations

* The points are assigned to each fixture similarly to this. Then JohorDT's total points are calculated:

```r
Pahang <- 3; Selangor <- 1; Terengganu <- 3; FeldaUnited <- 3; PDRM <- 0; LIONS <- 1; 
PerakFA <- 3; Kelantan <- 3; Sarawak <- 1; ATM <- 3; SimeDarby <- 3
```


```r
totPoints <- 63 + Pahang + Selangor + Terengganu + FeldaUnited + PDRM + LIONS + PerakFA + 
        Kelantan + Sarawak + ATM + SimeDarby; totPoints
```

```
## [1] 87
```
* And then the points another team (eg Pahang) requires to win can be calculated

```r
Pahang <- 64 + totPoints - 28; Pahang
```

```
## [1] 123
```
* Currently, the numbers are all put in manually and are not fetched from the data frame. This functionality could be added as the app is further developed.





