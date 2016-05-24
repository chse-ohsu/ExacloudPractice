sink("reproIfeoma.txt")
.timeStart <- Sys.time()

path <- "/home/exacloud/lustre1/users/chanb"
f <- grep("episodes.*201[0-3]\\.txt", list.files(path), ignore.case=TRUE, value=TRUE)
f <- file.path(path, f)
file.info(f)[c("size", "mtime")]

library(data.table)
varnames <- names(fread(f[1], nrows=0))
names(varnames) <- 1:length(varnames)
select <- c(1, 2, 7, 13, 14, 15, 16, 17, 18, 20, 21, 23, 24, 26:29, 35, 36:48, 62:74, 75:79, 98)
colClasses <- rep("character", length(varnames))
colClasses[varnames %in% c("patid", "personkey", "yob", "megnum")] <- "integer"
names(colClasses) <- varnames
na.strings <- c("NA", "*N", "*NU", "*NUL", "*NULL", "*NULL*", "")

library("doParallel")
years <- length(f)
cl <- makeCluster(years)
registerDoParallel(cl, cores=years)
L <- foreach (i = 1:years) %dopar% {
    require(data.table)
    Di <- fread(f[i], select=select, colClasses=colClasses, na.strings=na.strings)
    Di <- Di[gender != "M" & between(yob, 1955 + (i - 1), 2000 + (i - 1))]
    Di <- Di[,
             `:=` (fromdate = as.Date(fromdate),
                   todate = as.Date(todate))]
    Di <- Di[, year := year(fromdate)]
    Di
}
stopCluster(cl)
D <- rbindlist(L)
D[, .(.N, minYOB = min(yob), maxYOB = max(yob)), .(year, gender)]

library(haven)
f <- file.path(path, "APAC_episodes_childbearingwomen.dta")
write_dta(D, f)
file.info(f)[c("size", "mtime")]
list(objectName = deparse(substitute(D)),
     timeStamp = sprintf("%s", Sys.time()),
     objectSize = format(object.size(D), units="auto"),
     rowCount = nrow(D),
     colCount = ncol(D),
     colNames = names(D),
     colClasses = sapply(D, class))

list(timeStart = ifelse(exists(".timeStart"), format(.timeStart), NA),
     timeEnd = Sys.time(),
     timeElapsed = ifelse(exists(".timeStart"),
                          format(Sys.time() - .timeStart, format=difftime),
                          NA),
     Sys.info = Sys.info(),
     sessionInfo = sessionInfo())

sink()
