1. Flask

```
   # in config.py file
   # install realationship
   # pip install PyMySQL
   # pip install psycopg2

   # pip install flask-sqlalchemy

   class Config(object):
        pass

   class DevConfig(Config):
        debug = True
        # SQLALCHEMY_DATABASE_URI = 'DATABASE_URL'
        SQLALCHEMY_DATABASE_URI = 'mysql://root:password@127.0.0.1:9000/db_name'
        SQLALCHEMY_ECHO = True

   class ProductConfig(Config):
        pass
```

```
    # in __init__.py
    from flask import Flask
    from flask_sqlalchemy import SQLAlchemy
    from config import DevConfig


    app = Flask(__name__)
    app.confgi.form_object(DevConfig)
    db = SQLAlchemy(app)

```

```
    create database model
    # in models.py

    class User(db.Model):
        id = db.Column(db.Integer(), primary_key=True)
        name = db.Column('name', db.String(255))
        active = db.Column('state', db.Boolean, default=False)

        def __init__(self, name):
            self.name = name


        def __repr__(self):
            return '<user {}>'.format(self.name)

```


```
    # in manage.py
    from app import app
    from app import db
    from models import User
    from flask_script import Manager, Server

    manage = Manager(app)

    manage.add_command('server', Server())

    def _make_content_text():
        return dict(app=app, db=db, user=User)
```


```
    database Column
    db.String
    db.Text
    db.Integer
    db.Float
    db.Boolean
    db.Date
    db.DateTime
    db.Time

    database CURD

    # add data
    from models import User
    user = User(name='tome', True)
    db.session.add(user)
    db.commit()

    # query data

    user = User.query.all()
    user = User.query.limit(10).all()

    user = User.query.order_by(User.name).all()
    user = User.query.order_by(User.name.desc()).all()

    user = User.query.first()
    user = User.query.get(1) # get a primary key data

    # condition query

    user = User.query.filter_by(name='jime').all()
    user = User.query.filter(name='tome').all()

    # operation function

    from sqlalchemy.sql.expression import not, or_, in_

    user = User.query.filter(User.name.in_(['fake_name']), User.active == True).first()

    user = User.query.filter(User.name.or_(['fake_name']), User.id >= 1).first()

    # update data

    user = User.query.filter(name='tome').update(active=False)
    db.session.commit()

    # delete data

    user = User.query.filter(name='tome')
    db.session.delete(user)
    db.session.commit()
```
