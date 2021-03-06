
# Load in necessary libraries and set working directory
library(devtools)
library(roxygen2)
setwd("/Users/davidflast/Documents/PS6")

# Creates a skeleton of a package to put files into
package.skeleton(name="primaryRace")

# Continously update to create man files
current.code <- as.package("primaryRace")
load_all(current.code)
document(current.code)

# test crateCandidate
y <- createCandidate(name="hillary", delegatesWon = 600, party="Democrat")
# test show
show(y)
# test print
print(y)
# test propNeed
propNeeded(y, 2000)
