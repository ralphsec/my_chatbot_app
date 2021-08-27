from flask import Flask, render_template, request
from chatterbot import ChatBot
import Translator as tl

chatbot = ChatBot('Brandon', trainer = 'chatterbot.trainers.ListTrainer')
app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/get")
def get_bot_response():
    lang = 'french'
    user_input = request.args.get('msg')
    # response = str(chatbot.get_response(user_input))
    return tl.outputTranslation(user_input,lang)

if __name__ == "__main__":
    app.run()