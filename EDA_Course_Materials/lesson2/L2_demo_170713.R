# ----- Learn R in swirl ----- #
# install.packages("swirl") 
# library(swirl)
# swirl()


# Install and load the ggplot package
# install.packages('ggplot2')
library(ggplot2)

# Install and load a color package
# install.packages('RColorBrewer')
library(RColorBrewer)

# Load the data set
data(diamonds)

diamonds

# create scatterplot of price vs. carat color coded by diamond cuts
qplot(data = diamonds, x = carat, y = price, color = cut) +
  scale_color_brewer(palette = 'Accent')


# Subsetting Data
statesInfo <- read.csv('./UD651_EDA/EDA_Course_Materials/lesson2/stateData.csv')
View(statesInfo)
str(statesInfo)
class(statesInfo)

stateSubset <- subset(statesInfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]
head(stateSubsetBracket, 2)
dim(stateSubsetBracket)

# Factor
# Factor is a categorical variable different flavors or levels to it.
reddit <- read.csv("./UD651_EDA/EDA_Course_Materials/lesson2/reddit.csv")
str(reddit)

table(reddit$employment.status)
summary(reddit)

levels(reddit$age.range)
qplot(data = reddit, x = age.range)

# Setting Levels of Ordered Factors Solution
reddit$age.range <- ordered(reddit$age.range,
                            levels = c('Under 18', '18-24', '25-34', '35-44',
                                       '45-54', '55-64', '65 or Above'))
qplot(data = reddit, x = age.range)

# Alternate Solution
reddit$age.range <- factor(reddit$age.range,
                           levels = c('Under 18', '18-24', '25-34', '35-44',
                                      '45-54', '55-64', '65 or Above'),
                           ordered = T)
qplot(data = reddit, x = age.range)


levels(reddit$income.range)
qplot(data = reddit, x = income.range)
reddit$income.range <- ordered(reddit$income.range,
                               levels = c("Under $20,000", "$20,000 - $29,999",
                                          "$30,000 - $39,999", "$40,000 - $49,999",
                                          "$50,000 - $69,999", "$70,000 - $99,999",
                                          "$100,000 - $149,999", "$150,000 or more"))
qplot(data = reddit, x = income.range)
