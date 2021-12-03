import json
import os
from flask import Flask, render_template, url_for, request, session, redirect, jsonify
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import desc
from werkzeug.security import generate_password_hash, check_password_hash
import json
from datetime import datetime
import MySQLdb
import random
import os


with open('config.json', 'r') as c:
    params = json.load(c)["params"]

app = Flask(__name__)
app.secret_key = os.urandom(24)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

SESSION_COOKIE_SECURE=True
SESSION_COOKIE_NAME='mbaforum-website'

if (params["local_server"]):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']
    
#database
db = SQLAlchemy(app)

class Registration(db.Model):
    sno = db.Column(db.Integer, primary_key = True)
    username = db.Column(db.String(25), unique = True, nullable = False)
    email = db.Column(db.String(40), nullable = False)
    password = db.Column(db.String(200), nullable = False)
    date = db.Column(db.String(12))


class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key = True)
    username = db.Column(db.String(25), unique = True, nullable = False)
    content = db.Column(db.String(300), nullable = False)
    date = db.Column(db.String(12))

#routes
#users
@app.route('/', methods = ['GET', 'POST'])
def home():
    posts = Posts.query.filter_by().order_by(desc(Posts.date))
    if 'user' in session:
        if request.method == 'POST': #reading
            #username = request.form.get('username')
            username = session.get('user')
            content = request.form.get('content')
            entry = Posts(username=username, content=content, date=datetime.now())
            db.session.add(entry) #adding the record
            db.session.commit() # saves the changes
            return redirect ('/')
        return render_template('index.html', params=params, posts=posts)

    return render_template('logoutindex.html', params=params, posts=posts)

#for deleting the tweet
@app.route('/registration', methods = ['GET', 'POST','DELETE'])
def registration():
    if request.method == 'POST':
        username = request.form.get('username')
        email = request.form.get('email')
        password =  generate_password_hash(request.form.get('password'))

        enter = Registration(username=username, email=email, password=password, date=datetime.now())
        db.session.add(enter) #adding the record
        db.session.commit() # saves the changes
        return redirect ('/registration')

    return render_template('register.html', params=params)

def delTweet():
    try:
        tweet = Posts.query.get()
        db.session.delete(tweet)
        db.session.commit()
        return True
    except Exception as e:
        return ({"error": e})
        print(e)
        return False

@app.route("/api/deletetweet", methods=["DELETE"])
def delete_tweet():
    try:
        tid = request.json["tid"]
        delTweet(tid)
        return jsonify({"success": "true"})
    except:
        return jsonify({"error": "Invalid form"})


@app.route('/login',methods = ['GET', 'POST'])
def login():
    if request.method == 'POST':
        username_log = request.form.get('username')
        password_log = request.form.get('password')
        database_query = Registration.query.filter_by(username=username_log).first()
        password_db = database_query.password
        username_db = database_query.username
        check_pass = check_password_hash(password_db, password_log)

        if (username_db == username_log and check_pass):
            session['user'] = username_db
            return redirect('/')
        else:
            return redirect('/registration')
    return render_template('login.html', params=params)


@app.route('/logout')
def logout():
    session.pop('user')
    return redirect('/')


if __name__ == '__main__':
    app.run(debug=True)