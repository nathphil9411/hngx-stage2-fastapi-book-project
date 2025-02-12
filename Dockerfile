# Use official Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy files to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 8000

# Run the application on the cloud
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
