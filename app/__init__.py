from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash

db = SQLAlchemy()

from . import models


def create_app():
    main = Flask(__name__)
    main.config[
        "SQLALCHEMY_DATABASE_URI"
    ] = "postgresql://hoteladmin:tgyuh980pj@127.0.0.1:5432/hotel"

    db.init_app(main)
    with main.app_context():
        db.create_all()

    from .auth import auth as auth_blueprint

    main.register_blueprint(auth_blueprint)

    # non-auth
    from .main import main as main_blueprint

    main.register_blueprint(main_blueprint)

    return main
