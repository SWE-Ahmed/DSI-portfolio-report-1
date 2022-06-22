# A report to analyze the chicken weights dataset

# Initializing the packages
library(tidyverse)

# Part 1: General understanding of the dataset ----------

# View the dataset on the console
ChickWeight

# View the dataset on a separate viewer
View(ChickWeight)

# view the first 6 observations
head(ChickWeight)

# view the summary of the dataset
summary(ChickWeight)

# Plot the dataset to view it (Point Plot)
ggplot(data=ChickWeight, mapping = aes(x=Time, y=weight)) + 
    geom_point()

# Plot the dataset to view it (Box Plot)
ggplot(ChickWeight, mapping = aes(x=Diet, y=weight)) +
    stat_boxplot(geom ='errorbar') + 
    geom_boxplot()

# Part 2: Deeper understanding of the dataset ----------

# With the above information, we can proceed to exploring
# the relations between the variables for additional insights.

# Now, we create a tibble that shows us the details of the chickens
# when grouped by the diet they were fed on
ChickWeight %>% group_by(Diet) %>% summarise(number_of_chicks = n_distinct(Chick))

