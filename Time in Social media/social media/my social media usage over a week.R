#install.packages("readr")
#install.packages("ggplot2")
#install.packages("dplyr")
#install.packages("forcats")
library(forcats)
library(readr)
library(ggplot2)
library(dplyr)

read_csv("Time spent on social media.csv")

social <- read_csv("Time spent on social media.csv")

ggplot(data=social, 
       aes(x=Apps, y=Minutes))+
       geom_bar(stat = "identity")+
  theme(legend.position="none") +
  ylim(0,2220)+
  coord_flip()+
  theme(legend.position="none") +
  labs(x="Apps", y="Minutes", 
     title = "A week of social media use",
     subtitle = "A view of Ethan Mills")
  

ggsave("Social_media.png")