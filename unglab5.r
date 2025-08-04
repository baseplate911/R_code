# 1. Reading data from the CSV file
buildings_data <- read.csv("C:/Users/akash/CODE/tallest_completed_buildings.csv")

# a. Find the size of the dataframe
size_of_dataframe <- dim(buildings_data)
print(paste("Size of the dataframe: ", size_of_dataframe[1], "rows and", size_of_dataframe[2], "columns"))

# b. Change the datatype of FLOORS to integer
buildings_data$FLOORS <- as.integer(buildings_data$FLOORS)

# c. Use subset function to find all buildings where floors are greater than 100
tall_buildings <- subset(buildings_data, FLOORS > 100)
print("Buildings with more than 100 floors:")
print(tall_buildings)

# d. Find the city with the most number of tallest buildings
city_count <- table(buildings_data$CITY)
most_common_city <- subset(city_count, city_count == max(city_count))
print("City with the most number of tallest buildings:")
print(most_common_city)

# e. Use subset function to find buildings completed after 2010 and functioning as office
filtered_buildings <- subset(buildings_data, COMPLETION > 2010 & FUNCTION == "office")
print("Buildings completed after 2010 and functioning as office:")
print(filtered_buildings)

# f. Write the filtered data to a CSV file
write.csv(filtered_buildings, "C:/Users/akash/CODE/tallest_completed_buildings.csv", row.names = FALSE)

# 2. Data cleaning demonstration with NA values

# Creating a sample dataframe with NA values
sample_data <- data.frame(
  Name = c("Building1", "Building2", "Building3", NA, "Building5"),
  Height = c(828, 632, 601, NA, 555),
  City = c("Dubai", "Shanghai", "New York", "London", NA)
)

# a. is.na(): Identify NA values
na_values <- is.na(sample_data)
print("NA values in the dataframe:")
print(na_values)

# b. na.omit(): Remove rows with any NA values
data_omit <- na.omit(sample_data)
print("Data after na.omit (removes rows with NAs):")
print(data_omit)

# c. na.fail(): Stops execution if there are any NA values
tryCatch({
  data_fail <- na.fail(sample_data)
}, error = function(e) {
  print("na.fail detected NA values and stopped execution.")
})

# d. na.exclude(): Similar to na.omit, but allows for handling in models
data_exclude <- na.exclude(sample_data)
print("Data after na.exclude (excludes rows with NAs):")
print(data_exclude)

# e. na.pass(): No action taken, passes data as is
data_pass <- na.pass(sample_data)
print("Data after na.pass (no action on NAs):")
print(data_pass)
