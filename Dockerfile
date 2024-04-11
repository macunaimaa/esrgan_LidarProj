#Create a dockerfil with access to CUDA and Cudnn
FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    libx11-6 \
 && rm -rf /var/lib/apt/lists/*

#make dockerfile app capable of accessing a folder called images on my computer
VOLUME /images
# Create a working directory
RUN mkdir /app
WORKDIR /app

RUN git clone https://github.com/xinntao/ESRGAN \ 
    Get model https://drive.google.com/drive/u/0/folders/17VYV_SoZZesU6mbxz2dMAIccSSlqLecY \
    pip install Pytorch CUDA \
    Install deps pip install opencv-python glob2

#run bash
CMD ["/bin/bash"]
