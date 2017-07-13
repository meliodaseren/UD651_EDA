# install and load the ggplot package
# install.packages('ggplot2')
library(ggplot2)

# install and load a color package
# install.packages('RColorBrewer')
library(RColorBrewer)

# load the data set
data(diamonds)

diamonds

# create scatterplot of price vs. carat color coded by diamond cuts
qplot(data = diamonds, x = carat, y = price, color = cut) +
  scale_color_brewer(palette = 'Accent')
