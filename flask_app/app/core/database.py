from flask_sqlalchemy import SQLAlchemy
from app.core import team_member as tm

db = SQLAlchemy()

def init_app(app):
    """
    Initializes the database with the app
    """
    db.init_app(app)
    config(app)

    return app

    
def config(app):
    """
    Hooks configutation for the database
    """

    @app.teardown_appcontext
    def close_session(exception=None):
        """
        When the request finishes, close the session of the database
        """
        db.session.close()

    return app

def reset():
    """
    Resets the database
    """
    from app.core.payments import create_enums
    from app.core.collections import create_enums_collection
    from app.core import riders_and_horsewomen as rh
    from app.core.post import create_enums as create_posts_enums
    db.drop_all()
    # Create all the rideders and horsewomen enums
    rh.create_enums()
    # Creates the team member enums
    tm.create_enums()
    create_enums() # enum de payments
    create_enums_collection()
    create_posts_enums()
    db.create_all()
    print("Database reset complete.")

def reset_model(model):
    """
    Resets a specific model in the database
    """
    # Creates the team member enums
    tm.create_enums()
    model.__table__.drop(db.engine)
    model.__table__.create(db.engine)
    print(f"Model {model.__name__} reset complete.")
