## Put comments here that give an overall description of what your
## functions do
## cachematrix.R - contains 2 functions - that called in order inverts a matrix. Input is assumed to be an invertible matrix. No checks done for invertibility
##
## Write a short comment describing this function
## This function creates functions - get, set, setsolve & getsolve, accessible in the Universal environment (outside of the makeCachematrix function)
##set() - captures the matrix supplied to this function & stores it
##get() - returns the matrix supplied to this functions
##setsolve() = is a function that calls the solve function on the matrix supllied & stores it in a vector 's'
##getsolve() - returns the inverted matrix stored in vector 's'
##The function then return these functions as a list with 4 elements
##This function should be called with a assignment of results to a list vector say 'x.list'
##This is then follwed by a call to cacheSolve(x.list) - where 'x'x is the vector assignment from above

makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
      set <- function(y) {
            x <<- y
            s <<- NULL
		}
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function
## cacheSolve() - is to be called with arguments - (1) - list vector 'x.list' returned from makeCachematrix(to.be.inverted.matrix)
## cachesolve() first checks to see if there is an inverted matrix that is stored in cache already in vector's'
## if there is then it returns the cached matrix which is an inverse of the supplied matrix
## if there is no inverted matrix cached for the supplied list vector, then it calls setsolve() from the list to create the inveretd matrix & returns it 

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	solvedm <- x$getsolve()
	if(!is.null(solvedm)) {
         message("getting cached inverse marix")
         return(solvedm)
        	}
        data <- x$get()
        solvedm <- solve(data, ...)
        x$setsolve(solvedm)
        solvedm
}

makeCacheMatrix <- function(x = matrix()) {
	s <- NULL
<<<<<<< f00bb0fd271ae17ccf37942c74e8ee925fe393c6
=======
<<<<<<< HEAD
	input_matrix<-NULL
	input_matrix<<-x
=======
>>>>>>> origin/master
>>>>>>> Merge remote-tracking branch 'origin/master'
      set <- function(y) {
             x <<- y
             s <<- NULL
		}
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	s <- x$getsolve()
	if(!is.null(s)) {
         message("getting cached inverse marix")
         return(s)
        	}
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}

