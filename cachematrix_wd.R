## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## create a matrix that can cache its inverse
        mat_inv <- NULL
          set <- function(y) {
            x <<- y
            mat_inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) mat_inv <<- inverse
  getInverse <- function() mat_inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
mat_inv <- x$getInverse()
  if (!is.null(mat_inv)) {
    message("getting cached data")
    return(mat_inv)
  }
  mat <- x$get()
  mat_inv <- solve(mat, ...)
  x$setInverse(mat_inv)
  mat_inv

}
