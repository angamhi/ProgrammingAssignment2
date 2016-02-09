

makeCacheMatrix <- function(x = matrix()) {
   ## Creating special matrix object                              
   inv_m <- NULL                   
   set <- function(y) {
       x <<- y
       inv_m <<- NULL
 }                         ##Setting the value of the special matrix
get <- function() x         ##Getting the value of the special matrix
 setInver <- function(Inverse) inv_m <<- Inverse   ##Setting the value of the inverse
 getInver  <- function() inv_m                        ##Setting the value of the inverse
list(set = set,                                    ##  Listing objects/functions of the frame
    get = get,                      
 setInver  = setInver ,
          getInver  = getInver )
 }
 
cacheSolve <- function(x, ...) {     ## Creating function for calculating and returning result of the Inverse      

    inv_m <- x$getInver ()     ## Checking if there is a value of the inverse already
if (!is.null(inv_m)) {                       
         message("getting cache data")
         return(inv_m)
     }                                   ##Returning value from cache
     mat <- x$get()              
    inv_m <- solve(mat, ...)             ## Calculating Inverse
     x$setInver (inv_m)
     inv_m
 }
}

