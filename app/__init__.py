from flask import Flask

from flask_sqlalchemy import SQLAlchemy


db = SQLAlchemy()


def create_app():
    main = Flask(__name__)

    main.config["SECRET_KEY"] = "secret-key-goes-here"
    main.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///db.sqlite"

    db.init_app(main)

    from .auth import auth as auth_blueprint

    main.register_blueprint(auth_blueprint)

    # non-auth
    from .main import main as main_blueprint

    main.register_blueprint(main_blueprint)

    return main
