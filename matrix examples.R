M <- matrix(seq(1,10), nrow = 2, ncol = 5)

Shafeeq <- c(10,20,30)
Ryan <- c(20,30,40)

#print(max(Ryan))

# Combine by Rows
Results <- rbind(Shafeeq, Ryan)
colnames(Results) <- c("Physics", "Chemistry", "Maths")
print(Results)

Physics <- c(10,20)
Maths <- c(50,60)
# Combine by Columns
Results_two <- cbind(Physics, Maths)
rownames(Results_two) <- c("Shafeeq", "Ryan")
print(Results_two)

# Check dimensions of data structure
dim(Results)

# First param is row, 2nd is column
print(Results[1,2])

# Print all of first row
print(Results[1,])

# Print Shafeeq's Physics and Maths results - all search/conditions in []
print(Results["Shafeeq", c("Physics", "Maths")])

# Sum of all rows
rowSums(Results)
# Sum of all columns
colSums(Results)

# Gives index as 6 which is strange as this is 2 dimensional
print(which(Results == max(Results)))

print(Results_two[2,])
