FROM python:3.9-slim

# Install system dependencies for Whisper
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY . .

# Create templates directory
RUN mkdir -p templates

EXPOSE 5000

CMD ["python", "app.py"]