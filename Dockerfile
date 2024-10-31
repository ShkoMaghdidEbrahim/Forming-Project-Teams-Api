# Use a base image with Python and pip already installed
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install FastAPI and Uvicorn dependencies
RUN pip install --no-cache-dir fastapi uvicorn

# Run the application with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
