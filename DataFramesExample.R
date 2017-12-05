N <- c("Ryan", "Shafeeq", "John")
Physics <- c(75,78,56)
Chemistry <- c(80,54,44)

Results <- data.frame(Names = N,
                      physics_marks = Physics,
                      chemistry_marks = Chemistry,
                      stringsAsFactors = FALSE)
# StringAsFactors = FALSE means to not give the columns categories
#print(Results)

print(Results$Names)
# or
print(Results[["Names"]])
# or
print(Results[,1])

# Print Physics marks for 1st and 2nd record
print(Results[c(1,2), 2])
          # This bit returns true for index 1
print(Results[Results[,2]== max(Results[,2]), 1])
