## Create an empty ExperimentList instance
ExperimentList()

## Create array matrix and AnnotatedDataFrame to create an ExpressionSet class
arraydat <- matrix(data = seq(101, length.out = 20), ncol = 4,
    dimnames = list(
        c("ENST00000294241", "ENST00000355076",
        "ENST00000383706","ENST00000234812", "ENST00000383323"),
        c("array1", "array2", "array3", "array4")
    ))

arraypdat <- as(data.frame(
    slope53 = rnorm(4),
    row.names = c("array1", "array2", "array3", "array4")),
    "AnnotatedDataFrame")

## ExpressionSet constructor
exprdat <- Biobase::ExpressionSet(assayData = arraydat, phenoData = arraypdat)

## Create a sample methylation dataset
methyldat <- matrix(data = seq(1, length.out = 25), ncol = 5,
    dimnames = list(
        c("ENST00000355076", "ENST00000383706",
          "ENST00000383323", "ENST00000234812", "ENST00000294241"),
        c("methyl1", "methyl2", "methyl3",
          "methyl4", "methyl5")
    ))

## Create a sample RNASeqGene dataset
rnadat <- matrix(
    data = sample(c(46851, 5, 19, 13, 2197, 507,
        84318, 126, 17, 21, 23979, 614), size = 20, replace = TRUE),
    ncol = 4,
    dimnames = list(
        c("XIST", "RPS4Y1", "KDM5D", "ENST00000383323", "ENST00000234812"),
        c("samparray1", "samparray2", "samparray3", "samparray4")
    ))

## Combine to a named list and call the ExperimentList constructor function
ExpList <- list(Affy = exprdat, Methyl450k = methyldat, RNASeqGene = rnadat)

## Use the ExperimentList constructor
myExperimentList <- ExperimentList(ExpList)
