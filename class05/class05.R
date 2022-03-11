# Class 5 Data visualization
plot(1:5)

# install.packages("ggplot2")


# Before I can use this package, I need to load it
library(ggplot2)

# View(cars) # Opens a table with cars data

plot(cars)

# Plot cars with ggplot
ggplot(data=cars) + 
  aes(x=speed, y=dist) +
  geom_point()

# Other way
ggplot(cars, aes(speed, dist), geom_point)

# Yo can save it in a variable
p <- ggplot(data=cars) + 
  aes(x=speed, y=dist) +
  geom_point()

p + geom_line() #Add lines connecting the points
p + geom_smooth() # 

p + labs(title="Cars plot")+ xlab("xlab") + ylab("ylab")

# RNA-Seq plot
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

# Make a scatter plot with genes data
ggplot(data=genes) +
  aes(x=Condition1, y=Condition2) +
  geom_point(alpha=0.2)

# Install packages for making PDFs
# install.packages("tinytex")

library(tinytex)
install_tinytex()

  
  
