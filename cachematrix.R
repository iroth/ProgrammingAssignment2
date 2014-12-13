## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolved <- function(solved) s <<- solved
        getsolved <- function() s
        list(set = set, get = get,
             setsolved = setsolved,
             getsolved = getsolved)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolved()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        mat <- x$get()
        s <- solve(mat)
        x$setsolved(s)
        s
}
