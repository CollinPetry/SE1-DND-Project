from flask import Flask, request
from flask_login import LoginManager

import views
import os


from database import Database
from user import get_user

lm = LoginManager()



@lm.user_loader
def load_user(user_id):
    return get_user(user_id)




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
        "/test", view_func=views.test_page, methods=["GET", "POST"]
    )

    # background process happening without any refreshing
    app.add_url_rule(
        '/process', view_func=views.process, methods=["GET", "POST"]
    )

    # background process happening without any refreshing
    app.add_url_rule(
        '/diceroller', view_func=views.diceroller, methods=["GET", "POST"]
    )

    app.add_url_rule(
        "/view_char", view_func=views.view_characters, methods=["GET", "POST"]
    )

    app.add_url_rule("/logout", view_func=views.logout_page)

    #  no clue what exactly this is doing, but it's doing something, so no touchy
    lm.init_app(app)
    lm.login_view = "login_page"

    #  This is declaring the database for use
    home_dir = os.path.expanduser("~")
    db = Database(os.path.join(home_dir, "dnd.db"))
    app.config["db"] = db

    #  This makes it run. NO TOUCHY
    return app


if __name__ == "__main__":
    app = create_app()
    app.debug = True
    app.run()
