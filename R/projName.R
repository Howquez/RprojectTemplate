# Get Project Name 

projFile <- str_detect(string = list.files(),
                       pattern = "Rproj")

projFile <- list.files()[projFile]

projName <- str_extract(string = projFile,
                        pattern = ".*(?=\\.Rproj)")
