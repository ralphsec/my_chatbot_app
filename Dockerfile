FROM tiangolo/uwsgi-nginx-flask:python3.7

# copy over our requirements.txt file
COPY requirements.txt /tmp/

# setup ssl
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install openssl

# upgrade pip and install required python packages
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

RUN python3 -m spacy download en

#RUN mkdir -p /var/www

# copy over our app code
COPY ./app /app
COPY ./templates /app/templates

#CMD [ "python", "-m", "spacy", "download", "en" ]

# set an environmental variable, MESSAGE,
# which the app will use and display
#ENV MESSAGE "hello from Docker"

