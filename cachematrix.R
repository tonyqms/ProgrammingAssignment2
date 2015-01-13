## inverse the matrix and save in cache

## generate a list to get data and inverse the matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y     ## getting data
                m<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve  ## using solve function to inverse the matrix
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}
## test the cached data
cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){   ## check if the data is cached
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)  ## inversing the new matrix
        x$setmatrix(m)
        m
}
