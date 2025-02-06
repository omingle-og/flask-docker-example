# Use an official lightweight Python image as base
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy only requirements first for caching benefits
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
