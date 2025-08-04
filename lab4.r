# 1. Demonstrate while loop with if-else
counter <- 1
while(counter <= 5) {
  if(counter %% 2 == 0) {
    print(paste(counter, "is even"))
  } else {
    print(paste(counter, "is odd"))
  }
  counter <- counter + 1
}

# 2. Demonstrate for loop with break statement
for(i in 1:10) {
  if(i == 6) {
    print("Breaking the loop")
    break
  }
  print(i)
}

# 3. Creating vectors
# a. Using seq() function
vector_seq <- seq(1, 10, by=2)
print("Sequence using seq():")
print(vector_seq)

# b. Using : operator
vector_colon <- 1:5
print("Vector using : operator:")
print(vector_colon)

# c. Using c() function
vector_c <- c(10, 20, 30, 40)
print("Vector using c() function:")
print(vector_c)

# d. Using as.vector() function
vector_as <- as.vector(c(100, 200, 300))
print("Vector using as.vector() function:")
print(vector_as)

# e. Demonstrate rep() function to generate repeated sequence of a vector
vector_rep <- rep(1:3, times=3)
print("Vector using rep() function:")
print(vector_rep)

# 4. Create a list using list() function
my_list <- list("apple", 42, TRUE, c(1, 2, 3))

# a. Find its length
list_length <- length(my_list)
print(paste("Length of the list:", list_length))

# b. Access list items using []
print("Accessing second item of the list:")
print(my_list[3])  # Accessing second element using []
