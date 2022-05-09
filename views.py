import random
from flask import abort, current_app, render_template, url_for, request, flash, session, jsonify, app
from flask_login import login_required, current_user, login_user, logout_user
from werkzeug.utils import redirect
from passlib.hash import pbkdf2_sha256 as hasher
from forms import LoginForm
from user import get_user
from server import mysql


#  For pages that need to be logged in to view, the line above the method def statement should read: @login_required

def home_page():
    return render_template("home.html")


def view_characters(username):
    db = current_app.config["db"]
    characters = db.get_user_characters(username)
    print()
    print("TESTING 1 2 3 . . . ")
    print(characters)
    return render_template("view_characters.html", characters=characters)
    #return render_template("view_characters.html")


def view_campaigns(username):
    return render_template("view_campaigns.html")


def diceroller():
    roll = 0
    d4 = request.form['d4']
    for i in range(0, int(d4)):
        roll = roll + random.randint(1, 4)

    d6 = request.form['d6']
    for i in range(0, int(d6)):
        roll = roll + random.randint(1, 6)

    d8 = request.form['d8']
    for i in range(0, int(d8)):
        roll = roll + random.randint(1, 8)

    d10 = request.form['d10']
    for i in range(0, int(d10)):
        roll = roll + random.randint(1, 10)

    d12 = request.form['d12']
    for i in range(0, int(d12)):
        roll = roll + random.randint(1, 12)

    d20 = request.form['d20']
    for i in range(0, int(d20)):
        roll = roll + random.randint(1, 20)

    d100 = request.form['d100']
    for i in range(0, int(d100)):
        roll = roll + random.randint(1, 100)

    # print("d4: " + d4 +
    #     "\n d6: " + d6 +
    #      "\n d8: " + d8 +
    #      "\n d10: " + d10 +
    #      "\n d12: " + d12 +
    #      "\n d20: " + d20
    #      )

    # mod = request.form['mods']
    # modifier = request.form['modifier']

    print("Roll: " + str(roll))
    return jsonify({'roll': roll})


def test_page():
    return render_template("test.html")


def characterpage():
    return render_template("character.html")


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
                next_page = request.args.get("next", url_for("view_characters", username = current_user.username))
                return redirect(next_page)
        flash("Invalid credentials.")
    return render_template("login.html", form=form)


def logout_page():
    logout_user()
    flash("You have logged out.")
    return redirect(url_for("home_page"))


# Test Method
# def form():
#    return render_template('form.html')


def process():
    user_question = request.form['question']
    print(user_question)
    return jsonify({'response': user_question})

# Test Method
# def logintest():
#    print("In the method")
#    if request.method == 'GET':
#        return "Login via the login Form"

#    if request.method == 'POST':
#        name = request.form['name']
#        age = request.form['age']
#        print("Here")
#        conn = mysql.connect()
#        cursor = conn.cursor()
#        cursor.execute(''' INSERT INTO info_table VALUES(%s,%s)''', (name, age))
#        cursor.execute("SELECT * from info_table")
#        data = cursor.fetchone()
#        print(data)
#        conn.commit()
#        cursor.close()

#        return f"Done!!"
