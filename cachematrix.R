## Put comments here that give an overall description of what your
## functions do

## This function save a matrix and his inverse in cache

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                m <<- y
                s <<- NULL
        }
        get <- function() m
        setSolve <- function(mean) s <<- mean
        getSolve <- function() s
        list (set = set, get = get, 
              setSolve = setSolve, 
              getSolve = getSolve)
}


## This funcion return the inverse of a matrix, if isn't in cache, set de inverse and then return ir

cacheSolve <- function(m, ...) {
        i <- m$getSolve
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- m$get()
        i <- solve(m)
        m$setSolve(s)
        i
        ## Return a matrix that is the inverse of 'm'
}
