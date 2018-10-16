### R-Ladies Chicago
## R TOUR - Basics for Graphing in R

# Installing & Loading Packages ----------------------------------
install.packages("ggplot2") # Make sure the argument is a string and is spelled correctly!
library(ggplot2) # Load the packages you need everytime you start R

# Get our data ----------------------------------
# Load Data into workspace. Here, we're loading a sample dataset that is already in R
data("iris") 

# See the first six rows of the dataset
head(iris) 

# See how large the dataset is
dim(iris) # output shows number of rows then number of columns

# What is this dataset about? You can use ? for other functions to get more info
?iris 

# Graphing in base R ----------------------------------
# Let's create a box plot that plots petal length for each flower species in the iris dataset
# boxplot(y ~ x, data, xlab="X AXIS LABEL", ylab="Y AXIS LABEL")
boxplot(Petal.Length ~ Species, iris, xlab = "Species", ylab = "Petal Length (cm)")

# Let's create a scatterplot that maps the relationship between petal and sepal length
# We'll use different colors to show different species by using the argument col = Species
?with # We'll use this function with(data,expr)
# plot(x,y,col=variable that determines color,type="p"points)
with(iris, plot(Petal.Length, Sepal.Length, col = Species, xlab = "Petal Length (cm)", ylab = "Sepal Length (cm)", type = "p"))
# Let's add a legend
legend("bottomright", pch = 1, col = c("black","red","green"), legend = c("Setosa", "Versicolor", "Virginia"))

# Graphing with ggplot2 ----------------------------------
# Let's create the same plots in ggplot. In ggplot you add layers to a base plot - ggplot()

# Let's make the boxplot from before
ggplot(iris,aes(x=Species,y=Petal.Length)) + # initial call indicating data and mapping aesthetics (aes)
  geom_boxplot() # layer specifying the plot

# Let's make the same scatter plot from before
ggplot(iris,aes(x=Petal.Length,y=Sepal.Length)) +
  geom_point()

ggplot(iris,aes(x=Petal.Length,y=Sepal.Length, colour=Species)) + # Here each dot will be colored based on the species column
  geom_point()

