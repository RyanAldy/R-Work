
FirstSecondThird <- function(numbers) {
  
  numbers_sorted <- sort(numbers, decreasing=TRUE)
  print(numbers_sorted)
  largest_num <- max(numbers_sorted)
  print(largest_num)
  
  
   counter = 0
   for (num in numbers_sorted) {
     if (num < largest_num) {
       largest_num <- num
       print(largest_num)
       counter <- counter + 1
       if (counter > 1) {
         break
       }
     }
   
   }
}


FirstSecondThird(c(20,25,22,23,24,28,28,28))
