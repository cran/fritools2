### R code from vignette source 'Not_an_Introduction_to_fritools2.Rnw'

###################################################
### code chunk number 1: missings
###################################################
path <- system.file(package = "fritools2")
if (file.exists(file.path(path, "source")))
    path <- file.path(path, "source")
fmsa <- fritools2::find_missing_see_also
f <- capture.output(type = "message",
                    missing <- suppressWarnings(fmsa(path = path,
                                                     list_families = TRUE)))
print(f)
if (length(missing) > 1) {
    print(missing)
    stop("Functions without context.")
} else {
    print("All functions with context.")
}


