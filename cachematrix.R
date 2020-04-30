##Assignment Caching the Inverse of a Matrix

#make cache matrix
#cachematrix.R

##set the value of the vector
##get the value of the vector
##set the value of the mean
##get the value of the mean

## This function creates a special matrix object that can chche its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
}
        get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



#cache solve
##This function computes the inverse of the special matrix returned by 'makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
}
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}
