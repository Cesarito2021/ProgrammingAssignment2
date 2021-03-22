## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {inv <- NULL # initializing inv as NULL 
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() {x} # function for taking the matrix x 
setinverse <- function(inverse){ inv <<- inverse}
getinverse <- function(){inv}
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {# get cache data
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  dd <- x$get()
  inv <- solve(dd, ...) # function to calculate inv matrix
  x$setinverse(inv)
  inv # this is the inversed matrix for x
  
        ## Return a matrix that is the inverse of 'x'
}
