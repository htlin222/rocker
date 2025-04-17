FROM r-base:4.3.2

# Install pacman for package management
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.2.1/zsh-in-docker.sh)"
RUN R -e "install.packages('pacman', repos='https://cran.rstudio.com/')"
# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.R /app/requirements.R

# Install packages from requirements file
RUN Rscript /app/requirements.R

# Define volume mount point
VOLUME ["/app"]

# Start with bash shell
CMD ["/bin/zsh"]
