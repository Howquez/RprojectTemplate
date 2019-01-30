# function that installes or loads packages that a specified in "packages" vector

libInstall <- function(packages){
        stopifnot(length(packages) > 0)
        newPackages <- packages[!(packages %in% 
                                          installed.packages()[, "Package"])]
        if(length(newPackages) > 0){
                install.packages(newPackages)
        }
        for(i in packages){
                require(i, character.only = TRUE)
        }
}
