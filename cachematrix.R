## These two following function are able to Caching the Inverse of a Matrix

## This function create a list contain a matrix and its inversed matrix. 
## The default value of inversed matrix is NULL

makeCacheMatrix <- function(x = matrix(),inverse=NULL) {
   inverse
   set<-function(y=x){
     Matrix<<-y
   }
   get<-function(){
     Matrix
   }
   setinverseM<-function(y=inverse){
     inverse<<-y
   }
   getinverseM<-function(){
     inverse
   }
   list(set=set(),get=get(),setinverseMatrix=setinverseM(),getinverseMatrix=getinverseM())
 }


## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been 
## calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  inverse<-x$getinverseMatrix
  if(!is.null(inverse))
  {
    message("getting cached data")
    return(inverse)
  }
  inverse<-solve(x$get)
  inverse      ## Return a matrix that is the inverse of 'x'
}
