## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

        makeCacheMatrix <- function(x = matrix()) { 

                    m<- NULL
                    set  <- function (Y) {
			x <<- y
                	m <<- NULL
       					 }

        	get <- function() x
        	setmatrixinverse <- function(matrixinverse) m <<- solve(x)
       		getmatrixinverse <- function() m
                
		list(set = set, get = get,
             	setmatrixinverse = setmatrixinverse,
             	getmatrixinverse = getmatrixinverse)
  
  						} 


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
       ## Return a matrix that is the inverse of 'x' 

 	 m <- x$getmatrixinverse(m)
        if(!is.null(m)) {

                message("getting cached data")
                return(m)
        		}

        data <- x$get()
        m <- solve(data, ...)
        x$setmatrixinverse(m)
        m
 } 
