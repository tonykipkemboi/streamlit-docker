# Latest official Python runtime as a parent image
FROM python:3.12-slim

# Set environment variables
ENV PIP_NO_CACHE_DIR=true \
    PYTHONUNBUFFERED=1 \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# Install necessary system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the port Streamlit runs on
EXPOSE 8501

# Define the command to run Streamlit with the correct app name
CMD ["streamlit", "run", "streamlit_app.py"]
