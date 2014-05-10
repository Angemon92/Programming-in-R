##  File consist pair of functions that cache the inverse of a matrix.


## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        result <- NULL
        
        # set/get matrix
        setMatrix <- function(matrix){
                result <<- NULL
                x <<- matrix
        }
        getMatrix <- function() x
        
        # set/get inverse matrix
        setInverseMatrix <- function(inverseMatrix) result <<- inverseMatrix
        getInverseMatrix <- function() result
        
        # return list
        list(setMatrix=setMatrix, getMatrix=getMatrix,
             setInverseMatrix=setInverseMatrix,
             getInverseMatrix=getInverseMatrix )
        
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        result <- x$getInverseMatrix()
        
        if(!is.null(result)) {
                message("getting cached data")
                return(result)
        }
        
        data <- x$getMatrix()
        result <- solve(data, ...)
        x$setInverseMatrix(result)
        
        ## Return a matrix that is the inverse of 'x'   
        result
}
