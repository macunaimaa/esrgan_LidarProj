FROM nvidia/cuda:11.8.0-base-ubuntu20.04

RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    libx11-6 \
 && rm -rf /var/lib/apt/lists/*

# Define volumes (adjust paths as needed)
#models should be downloaded from
#https://drive.google.com/drive/u/0/folders/17VYV_SoZZesU6mbxz2dMAIccSSlqLecY 
COPY /models .
COPY /images .

# Create working directory
RUN mkdir /app
WORKDIR /app
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    libx11-6 \
    python3-pip  # Install python3-pip \ 
    rm -rf /var/lib/apt/lists/*

# Install libgl1-mesa-glx
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
 && rm -rf /var/lib/apt/lists/*


# Install dependencies
RUN pip install torch opencv-python glob2

# Clone ESRGAN repository (replace with your actual main script)
RUN git clone https://github.com/xinntao/ESRGAN

# Set entrypoint (replace with your main script)
CMD [ "bash" ]
