LongestWord <- function(words) {
  
  return(words[which.max(nchar(words))])
}


cat(LongestWord(c('Ryan', 'Phone', 'Costa', 'Programming')))


