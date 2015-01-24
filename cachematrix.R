## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ma <- NULL
  set <- function(y){
    x <<- y
    ma <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix) ma <<- solve(x)
  getmatrix <- function() ma
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ma <- x$getmatrix()
  if(!is.null(ma)){
    message("getting cached data")
    return(ma)
  }
  data <- x$get()
  ma <- solve(data,...)
  x$setmatrix(ma)
  ma
}
