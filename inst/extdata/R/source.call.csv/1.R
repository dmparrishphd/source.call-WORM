function ( file ) {
    X <- read.csv (
        file = file ,
        row.names = 1 ,
        stringsAsFactors = FALSE )
    FUN <- source ( X [ "#!" , 1 ] ) [[ 1 ]]
    .ARGS <- X [ drop = FALSE , "#!" != rownames ( X ) , ]
    ARGS <- as.data.frame ( t ( .ARGS ) , stringsAsFactors = FALSE )
    do.call ( FUN , ARGS ) }

