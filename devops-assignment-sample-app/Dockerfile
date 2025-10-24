FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

# 👇 Key line: tell Gunicorn to run from the correct subfolder
CMD ["gunicorn", "--chdir", "devops-assignment-sample-app", "--bind", "0.0.0.0:8080", "app:app"]
