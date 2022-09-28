# Text cleaning packages
library(tidytext)
library(dplyr)
library(tidyr)
library(stringr)
library(textdata)
library(textclean)

# Plotting 
library(scales)
library(forcats)
library(ggplot2)

# Loading Data
library(devtools)
install_github("josiahmcmillan/presdebates")
library(PresDebates)
data(pres_debates)


# Filtering for only candidates and debates exclusively in the 21st century 
debate_transcripts = presdebates %>% filter(year > 1999)  %>% filter(candidate == 1)
debate_transcripts$year = as.factor(debate_transcripts$year)


# Getting words
dem_debate_words <- debate_transcripts %>%
  filter(type == "Democratic") %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>%
  anti_join(new_stopwords) %>%
  count(year, type, word, sort = TRUE)


# getting word counts
dem_total_words = dem_debate_words %>% 
  group_by(year, type) %>%
  summarize(total = sum(n), .groups = 'drop')

dem_total_words$debate_id = paste(dem_total_words$type," ",dem_total_words$year) 
dem_debate_words <- left_join(dem_debate_words, dem_total_words)


# generating plot
single_words = c("corporations","businesses","slavery","police","woman",
                 "women","tax", "latino", "immigration", "racism", 
                 "gay", "carbon", "white", "Asian", "wages")

word_counts = dem_debate_words %>% filter(word %in% single_words) 
word_counts$freq = word_counts$n/word_counts$total


ggplot(word_counts, aes(x=freq, y=word)) + 
  geom_point(size=4, aes(colour=year), alpha = 0.7) +
  theme_bw() +  
  ggtitle("Frequency of selected terms in Democratic Primary Debates") +
  xlab("Frequency") + 
  # ylab("Word") + 
  # scale_fill_discrete(name ="Election Year") +  
  labs(color ='Election Year')  +
  theme(axis.title.y=element_blank()) 
