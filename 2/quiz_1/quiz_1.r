data <- read.csv("hw1_data.csv")

# Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
firstTwo <- read.csv("hw1_data.csv", nrows = 2)


# How many observations (i.e. rows) are in this data frame?
nrows <- nrow(data)

# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
lastTwo <- tail(data, 2)

# What is the value of Ozone in the 47th row?
xRow <- data[47,]

# How many missing values are in the Ozone column of this data frame?
ozone <- data[,1]
ozoneNAvalues <- is.na(ozone)
length(which(ozoneNAvalues))

# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
ozoneNotNA <- ozone[!NAvalues]
meanOzone <- sum(ozoneNotNA)/(length(ozoneNotNA))

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
newData <- subset(data, Ozone > 31 & Temp > 90)
solar <- newData[,2]
solarNA <- is.na(solar)
solar <-  solar[!solarNA]
meanSolar = (sum(solar))/(length(solar))

# What is the mean of "Temp" when "Month" is equal to 6?
june <- subset(data, Month == 6)
temp <- june[,4]
meanTemp <- (sum(temp))/(length(temp))

# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
may <- subset(data, Month == 5)
mayOzone <- may[,1]
mayOzoneNA <- is.na(mayOzone)
mayOzone <- mayOzone[!mayOzoneNA]
maxOzone <- max(mayOzone)
