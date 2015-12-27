## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
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

