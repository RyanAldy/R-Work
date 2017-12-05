## Vectors

marks <- c(120, 140, 175)

names(marks) <- c("John", "Ryan", "Michelle")

# Prints combined marks + names
print(marks)
# Print marks for Ryan only
print(marks["Ryan"])

#Y <- names[c(1,2)]
#print(Y)

marks_over_120 <- marks > 120
# This holds FALSE TRUE TRUE

print(marks[marks_over_120])

f <- function(data) {
  for (x in data) {
    
    print(x)
  }
}


f(marks)

for (x in names(a)) {
  print(paste(x, a[x]))
}


