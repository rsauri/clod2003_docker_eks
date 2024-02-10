# Use the official Python image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install Flask
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY . .

RUN pip install --no-cache-dir Flask

EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]