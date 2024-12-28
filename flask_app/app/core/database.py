from datetime import datetime
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
    from app.core.models.health_insurance import HealthInsurance
    from app.core.models.team_member import TeamMember
    from app.core.auth import create_user

    # Crear roles
    # roles = [
    #     Role(id=1, name='Tecnica'),
    #     Role(id=2, name='Ecuestre'),
    #     Role(id=3, name='Voluntariado'),
    #     Role(id=4, name='Administracion')
    # ]

    # # Agregar roles a la sesión
    # for role in roles:
    #     database.db.session.add(role)

    # # Confirmar cambios en la base de datos para los roles
    # database.db.session.commit()

    # # Crear usuarios con cada rol
    # users = [
    #     {
    #         'email': 'tecnica@example.com',
    #         'nickname': 'TecnicaUser',
    #         'password': 'password123',
    #         'role_id': 1
    #     },
    #     {
    #         'email': 'ecuestre@example.com',
    #         'nickname': 'EcuestreUser',
    #         'password': 'password123',
    #         'role_id': 2
    #     },
    #     {
    #         'email': 'voluntariado@example.com',
    #         'nickname': 'VoluntariadoUser',
    #         'password': 'password123',
    #         'role_id': 3
    #     },
    #     {
    #         'email': 'administracion@example.com',
    #         'nickname': 'AdministracionUser',
    #         'password': 'password123',
    #         'role_id': 4
    #     },
    #     {
    #         'email': 'systemadmin@example.com',
    #         'nickname': 'SystemAdmin',
    #         'password': 'adminpassword',
    #         'system_admin': True
    #     }
    # ]

    # # Crear usuarios utilizando la función create_user
    # for user_data in users:
    #     create_user(**user_data)

    # # Crear instancias de obras sociales
    # health_insurances = [
    #     HealthInsurance(name="OSDE"),
    #     HealthInsurance(name="Swiss Medical"),
    #     HealthInsurance(name="Galeno"),
    #     HealthInsurance(name="IOMA"),
    #     HealthInsurance(name="Medifé")
    # ]

    # # Agregar las obras sociales a la sesión
    # for insurance in health_insurances:
    #     database.db.session.add(insurance)

    # # Obtener las obras sociales desde la base de datos
    # osde = HealthInsurance.query.filter_by(name="OSDE").first()
    # ioma = HealthInsurance.query.filter_by(name="IOMA").first()

    # # Crear instancias de team members con cada tipo de enum
    # team_members = [
    #     TeamMember(
    #         name="Carlos",
    #         last_name="Pérez",
    #         dni="12345678",
    #         address="Calle Falsa 123",
    #         email="carlos.perez@example.com",
    #         locality="La Plata",
    #         phone="123456789",
    #         initial_date=datetime(2022, 5, 10),
    #         emergency_contact="Juan Pérez",
    #         emergency_phone="987654321",
    #         health_insurance_id=osde.id,
    #         associated_number="OS12345",
    #         condition="Personal pagado",
    #         job_position="Administrativo",
    #         profession="Psicologo"
    #     ),
    #     TeamMember(
    #         name="Ana",
    #         last_name="López",
    #         dni="87654321",
    #         address="Avenida Siempre Viva 456",
    #         email="ana.lopez@example.com",
    #         locality="La Plata",
    #         phone="987654321",
    #         initial_date=datetime(2021, 9, 15),
    #         emergency_contact="María López",
    #         emergency_phone="123456789",
    #         health_insurance_id=ioma.id,
    #         associated_number="IO98765",
    #         condition="Voluntario",
    #         job_position="Terapeuta",
    #         profession="Fisioterapeuta"
    #     ),
    #     TeamMember(
    #         name="Juan",
    #         last_name="García",
    #         dni="23456789",
    #         address="Calle Real 789",
    #         email="juan.garcia@example.com",
    #         locality="Buenos Aires",
    #         phone="234567890",
    #         initial_date=datetime(2020, 3, 20),
    #         emergency_contact="Pedro García",
    #         emergency_phone="876543210",
    #         health_insurance_id=osde.id,
    #         associated_number="OS23456",
    #         condition="Personal pagado",
    #         job_position="Manejador",
    #         profession="Veterinario"
    #     ),
    #     TeamMember(
    #         name="María",
    #         last_name="Martínez",
    #         dni="34567890",
    #         address="Avenida Central 101",
    #         email="maria.martinez@example.com",
    #         locality="Rosario",
    #         phone="345678901",
    #         initial_date=datetime(2019, 7, 25),
    #         emergency_contact="Laura Martínez",
    #         emergency_phone="765432109",
    #         health_insurance_id=ioma.id,
    #         associated_number="IO34567",
    #         condition="Voluntario",
    #         job_position="Asistente de pista",
    #         profession="Medico"
    #     ),
    #     TeamMember(
    #         name="Luis",
    #         last_name="Fernández",
    #         dni="45678901",
    #         address="Calle Nueva 202",
    #         email="luis.fernandez@example.com",
    #         locality="Córdoba",
    #         phone="456789012",
    #         initial_date=datetime(2018, 11, 30),
    #         emergency_contact="Ana Fernández",
    #         emergency_phone="654321098",
    #         health_insurance_id=osde.id,
    #         associated_number="OS45678",
    #         condition="Personal pagado",
    #         job_position="Herrero",
    #         profession="Medico"
    #     ),
    #     TeamMember(
    #         name="Laura",
    #         last_name="Gómez",
    #         dni="56789012",
    #         address="Avenida Libertad 303",
    #         email="laura.gomez@example.com",
    #         locality="Mendoza",
    #         phone="567890123",
    #         initial_date=datetime(2017, 2, 14),
    #         emergency_contact="Carlos Gómez",
    #         emergency_phone="543210987",
    #         health_insurance_id=ioma.id,
    #         associated_number="IO56789",
    #         condition="Voluntario",
    #         job_position="Veterinario",
    #         profession="Psicologo"
    #     ),
    #     TeamMember(
    #         name="Pedro",
    #         last_name="López",
    #         dni="67890123",
    #         address="Calle Principal 404",
    #         email="pedro.lopez@example.com",
    #         locality="Salta",
    #         phone="678901234",
    #         initial_date=datetime(2016, 6, 18),
    #         emergency_contact="María López",
    #         emergency_phone="432109876",
    #         health_insurance_id=osde.id,
    #         associated_number="OS67890",
    #         condition="Personal pagado",
    #         job_position="Manejador",
    #         profession="Psicologo"
    #     ),
    #     TeamMember(
    #         name="Sofía",
    #         last_name="Rodríguez",
    #         dni="78901234",
    #         address="Avenida del Sol 505",
    #         email="sofia.rodriguez@example.com",
    #         locality="San Juan",
    #         phone="789012345",
    #         initial_date=datetime(2015, 10, 22),
    #         emergency_contact="Juan Rodríguez",
    #         emergency_phone="321098765",
    #         health_insurance_id=ioma.id,
    #         associated_number="IO78901",
    #         condition="Voluntario",
    #         job_position="Asistente de mantenimiento",
    #         profession="Otro"
    #     )
    # ]

    # # Agregar los team members a la sesión
    # for member in team_members:
    #     database.db.session.add(member)

    # # Confirmar que las obras sociales se hayan guardado
    # database.db.session.commit()

    print("Seed completado exitosamente.")
