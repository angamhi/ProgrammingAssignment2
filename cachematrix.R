## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   ## Creating special matrix object                              
   inv_m <- NULL                   
   set <- function(y) {
       x <<- y
       inv_m <<- NULL
 }                         ##Setting the value of the special matrix
get <- function() x         ##Getting the value of the special matrix
 setInverse <- function(inverse) inv_m <<- inverse   ##Setting the value of the inverse
 getInverse <- function() inv_m                        ##Setting the value of the inverse
list(set = set,                                    ##  Listing objects/functions of the frame
    get = get,                      
 setInverse = setInverse,
          getInverse = getInverse)
 }
 
cacheSolve <- function(x, ...) {     ## Creating function for calculating and returning result of the Inverse      

    inv_m <- x$getInverse()     ## Checking if there is a value of the inverse already
if (!is.null(inv_m)) {                       
         message("getting cached data")
         return(inv_m)
     }                                   ##Returning value from cache
     mat <- x$get()              
    inv_m <- solve(mat, ...)             ## Calculating Inverse
     x$setInverse(inv_m)
     inv_m
 }
}

