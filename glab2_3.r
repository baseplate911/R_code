f <- factor(c("apple", "banana", "apple", "orange", "banana"))
factor_to_list <- as.list(levels(f))
cat("Factor levels converted to a list:\n")
print(factor_to_list)