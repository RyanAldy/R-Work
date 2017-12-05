NumbersBetween <- function(numbers) {
  
  allnums <- (numbers > min(numbers) & numbers < max(numbers))
  return (numbers[allnums])
}

cat(NumbersBetween(c(10,11,12,13,14,15)))






