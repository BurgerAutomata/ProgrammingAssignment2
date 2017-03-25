## Put comments here that give an overall description of what your
## functions are for the second programming assignment on Coursera Intro to R programming

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  #input is assumed to be a matrix
  #this part should be identical
  invMatrix <- NULL
  set <- function(y) {
    x <<- y
    invMatrix <<- NULL
  }
  get <- function() x
  setInv <- function(solve) invMatrix <<- solve
  getInv <- function() invMatrix
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Writes a short comment describing this function
## this one should also be fairly similar
cacheSolve <- function(x= matrix(), ...) {
        ## Return a matrix that is the inverse of x
  invMatrix <- x$getInv()
  if(!is.null(invMatrix)) {
    message("getting cached Inverse Matrix")
    return(invMatrix)
  }
  data <- x$get()
  invMatrix <- solve(data, ...)
  x$setInv(invMatrix)
  invMatrix
}
