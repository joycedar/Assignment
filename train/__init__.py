import os
from flask_sqlalchemy import SQLAlchemy
from flask import Flask
from sqlalchemy import text


app = Flask(__name__)

#database config
app.config['SQLALCHEMY_DATABASE_URI']='mysql://root:Alittlesuger19@rm-bp1u570eyer5u59x1.mysql.rds.aliyuncs.com/train'

#instantilize db
db = SQLAlchemy(app)

@app.route('/')
def hello():
    return "hello"

@app.route('/test')
def test():
    sql = text("select * from `user`")
    result = db.engine.execute(sql)
    for row in result:
        print(row)
    return row
