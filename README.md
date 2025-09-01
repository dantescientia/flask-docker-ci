# Flask Docker CI Demo

## Run locally
python3 app.py

## Run in Docker
docker build -t flask-app .
docker run -p 5000:5000 flask-app
