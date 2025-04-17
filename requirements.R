# List of required packages
packages <- c(
  "dplyr",
  "tidyr",
  "readr",
  "ggplot2"
)

# Install packages using pacman
if (!require("pacman", quietly = TRUE)) {
  install.packages("pacman", repos = "https://cran.rstudio.com/")
}
pacman::p_load(char = packages)

# Print installed packages
cat("Installed packages:\n")
installed <- pacman::p_loaded()
cat(paste(installed, collapse = ", "), "\n")
