# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update && \
    apt-get install -y sudo

RUN apt-get update && \
    apt-get install -y pkg-config && \
    apt-get install -y cmake && \
    apt-get install -y build-essential && \
    apt-get install -y poppler-utils && \
    apt-get install -y libpoppler-cpp-dev


# Install any needed dependencies specified in requirements.txt
RUN apt-get update && \
    apt-get install -y dos2unix && \
    dos2unix install_poppler.sh && \
    bash install_poppler.sh && \
    pip install -r requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Define environment variable
ENV NAME StreamlitApp

# Run app.py when the container launches
CMD ["streamlit", "run", "app.py"]
