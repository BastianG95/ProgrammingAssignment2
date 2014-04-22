## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
