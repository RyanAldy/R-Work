#sales <- matrix
product_id <- c(1,2,3,1,2)
price <- c(10,15,20,10,15)
quantity <- c(170,400,70,25,71)

sales <- cbind(product_id, price, quantity)

print(sales)


prod_name <- c("7UP", "Coke", "T-shirt")
category <- c("Drink", "Drink", "Clothes")

total_sales <- function(sales, prod_id) {
  
  #include_list <- subset(sales, product_id == prod_id)
  # Use this over subset....
  return(c(prod_id, sum(sales[c(sales[,1]==prod_id),"quantity"]), sum(sales[c(sales[,1]==prod_id), "price"])))
  
  #print(c(prod_id, sum(include_list[,2]), sum(include_list[,3])))
  
}

print(total_sales(sales,1))

new_prod_id <- c(1,2,3)

category_details <- cbind(new_prod_id, prod_name, category)
print(category_details)

product_summary <- function(category_details, category_name) {
  
  include_categories <- subset(category_details, category == category_name)
  print(paste("Number of items in category", category_name, "=", nrow(include_categories)))
  
}

product_summary(category_details, "Drink")


added_categories <- c("Drink", "Drink", "Clothes", "Drink", "Drink")
new_cat_details <- cbind(sales,added_categories)
print(new_cat_details)

#return(c(prod_id, sum(sales[c(sales[,1]==prod_id),"quantity"]), sum(sales[c(sales[,1]==prod_id), "price"])))

product_summary_two <- function(new_cat_details, category_type) {
  
  #included_subset <- subset(new_cat_details, added_categories == category_type)
  return(paste("Cat:", category_type, "Sum Price:", sum(as.numeric(included_subset[,2])), "Sum Qty:", sum(as.numeric(included_subset[,3]))))
  #return(c(category_type, sum(as.numeric(new_cat_details[c(new_cat_details[,4]==category_type), "quantity"])), sum(as.numeric(new_cat_details[c(new_cat_details[,4]==category_id), "price"]))

}


print(product_summary_two(new_cat_details, "Drink"))
