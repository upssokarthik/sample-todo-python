# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY todoproject /app/

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
