## dplyr package
install.packages("dplyr")    ## to install the dplyr package
library(dplyr)           ## to make dplyr the current library
chicago <- readRDS("chicago.rds")   ## to load the air quality data as a data frame called "chicago"
dim(chicago)      ## to get the dimensions of our data frame ie. no. of rows and columns
str(chicago)      ##  to get the basic charecterestics of the data like variable type and few observations
summary(chicago)

## select() function


onlyfirsttwocolumns <- select(chicago,1:2) ## this selects a subset containing only the first two columns of the chicago dataframe
head(onlyfirsttwocolumns)  ## to get the first six rows of our selected subset of chicago
tail(onlyfirsttwocolumns)  ## to get the last six rows of our selected subset of chicago
exceptfirsttwo <- select(chicago,-(1:2))  ## this selects a subset containing every other column except the first two columns of the chicago dataframe
startswithp <- select(chicago, starts_with("p")) ## selects a subset of all the variables starting with "P"
head(startswithp)  


## filter function

chic.f <- filter(chicago, no2tmean2 > 25 & tmpd > 85) ## it filters the rows where no2tmean2 > 25 and tmpd > 85
 select(chic.f, date, tmpd, no2tmean2)  ## we get 14 observations with specific dates and values

 ## rename function
 
 head(chicago)
 chicago <- rename(chicago,dewpoint = dptp) ## using the rename function to change the variable name from dptp to dewpoint
 