### R-Ladies Chicago R TOUR

# Load Data into workspace. Here, we're loading a sample dataset that is already in R
data("iris") 

# See the first six rows of the dataset
head(iris) 

# See how large the dataset is
dim(iris) # output shows number of rows then number of columns

# What is this dataset about? You can use ? for other functions to get more info
?iris 

# See a subset of your data
# Show data where petal length is greater than 2 cm
subset(iris,iris$Petal.Length > 2)

# Save the data as a file in your working directory
write.csv(iris,file="my_iris_data.csv") 

# Read a file into R from your working directory
my_iris_data <- read.csv("my_iris_data.csv") 