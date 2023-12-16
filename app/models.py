from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash

from flask_login import UserMixin
from . import db


class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(100), unique=True)
    password_hash = db.Column(db.String(64))

    def __init__(self, email, password_hash):
        self.email = email
        self.password_hash = password_hash

    def set_password(self, password):
        self.password_hash = generate_password_hash(password)

    def check_password(self, password):
        return check_password_hash(self.password_hash, password)


class RoomCategory(db.Model):
    __tablename__ = "room_categories"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    description = db.Column(db.Text)
    base_price = db.Column(db.Numeric(10, 2))


class Room(db.Model):
    __tablename__ = "rooms"

    id = db.Column(db.Integer, primary_key=True)
    category_id = db.Column(
        db.Integer, db.ForeignKey("room_categories.id"), nullable=False
    )
    number = db.Column(db.String(10), nullable=False)
    is_occupied = db.Column(db.Boolean, default=False)
    max_guests = db.Column(db.Integer)


class Client(db.Model):
    __tablename__ = "clients"

    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(100), nullable=False)
    last_name = db.Column(db.String(100), nullable=False)
    phone = db.Column(db.String(20))
    email = db.Column(db.String(255), unique=True)
    date_of_birth = db.Column(db.Date)
    gender = db.Column(db.String(10))


class Staff(db.Model):
    __tablename__ = "staff"

    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(100), nullable=False)
    last_name = db.Column(db.String(100), nullable=False)
    position = db.Column(db.String(255), nullable=False)
    phone = db.Column(db.String(20))


class Booking(db.Model):
    __tablename__ = "bookings"

    id = db.Column(db.Integer, primary_key=True)
    client_id = db.Column(db.Integer, db.ForeignKey("clients.id"), nullable=False)
    room_id = db.Column(db.Integer, db.ForeignKey("rooms.id"), nullable=False)
    staff_id = db.Column(db.Integer, db.ForeignKey("staff.id"), nullable=False)
    check_in_date = db.Column(db.Date, nullable=False)
    check_out_date = db.Column(db.Date, nullable=False)
    is_extended = db.Column(db.Boolean, default=False)
    total_price = db.Column(db.Numeric(10, 2))


class Service(db.Model):
    __tablename__ = "services"

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    description = db.Column(db.String(255))
    price = db.Column(db.Numeric(10, 2))


class ClientService(db.Model):
    __tablename__ = "client_services"

    client_id = db.Column(db.Integer, db.ForeignKey("clients.id"), primary_key=True)
    service_id = db.Column(db.Integer, db.ForeignKey("services.id"), primary_key=True)
    date_of_service = db.Column(db.Date, nullable=False)
    time_of_service = db.Column(db.Time, nullable=False)
    comment = db.Column(db.String(255))
