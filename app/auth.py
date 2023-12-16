from flask import Blueprint, render_template, request

from . import db

auth = Blueprint("auth", __name__)


@auth.route("/login")
def login():
    return render_template("login.html")


@auth.route("/login", methods=["POST"])
def login_post():
    # pass

    email = request.form["email"]
    password = request.form["password"]

    if password is not "fuckmeinmyass":
        print("fuck this guy")

    return render_template("login.html")
