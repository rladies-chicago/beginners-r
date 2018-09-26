# R Basics


#R is an open source statstical programing langauge

#Basic computational functions such as

#add
8+8

#multiply
8*8

#divide
8/8

#subtract
8-4

#In order to reuse our compuation we put the in variables

x <- 8+8
x

#<- is an assignment operator 

#First thing before you do any type of analysis is to setup your environment

## set workspace to correct path
getwd() # See what directory you are in
#Ctrl+L allows us to clear command window (similar to clc in MATLAB) 

setwd("FILE PATH") # Change this to the path for your computer
# If you're on a PC, the slashes will go the other way
# Can also set by going to Session -> Set Working Directory -> Choose Directory


#R is used to analyze sets of data. They can come in many different forms.
#Forutnately R has packages that are pre installed
#Famous datasets are iris and mtcars dataset


#R has libraries that other developers have created to make analyzing data easier
#For more information on these libraries look at 
#https://awesome-r.com/


# First step:  load in function libraries
install.packages("ggplot2") # plotting package

##once downloaded, load in to R
# You will need to do this everytime you open R
# You can do this two different ways: library() or require()
library(ggplot2)  
require(xlsx) #library that is used to upload excel files


# let's load the packages we will be using today
library(datasets) # load package of datasets
library(psych) # specialized package for psychology statistics
library(plyr) #for tabulating


## Load data
# for a csvfile
data <- read.csv(file.choose(), header = TRUE) # dialogue box pops up to select a file

# data we are using today is a sample dataset that R has built in (used in many examples)
data <- mtcars # assign data to variable
newvar <- data.frame(DATASET) # turn a matrix into a data frame

# what can we do with the data?
?mtcars # ? is the help call. use ?FUNCTION to see help documentation. If you aren't sure of the exact function name use ??
class(data) # what is the class of this variable
dim(data) # what are the dimensions of this matrix (output order = row columns)

head(data) # shows you first six rows of matrix
describe(data) # shows descriptive statistics for each variable, from psych package
summary(data) # box plot calculations for each variable

# subsetting data
# pull out data from specified data set that meets certain conditions
sub_cars <- subset(data,data$gear>3 | data$gear<5) # this variable only shows cars where the gear is more than 3, less than 5)
# can also use brackets, like: data[row,col] to subset
data[3,1] # what is in row 3, col 1?
data[,3] # what is in col 3 only?
data[3,] # what is in row 3 only?
data$gear # use column name to pull a column

#Explore the table function
#One of the most useful R functions to learn
# The table function creates tabular results of categorical variables. 
?table

# Use table to do cross tabs across different variables
table(data$cyl,data$gear) # cylinder will be on vertical axis, gear on horizontal

# use ply r to do calculations across different variables
some_stats <- ddply(data, c("am", "gear"), summarise,
                    N    = sum(!is.na(wt)),
                    mean = mean(wt, na.rm=TRUE),
                    sd   = sd(wt, na.rm=TRUE),
                    se   = sd / sqrt(N)
)
some_stats # display new table you made

# save table
# input is write.table(dataframe you want to save, cells in frame separated by (/t for tabs "," for commas etc.),'FILENAME with extension') 
write.table(some_stats,sep="\t",'FILENAME.txt')

# basic histogram
hist(data$wt)

# basic barplot
barplot(some_stats$mean,width=2,xlab = 'gears',ylab = 'mean weight', main = 'cool graph!',ylim=c(0,6)) 

# basic scatterplot
scatterplot(data$wt,data$mpg,y~x,data,main= 'cool scatterplot')
