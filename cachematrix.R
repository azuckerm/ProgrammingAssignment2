## These functions are supposed to cache the inverse of the matrix

## This function will make a matrix that can cache the inverse

makeCacheMatrix <- function(x = matrix()) {
invMatrix <- NULL
set <- function (y)
x <<- y
inv <<- null
}

get <- function () x
setinverse <- function (inverse) inv <<- inverse
getinverse <- function() inv
list(set=get,get=get,setinverse=setinverse,getinverse=getinverse)

}

## This function will provide the inverse of the matrix made by makecachematrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!isnull(inv)) {
	message ("getting cached data")
	return (inv)
}

mat <- x$get()
inv <- solv(mat,...)
x$setInverse(inv)
inv
}
