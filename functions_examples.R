F <- function(a) {
  
  if (a == 1) {
    
    xyz <- function(A,B){
      C = A + B
      return (paste("The result is", C))
      
    }
    
  } else {
    
    xyz <- function(A,B){
      C = A - B
      return (paste("The result is", C))
      
    }
    
  }
 return(xyz)
   
}

# Store Function in X
X <- F(1)
# Store return in Result
Result <- X(2,7)
# Print Result
print(Result)

Y = body(F)
Z = formals(F)
print(Y)
print(Z)