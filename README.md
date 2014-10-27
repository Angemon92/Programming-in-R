Data Science Specialisation 
===================
### John Hopking University
####Course 2: R programming


### Project:
**Assignment: Caching the Inverse of a Matrix**

Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computing it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.

Write the following functions:

- makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
- cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.

For this assignment, assume that the matrix supplied is always invertible.



The first function, makeCacheMatrix creates a special "vector", which is a list of a functions to:
- set the value of the vector
- get the value of the vector
- set the value of the mean
- get the value of the mean

The second function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
If the inverse has already been calculated (and the matrix has not changed),
then the cachesolve should retrieve the inverse from the cache.
