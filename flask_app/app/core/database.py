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
    seed_database()
    print("Database seeded.")

def reset_model(model):
    """
    Resets a specific model in the database
    """
    # Creates the team member enums
    tm.create_enums()
    model.__table__.drop(db.engine)
    model.__table__.create(db.engine)
    print(f"Model {model.__name__} reset complete.")

def seed_database():
    from app.core import database
    from app.core.models.users import User, Role
    from app.core.auth import create_user

    # Crear roles
    roles = [
        Role(id=1, name='Tecnica'),
        Role(id=2, name='Ecuestre'),
        Role(id=3, name='Voluntariado'),
        Role(id=4, name='Administracion')
    ]

    # Agregar roles a la sesión
    for role in roles:
        database.db.session.add(role)

    # Confirmar cambios en la base de datos para los roles
    database.db.session.commit()

    # Crear usuarios con cada rol
    users = [
        {
            'email': 'tecnica@example.com',
            'nickname': 'TecnicaUser',
            'password': 'password123',
            'role_id': 1
        },
        {
            'email': 'ecuestre@example.com',
            'nickname': 'EcuestreUser',
            'password': 'password123',
            'role_id': 2
        },
        {
            'email': 'voluntariado@example.com',
            'nickname': 'VoluntariadoUser',
            'password': 'password123',
            'role_id': 3
        },
        {
            'email': 'administracion@example.com',
            'nickname': 'AdministracionUser',
            'password': 'password123',
            'role_id': 4
        },
        {
            'email': 'systemadmin@example.com',
            'nickname': 'SystemAdmin',
            'password': 'adminpassword',
            'system_admin': True
        }
    ]

    # Crear usuarios utilizando la función create_user
    for user_data in users:
        create_user(**user_data)

    

    print("Seed completado exitosamente.")
