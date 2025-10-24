# Simple Python/Flask container
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080
# Use gunicorn for production-like serving
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
