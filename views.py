import random
from flask import abort, current_app, render_template, url_for, request, flash, session, jsonify
from flask_login import login_required, current_user, login_user, logout_user
from werkzeug.utils import redirect
from passlib.hash import pbkdf2_sha256 as hasher
from forms import LoginForm
from user import get_user


#  For pages that need to be logged in to view, the line above the method def statement should read: @login_required

def home_page():
    return render_template("home.html")

def view_characters():
    return render_template("view_characters.html")

def diceroller():
    roll = 0
    d4 = request.form['d4']
    for i in range(0, int(d4)):
        roll = roll + random.randint(1,4)

    d6 = request.form['d6']
    for i in range(0, int(d6)):
        roll = roll + random.randint(1,6)

    d8 = request.form['d8']
    for i in range(0, int(d8)):
        roll = roll + random.randint(1,8)

    d10 = request.form['d10']
    for i in range(0, int(d10)):
        roll = roll + random.randint(1,10)

    d12 = request.form['d12']
    for i in range(0, int(d12)):
        roll = roll + random.randint(1,12)

    d20 = request.form['d20']
    for i in range(0, int(d20)):
        roll = roll + random.randint(1,20)

    d100 = request.form['d100']
    for i in range(0, int(d100)):
        roll = roll + random.randint(1,100)

    print("d4: "+str(d4)+
          "\n d6: "+d6+
          "\n d8: "+d8+
          "\n d10: "+d10+
          "\n d12: "+d12+
          "\n d20: "+d20
          )
    print("Roll: "+str(roll))
    return jsonify({'roll' : roll})

def test_page():
    return render_template("test.html")

def process():
    user_question = request.form['question']
    print(user_question)
    return jsonify({'response' : user_question})

def login_page():
    form = LoginForm()
    if form.validate_on_submit():
        username = form.data["username"]
        user = get_user(username)
        if user is not None:
            password = form.data["password"]
            if hasher.verify(password, user.password):
                login_user(user)
                flash("You have logged in.")
                next_page = request.args.get("next", url_for("home_page"))
                return redirect(next_page)
        flash("Invalid credentials.")
    return render_template("login.html", form=form)


def logout_page():
    logout_user()
    flash("You have logged out.")
    return redirect(url_for("home_page"))