FROM python:3.10-slim-buster
RUN mkdir /app
COPY ./app /app
WORKDIR /app
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
CMD [ "python3","manage.py","runserver","0.0.0.0:8000" ]
COPY . .
RUN pip3 install -r /requirements.txt
