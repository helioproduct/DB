from flask import Blueprint, request, render_template
from flask_login import LoginManager


auth_blueprint = Blueprint("auth", __name__, template_folder="templates")

login_manager = LoginManager()
login_manager.init_app(auth_blueprint)


@auth_blueprint.route("/")
def index():
    return render_template("login.html")


@auth_blueprint.route("/login", methodss=["GET", "POST"])
def login():
    username = request.form["username"]
    pwd = request.form["password"]
    print(username, pwd)
