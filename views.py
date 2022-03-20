from flask import abort, current_app, render_template, url_for, request, flash, session
from flask_login import login_required, current_user, login_user, logout_user
from werkzeug.utils import redirect
from passlib.hash import pbkdf2_sha256 as hasher
from forms import LoginForm
from user import get_user


def home_page():
    return render_template("home.html")


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