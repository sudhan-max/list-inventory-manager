# WEEK 4 PROJECT: LIST AND INVENTORY MANAGER
# Programming Language: R

cat("========================================\n")
cat("       LIST AND INVENTORY MANAGER\n")
cat("========================================\n")

# 1. Read CSV data and convert it into a list
cat("\n1. READ CSV DATA AS A LIST\n")

if (file.exists("inventory.csv")) {
  inventory_data <- read.csv("inventory.csv", stringsAsFactors = FALSE)
  inventory_list <- as.list(inventory_data)
  print(inventory_data)
} else {
  inventory_data <- data.frame(
    Item = c("Notebook", "Pen", "Pencil"),
    Quantity = c(20, 50, 30),
    Category = c("Stationery", "Stationery", "Stationery"),
    stringsAsFactors = FALSE
  )
  inventory_list <- as.list(inventory_data)
  cat("inventory.csv not found. Using sample inventory data:\n")
  print(inventory_data)
}

# 2. Display a list component by index
cat("\n2. DISPLAY A LIST COMPONENT BY INDEX\n")
component_index <- 1

if (component_index >= 1 && component_index <= length(inventory_list)) {
  cat("List component", component_index, ":\n")
  print(inventory_list[[component_index]])
} else {
  cat("Invalid list component index.\n")
}

# 3. Add a book to a list
cat("\n3. ADD A BOOK TO A LIST\n")
books <- list("The Alchemist", "Wings of Fire")
new_book <- "Ponniyin Selvan"
books[[length(books) + 1]] <- new_book
cat("Updated book list:\n")
print(books)

# 4. Modify an item in a fruit list
cat("\n4. MODIFY A FRUIT LIST\n")
fruits <- list("Apple", "Banana", "Orange")
cat("Original fruit list:\n")
print(fruits)

fruits[[2]] <- "Mango"
cat("Fruit list after changing the second item to Mango:\n")
print(fruits)

# 5. Count columns in a CSV file / data frame
cat("\n5. COUNT COLUMNS\n")
cat("Number of columns:", ncol(inventory_data), "\n")

cat("\nWeek 4 project completed successfully.\n")
