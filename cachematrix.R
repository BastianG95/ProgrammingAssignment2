## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This code is used to cache a matrix to be used to calculate its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
      x <<- y
     inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- mean
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## Use the cachematrix (above function) to solve its inverse, if makecachematrix is null, cachesolve 
## display a message, if not will return the inverse matrix

cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached inverse")
      return(inv)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinverse(m)
    inverse
}

