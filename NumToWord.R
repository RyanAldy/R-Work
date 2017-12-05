number <- as.numeric(readline(prompt = "Please enter number: "))
output_string =""


if (number >= 1000 && number < 10000) {
  new_num = number/1000
  word <- switch(new_num,
                 "One",
                 "Two",
                 "Three",
                 "Four",
                 "Five",
                 "Six",
                 "Seven",
                 "Eight",
                 "Nine")
  
  output_string <- paste(output_string, word, 'Thousand')
  number <- number %% 1000
}


if (number >= 100 && number < 1000) {
  new_num = number/100
  word <- switch(new_num,
                 "One",
                 "Two",
                 "Three",
                 "Four",
                 "Five",
                 "Six",
                 "Seven",
                 "Eight",
                 "Nine")
  
  output_string <- paste(output_string, word, 'Hundred')
  number <- number %% 100
}



if (number >= 20 && number < 100) {
  new_num = number/10
  word <- switch(new_num,
                 "",
                 "Twenty",
                 "Thirty",
                 "Forty",
                 "Fifty",
                 "Sixty",
                 "Seventy",
                 "Eighty",
                 "Ninety")

  output_string <- paste(output_string, word)
  number <- number %% 10
}

# Have to add one to index as indexes start at 1 in R
if (number <= 19) {
word <- switch(number +1,
               "",
               "One",
               "Two",
               "Three",
               "Four",
               "Five",
               "Six",
               "Seven",
               "Eight",
               "Nine",
               "Ten",
               "Eleven",
               "Twelve",
               "Thirteen",
               "Fourteen",
               "Fifteen",
               "Sixteen",
               "Seventeen",
               "Eighteen",
               "Nineteen"
               )
  output_string <- paste(output_string, word)
}

print(trimws(output_string))
