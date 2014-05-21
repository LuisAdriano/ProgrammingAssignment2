## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix <- stores the inverted matrix into the cache
## set <- receives a matrix, stores it in x and clears minverted
## get <- gets value of x and returns it
## setinverted <- receives a matrix and stores into minverted
## getinverted <- returns the matrix stored in the cache

makeCacheMatrix <- function(x = matrix()) {

	minverted <- NULL

	set <- function(y) {
		x <<- y
		minverted <- NULL
	}

	get <- funtion() x
	setinverse <- function(inverse) minverted <<- inverse
	getinverse <- function() minverted

	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## cacheSolve <- calculates (using 'solve' the inverse of a matrix)
## only once - if the cache is empty

Cachesolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	minverted <- x$getinverse()

	if(!is.null(minverted)) {

		message("get data in cache")
		return(minverted)
	}

	data <- x$get()
	minverted <- solve(data,...)

	x$setinverse(minverted)

	minverted
}


