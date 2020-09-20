## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      a <- NULL              ##initializes the inverse as NULL
    set <- function(y) {
      x <<- y
      a <<- NULL
    }
    get <- function() {x}     ##function that retrieves the matrix x
    setinverse <- function(inverse) {a <<-inverse}
    getinverse <- function() {a}
    list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
  }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    a <- x$getinverse() 
    if(!is.null(a)){   ##checks if the inverse is Null
      message("getting cached data")
      return(a) ##this returns the inverse value
    }
    
    data <- x$get()
    a <- solve(data, ...)  ##calculates the inverse value
    x$setinverse(a)
    a               ##Returns matrix that is inverse of x
  }
