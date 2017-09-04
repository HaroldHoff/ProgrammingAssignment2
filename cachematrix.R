## R programing week 3 Project2
## Caching the Inverse of a Matrix

## function designed to cache matrix object inversion

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
		}
		get<-function()x
		setinv<-function(inverse)inv<<-inverse
		getinv<-function()inv
		list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## function will retrive matrix inversion from makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv=x$getinv()
		if(!is.null(inv)){
		message("getting cached data")
		return(inv)
		}
		mat.dat=x$get()
		inv=solve(mat.data,...)
		x$setinv(inv)
		return(inv)
}
