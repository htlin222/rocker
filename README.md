![GitHub stars](https://img.shields.io/github/stars/htlin222/rocker?style=flat-square)
![Last commit](https://img.shields.io/github/last-commit/htlin222/rocker?style=flat-square)
![License](https://img.shields.io/github/license/htlin222/rocker?style=flat-square)

# Minimal R Docker Environment

A lightweight, portable Docker environment for R data analysis and visualization.

## Overview

This project provides a ready-to-use R environment in a Docker container, with:

- R 4.3.2
- Package management via pacman
- Pre-installed data science packages (dplyr, tidyr, readr, ggplot2)
- Automatic mounting of your working directory

## Project Structure

```
.
├── Dockerfile          # Docker configuration with R 4.3.2
├── README.md           # This documentation
├── output/             # Directory for generated files
├── requirements.R      # R package dependencies
└── run-docker.sh       # Helper script to build and run
```

## Getting Started

### Prerequisites

- Docker installed on your system

### Quick Start

1. Clone this repository:

   ```bash
   git clone  https://github.com/htlin222/rocker.git
   cd Rdocker
   ```

2. Build and run the container:

   ```bash
   ./run-docker.sh --build
   ```

3. For subsequent runs (without rebuilding):

   ```bash
   ./run-docker.sh
   ```

## Using the R Environment

Once inside the container, you'll be in a ZSH shell with access to:

- R 4.3.2 with all required packages
- Your current directory mounted at `/app`
- Output directory for saving results

Run R scripts directly:

```bash
Rscript your_script.R
```

Or start an interactive R session:

```bash
R
```

## Adding Packages

To add new R packages:

1. Edit `requirements.R` to add packages to the list
2. Rebuild the Docker image with `./run-docker.sh --build`

## Portability

This environment is designed to be portable across systems:

- Specific R version (4.3.2) ensures consistency
- pacman handles package dependencies
- Docker isolates the environment from the host system

Simply clone the repository to any computer with Docker installed and run the same commands.
