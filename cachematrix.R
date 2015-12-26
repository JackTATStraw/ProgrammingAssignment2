## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## inv == inversed matrix
## return a list that contains three functions, which stands for the special "matrix" object
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    get <- function() x
    setinv <- function(invmat) inv <<- invmat
    getinv <- function() inv
    
    list(get = get,
         getinv = getinv,
         setinv = setinv)
}


## Write a short comment describing this function

## mat stands for matrix
## first get the cached result. calculate if it's null, else return the cached result
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if (!is.null(inv)) {
        message("Getting cached results")
        return(inv)
    }
    
    mat <- x$get()
    inv <- solve(mat)
    x$setinv(inv)
    inv
}
