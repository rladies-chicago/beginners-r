## R-Ladies Chicago R Tour
# Loading & Exploring Data

# Packages --------------------------------
## Packages are collections of R functions, data, and code. R comes with a set of standard packages
## Here, we are installing and adding packages to our current R session.

## Install packages you don't have. You only need to do this if you have not installed these before!
install.packages('readr') # Provides a fast and easy way to read data in R
install.packages('ggplot2') # Data visualization package


## Load packages. You need to do this everytime you start an R session!  
library(readr)
library(ggplot2)

# Data --------------------------------
## This dataset looks at the proportion of children producing a specific word by age group (in months).
## Words are categorized by type of word (nouns, verb, suffixes) 
## Words are also categorized by descriptive category (toys, food, question words, sounds)

## Load our data into our R environment
word_data <- read_csv("word_data.csv") # Read .csv file into R

## View the data as a tibble, or a type of dataframe
## see more info re: tibbles at vignettes("tibble")
word_data 

# Data Exploration --------------------------------
## See value options for each column
## table() creates tabular results of categorical variables
## it shows each level of a categorical variable and how many entries are present for that level
table(word_data$category) # What are the different categories? 

table(word_data$type) # What are the different word types? 

## Get only a subset of data
## Only look at data for children 24 months and older
subset(word_data,Age>23)

## See only the question words in the dataset and save it as its own dataframe
question <- subset(word_data,word_data$category=="question_words")
question

# Plotting --------------------------------
## Plot trajectories 
ggplot(question,aes(x=Age,y=Proportion,group=definition,color=definition)) +
  geom_line() + # Make this a line graph
  xlab("Age (months)") + # Add x and y axis labels
  ylab("Proportion of Children Producing")
