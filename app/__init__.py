from flask import Flask
from auth import auth as auth_blueprint

app = Flask(__name__)
app.register_blueprint(auth_blueprint)
db = SQL
