library(dplyr)
library(rmarkdown)

df <- read.csv("C:/Users/Nuray/Desktop/project/ReproResearchFinalProj/lebron_james.csv")

num <- nrow(df)

age<-df$age
season<-df$season
player_height<-df$player_height
player_weight<-df$player_weight
pts<-df$pts
reb<-df$reb
ast<-df$ast
team_abbreviation<-df$team_abbreviation

for(i in 1:num){render("C:/Users/Nuray/Desktop/project/ReproResearchFinalProj/project.Rmd",
                    output_file = paste0("report_", season[i], ".html"),
                    output_format = 'html_document',
                    params = list("season" = season[i], "age" = age[i], "player_height" = player_height[i],
                                  "player_weight" = player_weight[i], "pts" = pts[i], "reb" = reb[i],
                                  "ast" = ast[i], "team_abbreviation" = team_abbreviation[i]))
}

