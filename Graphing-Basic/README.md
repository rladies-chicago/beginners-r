# Basic Graphing in R 
  
Materials for our "R Tours" on basic data visualization in R

## Requirements
- PC or Mac computer ready to run R and RStudio    
- `RDataViz.R` script in this repo  
  
If possible, install `ggplot2`  
  
```
install.packages("ggplot2")
library(ggplot2) 
```
  
## Who is this tutorial for? 
- People who are new to ggplot2   
  

## ggplot2 syntax  
  
`ggplot()` creates a coordinate system or base that you add layers to. In this function, you define the data set you are using, your x and y axis values, and other aesthetic mappings in the `aes()` function.  
  
  
```
ggplot(iris,aes(x=Petal.Length,y=Sepal.Length)) + # Base call
  geom_point() # the layer that specifies the type of plot
```
   
An aesthetic is a visual property of the objects in your plot. Aesthetics include things like the size, the shape, or the color of your points. You define this via the `aes()` function. Items you may define in `aes()` are...  
  
- x and y values  
- color/colour/fill  
- line type or groupings  
    
 ```
 ggplot(iris,aes(x=Petal.Length,y=Sepal.Length, colour=Species)) + # each dot will be colored based on the species column
  geom_point()
 ```
  
  
## Useful Resources  
  
- This [ggplot2 tutorial](https://github.com/nuitrcs/r_ggplot_july2018) from Northwestern IT Research Computing Services  
- The [ggplot cheatsheet](https://www.rstudio.com/wp-content/uploads/2016/11/ggplot2-cheatsheet-2.1.pdf)   
- The [R Graph Gallery](https://www.r-graph-gallery.com/)  
  
 
