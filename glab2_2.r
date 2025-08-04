mat <- matrix(1:9, nrow = 3, ncol = 3)

# a. Perform element-wise multiplication
elementwise_multiplication <- mat * mat
cat("Element-wise multiplication of the matrix:\n")
print(elementwise_multiplication)

# b. Raise all elements of the matrix to the power N
N <- 3  # Example power value
powered_matrix <- mat ^ N
cat("Matrix raised to the power", N, ":\n")
print(powered_matrix)
