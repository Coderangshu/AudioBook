FROM python:3.7
LABEL maintainer="Angshuman Sengupta"
LABEL email="senguptaangshuman17@gmail.com"
LABEL version="1.0"

# # install build utilities
# RUN apt-get update && apt-get install -y gcc make apt-transport-https ca-certificates build-essential

# check our python environment
RUN python3 --version
RUN pip3 --version

# set the working directory for containers
RUN mkdir  ./AudioBook
WORKDIR  /AudioBook

# Installing python dependencies
COPY  requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy required file
COPY Sample.pdf .
COPY script.py .
# Run program
RUN python3 script.py