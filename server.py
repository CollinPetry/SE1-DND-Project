from flask import Flask, request
from flask_login import LoginManager
from flask_mysqldb import MySQL

import views
import os

# from database import Database
# from user import get_user
from database import Database
from user import get_user

lm = LoginManager()
mysql = MySQL()


@lm.user_loader
def load_user(user_id):
    return get_user(user_id)


def dbconnection():
    return mysql


def create_app():
    app = Flask(__name__)
    app.config.from_object("settings")

    app.add_url_rule("/", view_func=views.home_page)

    #  IF THE PAGE HAS NO INTERACTION AND IS JUST PRETTY TEXT
    #  use the app.add_url_rule and replace ??? with the page name that is related in the views.py
    #  app.add_url_rule("/???", view_func=views.???_page)

    #  IF THE PAGE HAS INTERACTION, YOU MUST MUST MUST include: methods=["GET", "POST"]
    #  use the app.add_url_rule and replace ??? with the page name that is related in the views.py
    #  app.add_url_rule(
    #      "/???", view_func=views.???_page, methods=["GET", "POST"]
    #  )

    app.add_url_rule(
        "/login", view_func=views.login_page, methods=["GET", "POST"]
    )


    app.add_url_rule(
        '/diceroller', view_func=views.diceroller, methods=["GET", "POST"]
    )

    # background process happening without any refreshing
    app.add_url_rule(
        '/process', view_func=views.process, methods=["GET", "POST"]
    )

    app.add_url_rule(
        '/character', view_func=views.characterpage, methods=["GET", "POST"]
    )

    app.add_url_rule(
        "/view_char/<username>", view_func=views.view_characters, methods=["GET", "POST"]
    )

    app.add_url_rule(
        "/view_campaigns/<username>", view_func=views.view_campaigns, methods=["GET", "POST"]
    )

    app.add_url_rule(
        "/character_builder", view_func=views.character_builder, methods=["GET", "POST"]
    )

    app.add_url_rule("/logout", view_func=views.logout_page)

    #  TEST URLS

    #app.add_url_rule(
    #    "/test", view_func=views.test_page, methods=["GET", "POST"]
    #)

    #app.add_url_rule(
    #    '/form', view_func=views.form, methods=["GET", "POST"]
    #)

    #app.add_url_rule(
    #    '/logintest', view_func=views.logintest, methods=['POST', 'GET']
    #)

    #  no clue what exactly this is doing, but it's doing something for the login function, so no touchy
    lm.init_app(app)
    lm.login_view = "login_page"

    # Creating database connection
    home_dir = os.path.expanduser("~")
    db = Database(os.path.join(home_dir, "dnddb.db"))
    app.config["db"] = db

    #  This makes it run. NO TOUCHY
    return app


if __name__ == "__main__":
    app = create_app()
    app.debug = True
    app.run()
