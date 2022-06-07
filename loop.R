
library(dplyr)
library(rmarkdown)
library(rjson)
library(tidyverse)
library(hexbin)
library(jsonlite)
library(httr)
library(scales)


df2 <- read.csv("C:/Users/Nuray/Desktop/project/ReproResearchFinalProj/lebron_james.csv")

num <- nrow(df2)

age<-df2$age
season<-df2$season
player_height<-df2$player_height
player_weight<-df2$player_weight
pts<-df2$pts
reb<-df2$reb
ast<-df2$ast
team_abbreviation<-df2$team_abbreviation
net_rating<-df2$net_rating
oreb_pct<-df2$oreb_pct
dreb_pct<-df2$dreb_pct
ts_pct<-df2$ts_pct
ast_pct<-df2$ast_pct
salary<-df2$salary
ast_per_game_leader<-df2$ast_per_game_leader

for(i in 1:num){render("C:/Users/Nuray/Desktop/project/ReproResearchFinalProj/project.Rmd",
                    output_file = paste0("report_", season[i], ".html"),
                    output_format = 'html_document',
                    params = list("season" = season[i], "age" = age[i], "player_height" = player_height[i],
                                  "player_weight" = player_weight[i], "pts" = pts[i], "reb" = reb[i],
                                  "ast" = ast[i], "team_abbreviation" = team_abbreviation[i]))
}

