top_marks <- function(people,phy,chem,math) {

  total_marks <- phy + chem + math
  # Which returns the element/index that meets the condition
  top_mark <- which(total_marks == max(total_marks))

  print(people[top_mark])
}

phy <- c(87, 80, 70, 20)
chem <- c(90, 80, 60, 20)
math <- c(90, 80, 70, 20)
people <- c("Peter", "Ryan", "Jake", "Shafeeq")

top_marks(people,phy,chem,math)


passed_students <- function(people,phy,chem,math) {
  
  total_marks <- phy + chem + math
  
  marks_over_passed <- total_marks > 230
  #print(marks_over_passed)
  print(people[marks_over_passed])
  
 
}

passed_students(people,phy,chem,math)


specific_result <- function(regno, people, phy, chem, math) {
  
  results <- c(phy[regno], chem[regno], math[regno])
  print(results)
  percentage <- sum(results/300) * 100
  total_marks <- phy[regno] + chem[regno] + math[regno]
  
  num_passed <- sum(results >= 60)
  
  if (num_passed == 3) {
    print(paste(people[regno], "You have passed all three!", "Percentage:", percentage, "Total marks:", total_marks))
  }
  else if (num_passed == 2) {
    print("You have failed 1, Please retake the subject")
  }
  else if (num_passed == 1) {
    print("Please retake the course")
  }
  else if (num_passed == 0) {
    print(paste(people[regno], "Go home!"))
  }
  
}


specific_result(1, people, phy, chem, math)  
specific_result(4, people, phy, chem, math)


value_operation <- function(people, phy, chem, math, rel_operator, subject, score) {
  
  new_subject <- switch(subject,
                              'Chemistry' = chem,
                              'Maths' = math,
                              'Physics' = phy,
                              subject)
  
  
  if (rel_operator == ">") {
    result <- new_subject > score
    person_result <- which(result)
    #print(person_result)
    print(people[person_result])
  } else if (rel_operator == "<") {
    result <- new_subject < score
    person_result <- which(result)
    #print(person_result)
    print(people[person_result])
  } else if (rel_operator == "=") {
    result <- new_subject == score
    person_result <- which(result)
    #print(person_result)
    print(people[person_result])
  } else if (rel_operator == "!") {
    result <- new_subject != score
    person_result <- which(result)
    #print(person_result)
    print(people[person_result])
  } else {
    print("No results found!")
  }
  
}

value_operation(people, phy, chem, math, "<", "Chemistry", 70)

