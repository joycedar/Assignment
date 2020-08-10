import os
from flask_sqlalchemy import SQLAlchemy
from flask import Flask

app = Flask(__name__)

#database config
app.config['SQLALCHEMY_DATABASE_URI']='mysql://username:password@server/db'


#instantilize db
db = SQLAlchemy(app)

@app.route('/')
def hello():
    return "hello"

