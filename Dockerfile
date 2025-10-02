# Use an older slim Python base for demonstration
FROM python:3.11-slim


WORKDIR /app


# Install build deps for some packages (kept minimal)
RUN apt-get update && apt-get install -y --no-install-recommends \
build-essential \
&& rm -rf /var/lib/apt/lists/*

# Copy requirements and install
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


# Copy app
COPY app.py ./


EXPOSE 8000
CMD ["python", "app.py"]