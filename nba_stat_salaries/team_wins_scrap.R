library(rvest)
library(beepr)

#2018

win_2018 <- "http://www.espn.com/nba/standings/_/season/2018"

table_2018 <- win_2018 %>%  read_html() %>% html_nodes("table") %>%  html_table(fill = TRUE)

table_2018

write.csv(table_2018, file = "2018wins.csv")