
arr <- array(1:27, dim = c(3, 3, 3))
find_in_array <- function(arr, item) {
  return(item %in% arr)
}
item_to_find <- 15
is_present <- find_in_array(arr, item_to_find)
cat("Is", item_to_find, "present in the array?", is_present, "\n")

max_value <- max(arr)
min_value <- min(arr)
cat("Maximum value in the array:", max_value, "\n")
cat("Minimum value in the array:", min_value, "\n")