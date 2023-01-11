## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


##Create a list represented a cache matrix
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  
  set <- function(y){
    x <<- y
    s <<- NULL
  }
  get <- function() x
  
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  

}


## Write a short comment describing this function

##Aplly solve in the list (cache matrix)
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  
  if(!is.null(s)){
    message("getting chached data")
    return(s)
  }
  data <- x$get()
  m <- solve(data, ...)
  
  x$setsolve(m)
  m
  
}
