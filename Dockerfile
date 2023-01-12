# FROM python:3.9-alpine
FROM ubuntu
WORKDIR /

COPY . .

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt install -y python3-pip 
RUN pip install --upgrade pip
RUN pip install wheel gunicorn
RUN pip install -r req.txt

ENV SECRET_KEY=s&8!7m34oce836%xuzsz@87^qu0gzbs&0-17=k4%c^&682*x!w
ENV DB_NAME=railway
ENV DB_USER=postgres
ENV DB_PASSWORD=DmIwQXaaBJa0uiYqMYan
ENV DB_HOST=containers-us-west-137.railway.app
ENV DB_PORT=6575
ENV DEBUG=1
ENV ALLOWED_HOSTS=127.0.0.1


# postgresql://postgres:DmIwQXaaBJa0uiYqMYan@containers-us-west-137.railway.app:6575/railway

CMD gunicorn --bind 0.0.0.0:8000 config.wsgi:application

