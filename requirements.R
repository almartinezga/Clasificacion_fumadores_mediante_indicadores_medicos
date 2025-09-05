# requirements.R
# Install required R packages for the project

# Set CRAN mirror
options(repos = c(CRAN = "https://cloud.r-project.org"))

# List of required packages
pkgs <- c(
  "dplyr",
  "e1071",
  "ggplot2",
  "ISLR",
  "caret",
  "randomForest",
  "AER",
  "readr",
  "rpart",
  "xgboost",
  "ROSE",
  "kknn",
  "data.table",
  "corrplot",
  "rpart.plot"
)

# Install only the ones that are missing
to_install <- setdiff(pkgs, rownames(installed.packages()))
if (length(to_install) > 0) {
  install.packages(to_install)
}

# Load all packages
invisible(lapply(pkgs, require, character.only = TRUE))

cat("✅ All required packages are installed and loaded.\n")