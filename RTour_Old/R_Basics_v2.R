### R-Ladies Chicago
## R TOUR in depth

# Load Data into workspace. Here, we're loading a sample dataset that is already in R
data("iris") 

# See the first six rows of the dataset
head(iris) 

# See how large the dataset is
dim(iris) # output shows number of rows then number of columns

# What is this dataset about? You can use ? for other functions to get more info
?iris 

# Save it as a file in your working directory
write.csv(iris,file="my_iris_data.csv") 

# Read a file into R from your working directory
my_iris_data <- read.csv("my_iris_data.csv") 

# See a subset of your data
# Show data where petal length is greater than 2 cm
subset(iris,iris$Petal.Length > 2)

# Assign a subset of your data to a new variable name
# Make a new data frame that only have information for versicolor flower species
versicolor <- subset(iris,iris$Species == "versicolor")

# Put two dataframes together
iris_combined <- rbind(iris,my_iris_data)

# Create a new column 
iris_combined$Double.Petal.Width <- iris_combined$Petal.Width*2

# Graph Data
# Let's create a box plot that plots petal length for each flower species in the iris dataset
boxplot(Petal.Length ~ Species, iris, xlab = "Species", ylab = "Petal Length (cm)")

# Let's create a scatterplot that maps the relationship between petal and sepal length
# We'll use different colors to show different species by using the argument col = Species
with(iris, plot(Petal.Length, Sepal.Length, col = Species, xlab = "Petal Length (cm)", ylab = "Sepal Length (cm)", type = "p"))
# Let's add a legend
legend("bottomright", pch = 1, col = c("black","red","green"), legend = c("Setosa", "Versicolor", "Virginia"))


## Installing and loading packages
install.packages("dplyr") # Make sure the argument is a string and is spelled correctly!
library(dplyr) # Load the packages you need everytime you start R
