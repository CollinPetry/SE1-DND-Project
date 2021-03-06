import random
from flask import abort, current_app, render_template, url_for, request, flash, session, jsonify, app
from flask_login import login_required, current_user, login_user, logout_user
from werkzeug.utils import redirect
from passlib.hash import pbkdf2_sha256 as hasher

from character import Character
from forms import LoginForm
from skill_prof import Skill_Prof
from user import get_user
from server import mysql

import form as f

#  For pages that need to be logged in to view, the line above the method def statement should read: @login_required

def home_page():
    return render_template("home.html")

def view_characters(username):
    db = current_app.config["db"]
    characters = db.get_user_characters(username)
    return render_template("view_characters.html", characters=characters)
    #return render_template("view_characters.html")


def view_campaigns(username):
    return render_template("view_campaigns.html")

def characterpage(char_name):
    db = current_app.config["db"]
    print(char_name)
    character = db.get_character(char_name)
    print(character)
    skills = db.get_stats(char_name)
    traits = db.get_traits(char_name)
    return render_template("character.html", character=character, skills=skills, traits=traits)

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


def process():
    user_question = request.form['question']
    print(user_question)
    return jsonify({'response': user_question})


def character_builder(username):
    db = current_app.config["db"]
    raceForm = f.RaceForm()
    raceForm.subrace.choices =[(subrace.pk_subrace, subrace.subrace_name) for subrace in db.get_subraces(1)]
    # four equipment choices for almost all classes
    # raceForm.equipment1.choices = [(item.item_id, item.item_name) for item in db.get_equipment1_choices()]
    #classForm = f.ClassForm()
   # classForm.path.choices = [(path.path_id, path.subrace_name) for path in db.get_path(1)]
   # classForm.path_desc = [(path.path_description) for path in db.get_path(1)]


    if request.method == "POST":
        name = request.form['name']
        level = 1
        XP = 0
        race_id = request.form['race']
        pk_subrace = request.form['subrace']
        class_id = request.form['classes']
        background_id = request.form['background']
        alignment_id = request.form['alignment']

        str = request.form['str']
        dex = request.form['dex']
        con = request.form['con']
        int = request.form['int']
        wis = request.form['wis']
        cha = request.form['cha']

        character = Character(0, name, XP, level, race_id, 0, pk_subrace, 0, class_id, 0, 0, 0, background_id, 0, alignment_id, 0, 0, str, dex, con, wis, int, cha, 0, 0)
        db.new_character(character, username)
        #tie armor and weapons into dynamic dropdowns?

        characters = db.get_user_characters(username)
        return render_template("view_characters.html", characters=characters)


    return render_template("characterbuilder.html", raceForm=raceForm)

def subrace(race_id):
    db = current_app.config["db"]
    subraces = db.get_subraces(race_id)

    subraceArray = []

    for subrace in subraces:
        subraceObj = {}
        subraceObj['pk_subrace'] = subrace.pk_subrace
        subraceObj['subrace_name'] = subrace.subrace_name
        subraceObj['subrace_description'] = subrace.subrace_description
        subraceArray.append(subraceObj)

    race_desc = db.get_race_desc(race_id)
    race_descOBJ = {}
    race_descOBJ['race_desc'] = race_desc

    return jsonify({'subraces': subraceArray})

def paths(class_id):
    db = current_app.config["db"]
    paths = db.get_path(class_id)

    pathArray = []

    for path in paths:
        pathObj = {}
        pathObj['path_id'] = path.path_id
        pathObj['path_name'] = path.path_name
        pathArray.append(pathObj)


    return jsonify({'paths': pathArray})