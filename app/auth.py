from flask import Blueprint, request, jsonify, render_template

auth = Blueprint("auth", __name__)


@auth.route("/login", methods=["POST"])
def login():
    return jsonify({"message": "Succeess login", "authorized": True}), 200


@auth.route("/login-page", methods=["GET"])
def login_page():
    return render_template("/auth/login.html")


@auth.route("/check", methods=["GET"])
def check():
    # Эта заглушка всегда подтверждает аутентификацию
    return (
        jsonify({"message": "Пользователь аутентифицирован", "authorized": True}),
        200,
    )
