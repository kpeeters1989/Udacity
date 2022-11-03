FROM python:3.8
# set a key-value label for the Docker image
LABEL maintainer="Koen Martens"
COPY . /app
WORKDIR /app
EXPOSE 3111
RUN python init_db.py
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]
