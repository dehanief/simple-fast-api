# Gunakan image dasar Python
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Salin requirements dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file
COPY . .

# Run aplikasi FastAPI
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]

