## Assignment 2 - write 2 functions
## makecachematrix: creates a "matrix"-object that can cache its inverse.
## cachesolve: computes the inverse of the special ‚???omatrix‚???ù returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getInverse()
  if(!is.null(inv)){
    
    ## if inv not null
    ## the inverse exists - get cached data
    
    message("getting cached data")
    return(inv)
  }
  
  ## the inverse does not exist - compute inverse
  
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}

