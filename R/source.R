rm(list = ls())
# Config -----
# ** Packages -----
# specify needed packages below
packages <- c("rmarkdown",
              "knitr",
              "radix",
              "magrittr",
              "stringr",
              "lubridate")

# load and execute function to install packages
source("R/libInstall.R", echo = FALSE)
libInstall(packages)

# ** Source Scripts -----
source("R/CI.R",              echo = FALSE)
source("R/projName.R",        echo = FALSE)
source("R/helperFunctions.R", echo = FALSE)
source("R/data.R",            echo = FALSE)
source("R/visualization.R",   echo = FALSE)

# ** Knit report
reportName <- paste(Sys.Date(), projName, ".html",
                    sep = "")

if("radixReport.Rmd" %in% list.files("R")){
        if(!("radixReport" %in% list.files())){
                dir.create("radixReport", showWarnings = FALSE)
        }
        render(input       = "R/radixReport.Rmd",
               output_dir  = "radixReport",
               output_file = reportName
               )
}

browseURL(paste("radixReport", reportName, sep = "/"
                )
          )



