# my_chatbot_app
Flask ChatterBot using Azure Translation API

To run the Python code standalone
Start Anaconda, Create a py37 env.
Open TERMINAL…
conda install -c anaconda flask
conda activate <py37-env-name>

pip install spacy==2.1.8
  
python -m spacy download en

pip install nltk
pip install chatterbot

Put Index.html in templates folder
  
Python WebApp.py

To run within a Docker Container in NGINX
To build the docker app locally
  
FROM ANACONDA - switch to Py37 and Open a Terminal Window
pip install -r requirements.txt
docker build -t my_flask_app .

To run the docker app locally
Docker run -p 8100:80 -t my_flask_app .

Connect from web browser to 127.0.0.1:8100

To push the docker app to the repository
Docker login
Docker images
docker tag my_flask_app:latest ralphsec/my_flask_app:latest
docker push ralphsec/my_flask_app:latest
  
 
