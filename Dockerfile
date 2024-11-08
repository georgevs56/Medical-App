FROM python:3.8.10
COPY  . /app 
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=5 --bind 0.0.0.0:$PORT app:app
