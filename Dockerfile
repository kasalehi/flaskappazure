from python:3.8-slim
WORKDIR /app
copy . /app
run apt update -y
RUN apt-get update && pip install -r requirements.txt
cmd ["python", "app.py"]