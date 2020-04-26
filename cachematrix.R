## General assumption: All matrix is invertable!

## 1. We create a general storing variable called i and set to NULL
## 2. In set function, we set the value of matrix x to y, i to NULL
## 3. In get function, we return the value of matrix x
## 4. setinverse sets the value of inverse i
## 5. getinverse returns the value of the inverse i

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) i <- inv
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## This function calculate the inverse of the matrix created by
## the function above. If the inverse is calculated, then it shall
## return the inverse from cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(i)
    i
}
