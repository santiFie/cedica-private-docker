--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: condition_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.condition_enum AS ENUM (
    'Regular',
    'De baja'
);


ALTER TYPE public.condition_enum OWNER TO grupo43;

--
-- Name: conditionenum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.conditionenum AS ENUM (
    'Voluntario',
    'Personal pagado'
);


ALTER TYPE public.conditionenum OWNER TO grupo43;

--
-- Name: days_of_week_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.days_of_week_enum AS ENUM (
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo'
);


ALTER TYPE public.days_of_week_enum OWNER TO grupo43;

--
-- Name: disability_certificate_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.disability_certificate_enum AS ENUM (
    'ECNE',
    'Lesión post-traumática',
    'Mielomeningocele',
    'Esclerosis Múltiple',
    'Escoliosis Leve',
    'Secuelas de ACV',
    'Discapacidad Intelectual',
    'Trastorno del Espectro Autista',
    'Trastorno del Aprendizaje',
    'Trastorno por Déficit de Atención/Hiperactividad',
    'Trastorno de la Comunicación',
    'Trastorno de Ansiedad',
    'Síndrome de Down',
    'Retraso Madurativo',
    'Psicosis',
    'Trastorno de Conducta',
    'Trastornos del ánimo y afectivos',
    'Trastorno Alimentario',
    'OTRO'
);


ALTER TYPE public.disability_certificate_enum OWNER TO grupo43;

--
-- Name: disability_type_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.disability_type_enum AS ENUM (
    'Mental',
    'Motora',
    'Sensorial',
    'Visceral'
);


ALTER TYPE public.disability_type_enum OWNER TO grupo43;

--
-- Name: education_level_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.education_level_enum AS ENUM (
    'Primario',
    'Secundario',
    'Terciario',
    'Universitario'
);


ALTER TYPE public.education_level_enum OWNER TO grupo43;

--
-- Name: family_allowance_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.family_allowance_enum AS ENUM (
    'Asignación Universal por hijo',
    'Asignación Universal por hijo con Discapacidad',
    'Asignación por ayuda escolar anual'
);


ALTER TYPE public.family_allowance_enum OWNER TO grupo43;

--
-- Name: files_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.files_enum AS ENUM (
    'Entrevista',
    'Evaluación',
    'Planificaciones',
    'Evolución',
    'Crónicas',
    'Documental'
);


ALTER TYPE public.files_enum OWNER TO grupo43;

--
-- Name: jobenum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.jobenum AS ENUM (
    'Administrativo',
    'Terapeuta',
    'Manejador',
    'Asistente de pista',
    'Herrero',
    'Veterinario',
    'Entrenador de caballos',
    'Domador de caballos',
    'Profesor de equitacion',
    'Profesor de entrenamiento',
    'Asistente de mantenimiento',
    'Otro'
);


ALTER TYPE public.jobenum OWNER TO grupo43;

--
-- Name: payment_method_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.payment_method_enum AS ENUM (
    'Efectivo',
    'Tarjeta de credito',
    'Tarjeta de debito',
    'Transferencia'
);


ALTER TYPE public.payment_method_enum OWNER TO grupo43;

--
-- Name: payment_type_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.payment_type_enum AS ENUM (
    'Honorarios',
    'Proveedor',
    'Gastos varios'
);


ALTER TYPE public.payment_type_enum OWNER TO grupo43;

--
-- Name: pension_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.pension_enum AS ENUM (
    'Provincial',
    'Nacional'
);


ALTER TYPE public.pension_enum OWNER TO grupo43;

--
-- Name: professionenum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.professionenum AS ENUM (
    'Psicologo',
    'Psicomotricista',
    'Medico',
    'Fisioterapeuta',
    'Terapeuta ocupacional',
    'Psicologoeducativo',
    'Maestro',
    'Profesor',
    'Fonoaudiologo',
    'Veterinario',
    'Otro'
);


ALTER TYPE public.professionenum OWNER TO grupo43;

--
-- Name: proposal_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.proposal_enum AS ENUM (
    'Hipoterapia',
    'Monta Terapeutica',
    'Deporte Ecuestre Adaptado',
    'Actividades Recreativas',
    'Equitacion'
);


ALTER TYPE public.proposal_enum OWNER TO grupo43;

--
-- Name: seat_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.seat_enum AS ENUM (
    'CASJ',
    'HLP',
    'OTRO'
);


ALTER TYPE public.seat_enum OWNER TO grupo43;

--
-- Name: states_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.states_enum AS ENUM (
    'Borrador',
    'Publicado',
    'Archivado'
);


ALTER TYPE public.states_enum OWNER TO grupo43;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: caring_professionals; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.caring_professionals (
    rider_horsewoman_id bigint NOT NULL,
    team_member_id bigint NOT NULL
);


ALTER TABLE public.caring_professionals OWNER TO grupo43;

--
-- Name: collections; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.collections (
    id integer NOT NULL,
    rider_dni character varying(100),
    payment_date timestamp without time zone NOT NULL,
    payment_method public.payment_method_enum NOT NULL,
    amount double precision NOT NULL,
    observations character varying(120),
    team_member_id character varying(100)
);


ALTER TABLE public.collections OWNER TO grupo43;

--
-- Name: collections_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.collections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.collections_id_seq OWNER TO grupo43;

--
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;


--
-- Name: contact; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.contact (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    message text NOT NULL,
    state character varying(50) NOT NULL,
    comment character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.contact OWNER TO grupo43;

--
-- Name: contact_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contact_id_seq OWNER TO grupo43;

--
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;


--
-- Name: equestrian_team_members; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.equestrian_team_members (
    equestrian_id integer NOT NULL,
    team_member_id integer NOT NULL
);


ALTER TABLE public.equestrian_team_members OWNER TO grupo43;

--
-- Name: equestrians; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.equestrians (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    date_of_birth timestamp without time zone NOT NULL,
    sex character varying(1) NOT NULL,
    race character varying(100) NOT NULL,
    coat character varying(100) NOT NULL,
    bought boolean NOT NULL,
    date_of_entry timestamp without time zone NOT NULL,
    headquarters character varying(100) NOT NULL,
    inserted_at timestamp without time zone,
    proposals public.proposal_enum[],
    evolution_report character varying(100),
    veterinary_record character varying(100),
    training_plan character varying(100),
    images character varying(100),
    horse_sheet character varying(100)
);


ALTER TABLE public.equestrians OWNER TO grupo43;

--
-- Name: equestrians_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.equestrians_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equestrians_id_seq OWNER TO grupo43;

--
-- Name: equestrians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.equestrians_id_seq OWNED BY public.equestrians.id;


--
-- Name: health_insurances; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.health_insurances (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.health_insurances OWNER TO grupo43;

--
-- Name: health_insurances_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.health_insurances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.health_insurances_id_seq OWNER TO grupo43;

--
-- Name: health_insurances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.health_insurances_id_seq OWNED BY public.health_insurances.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    beneficiary_id character varying(120),
    amount double precision NOT NULL,
    payment_date timestamp without time zone NOT NULL,
    payment_type public.payment_type_enum NOT NULL,
    description character varying(200)
);


ALTER TABLE public.payments OWNER TO grupo43;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO grupo43;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.permissions OWNER TO grupo43;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permissions_id_seq OWNER TO grupo43;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: post; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    author character varying(255) NOT NULL,
    summary character varying(255) NOT NULL,
    state public.states_enum NOT NULL,
    posted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.post OWNER TO grupo43;

--
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_id_seq OWNER TO grupo43;

--
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;


--
-- Name: riders_and_horsewomen; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.riders_and_horsewomen (
    id integer NOT NULL,
    dni character varying(8) NOT NULL,
    name character varying(120) NOT NULL,
    last_name character varying(120) NOT NULL,
    age integer NOT NULL,
    date_of_birth date NOT NULL,
    place_of_birth character varying(120) NOT NULL,
    address character varying(120) NOT NULL,
    phone character varying(13) NOT NULL,
    emergency_contact character varying(120) NOT NULL,
    emergency_phone character varying(13) NOT NULL,
    scholarship_percentage character varying(3),
    observations character varying(120),
    disability_certificate public.disability_certificate_enum,
    others character varying(120),
    disability_type public.disability_type_enum,
    family_allowance public.family_allowance_enum,
    pension public.pension_enum,
    name_institution character varying(120) NOT NULL,
    address_institution character varying(120) NOT NULL,
    phone_institution character varying(13) NOT NULL,
    current_grade character varying(120) NOT NULL,
    observations_institution character varying(120),
    health_insurance_id integer NOT NULL,
    membership_number bigint NOT NULL,
    curatela boolean,
    pension_situation_observations character varying(120),
    debtor boolean,
    inserted_at timestamp without time zone
);


ALTER TABLE public.riders_and_horsewomen OWNER TO grupo43;

--
-- Name: riders_and_horsewomen_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.riders_and_horsewomen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riders_and_horsewomen_id_seq OWNER TO grupo43;

--
-- Name: riders_and_horsewomen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.riders_and_horsewomen_id_seq OWNED BY public.riders_and_horsewomen.id;


--
-- Name: riders_files; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.riders_files (
    id integer NOT NULL,
    filename character varying(120) NOT NULL,
    is_link boolean,
    file_type public.files_enum NOT NULL,
    rider_id bigint NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.riders_files OWNER TO grupo43;

--
-- Name: riders_files_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.riders_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riders_files_id_seq OWNER TO grupo43;

--
-- Name: riders_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.riders_files_id_seq OWNED BY public.riders_files.id;


--
-- Name: role_permissions; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.role_permissions (
    role_id bigint NOT NULL,
    permission_id bigint NOT NULL
);


ALTER TABLE public.role_permissions OWNER TO grupo43;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.roles OWNER TO grupo43;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO grupo43;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: team_members; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.team_members (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    last_name character varying(120) NOT NULL,
    dni character varying(8),
    address character varying(120) NOT NULL,
    email character varying(120) NOT NULL,
    locality character varying(120) NOT NULL,
    phone character varying(120) NOT NULL,
    initial_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone,
    emergency_contact character varying(120) NOT NULL,
    emergency_phone character varying(120) NOT NULL,
    active boolean NOT NULL,
    inserted_at timestamp without time zone,
    health_insurance_id integer NOT NULL,
    associated_number character varying(120) NOT NULL,
    title character varying(100),
    dni_copy character varying(100),
    cv character varying(100),
    condition public.conditionenum NOT NULL,
    job_position public.jobenum NOT NULL,
    profession public.professionenum NOT NULL
);


ALTER TABLE public.team_members OWNER TO grupo43;

--
-- Name: team_members_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.team_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.team_members_id_seq OWNER TO grupo43;

--
-- Name: team_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.team_members_id_seq OWNED BY public.team_members.id;


--
-- Name: tutors; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.tutors (
    id integer NOT NULL,
    dni character varying(8) NOT NULL,
    relationship character varying(120) NOT NULL,
    name character varying(120) NOT NULL,
    last_name character varying(120) NOT NULL,
    address character varying(120) NOT NULL,
    phone character varying(13) NOT NULL,
    email character varying(120) NOT NULL,
    education_level public.education_level_enum NOT NULL,
    occupation character varying(120) NOT NULL,
    rider_and_horsewoman_id bigint NOT NULL
);


ALTER TABLE public.tutors OWNER TO grupo43;

--
-- Name: tutors_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.tutors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tutors_id_seq OWNER TO grupo43;

--
-- Name: tutors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.tutors_id_seq OWNED BY public.tutors.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.users (
    email character varying(120) NOT NULL,
    nickname character varying(120) NOT NULL,
    password character varying(120) NOT NULL,
    active boolean,
    system_admin boolean,
    role_id bigint,
    inserted_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO grupo43;

--
-- Name: work_in_institutions; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.work_in_institutions (
    id integer NOT NULL,
    proposal public.proposal_enum NOT NULL,
    condition public.condition_enum NOT NULL,
    seat public.seat_enum NOT NULL,
    therapist bigint NOT NULL,
    rider_id bigint NOT NULL,
    rider_horsewoman_id bigint NOT NULL,
    horse bigint NOT NULL,
    track_assistant bigint NOT NULL,
    days public.days_of_week_enum[] NOT NULL
);


ALTER TABLE public.work_in_institutions OWNER TO grupo43;

--
-- Name: work_in_institutions_id_seq; Type: SEQUENCE; Schema: public; Owner: grupo43
--

CREATE SEQUENCE public.work_in_institutions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.work_in_institutions_id_seq OWNER TO grupo43;

--
-- Name: work_in_institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.work_in_institutions_id_seq OWNED BY public.work_in_institutions.id;


--
-- Name: collections id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);


--
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);


--
-- Name: equestrians id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrians ALTER COLUMN id SET DEFAULT nextval('public.equestrians_id_seq'::regclass);


--
-- Name: health_insurances id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.health_insurances ALTER COLUMN id SET DEFAULT nextval('public.health_insurances_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: post id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);


--
-- Name: riders_and_horsewomen id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen ALTER COLUMN id SET DEFAULT nextval('public.riders_and_horsewomen_id_seq'::regclass);


--
-- Name: riders_files id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_files ALTER COLUMN id SET DEFAULT nextval('public.riders_files_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: team_members id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members ALTER COLUMN id SET DEFAULT nextval('public.team_members_id_seq'::regclass);


--
-- Name: tutors id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.tutors ALTER COLUMN id SET DEFAULT nextval('public.tutors_id_seq'::regclass);


--
-- Name: work_in_institutions id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions ALTER COLUMN id SET DEFAULT nextval('public.work_in_institutions_id_seq'::regclass);


--
-- Data for Name: caring_professionals; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.caring_professionals (rider_horsewoman_id, team_member_id) FROM stdin;
1	6
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.collections (id, rider_dni, payment_date, payment_method, amount, observations, team_member_id) FROM stdin;
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.contact (id, name, last_name, email, message, state, comment, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: equestrian_team_members; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.equestrian_team_members (equestrian_id, team_member_id) FROM stdin;
1	7
\.


--
-- Data for Name: equestrians; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.equestrians (id, name, date_of_birth, sex, race, coat, bought, date_of_entry, headquarters, inserted_at, proposals, evolution_report, veterinary_record, training_plan, images, horse_sheet) FROM stdin;
1	Calamuchita	2000-02-10 00:00:00	M	caballo 	suave	t	2020-02-10 00:00:00	Chascoumus	2024-12-27 16:13:23.388658	{Hipoterapia}	Informe de Evolución.webp	Registro de Veterinario.jpeg	Ficha de Caballo.jpeg	Plan de entrenamiento.png	Carga de Img.jpeg
\.


--
-- Data for Name: health_insurances; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.health_insurances (id, name) FROM stdin;
1	OSDE
2	Swiss Medical
3	Galeno
4	IOMA
5	Medifé
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.payments (id, beneficiary_id, amount, payment_date, payment_type, description) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.permissions (id, name) FROM stdin;
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.post (id, title, content, author, summary, state, posted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: riders_and_horsewomen; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.riders_and_horsewomen (id, dni, name, last_name, age, date_of_birth, place_of_birth, address, phone, emergency_contact, emergency_phone, scholarship_percentage, observations, disability_certificate, others, disability_type, family_allowance, pension, name_institution, address_institution, phone_institution, current_grade, observations_institution, health_insurance_id, membership_number, curatela, pension_situation_observations, debtor, inserted_at) FROM stdin;
1	12345678	santiago	Fierro	21	2000-12-12	La aplta	522 22	22144222	22142222	2219876543	\N	\N	\N	\N	\N	\N	\N	Cáritas	522 e 8 y 9	2122222222	2	Una observación	1	2122122122	f		t	2024-12-27 16:13:23.378647
\.


--
-- Data for Name: riders_files; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.riders_files (id, filename, is_link, file_type, rider_id, created_at) FROM stdin;
1	Un Plan de Entrenamiento	f	Evaluación	1	2024-12-27 16:13:23.381621
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.role_permissions (role_id, permission_id) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.roles (id, name) FROM stdin;
1	Tecnica
2	Ecuestre
3	Voluntariado
4	Administracion
\.


--
-- Data for Name: team_members; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.team_members (id, name, last_name, dni, address, email, locality, phone, initial_date, end_date, emergency_contact, emergency_phone, active, inserted_at, health_insurance_id, associated_number, title, dni_copy, cv, condition, job_position, profession) FROM stdin;
1	Carlos	Pérez	12345678	Calle Falsa 123	carlos.perez@example.com	La Plata	123456789	2022-05-10 00:00:00	\N	Juan Pérez	987654321	t	2024-12-27 16:13:20.216335	1	OS12345	\N	\N	\N	Personal pagado	Administrativo	Psicologo
2	Ana	López	87654321	Avenida Siempre Viva 456	ana.lopez@example.com	La Plata	987654321	2021-09-15 00:00:00	\N	María López	123456789	t	2024-12-27 16:13:20.216335	4	IO98765	\N	\N	\N	Voluntario	Terapeuta	Fisioterapeuta
3	Juan	García	23456789	Calle Real 789	juan.garcia@example.com	Buenos Aires	234567890	2020-03-20 00:00:00	\N	Pedro García	876543210	t	2024-12-27 16:13:20.216335	1	OS23456	\N	\N	\N	Personal pagado	Manejador	Veterinario
4	María	Martínez	34567890	Avenida Central 101	maria.martinez@example.com	Rosario	345678901	2019-07-25 00:00:00	\N	Laura Martínez	765432109	t	2024-12-27 16:13:20.216335	4	IO34567	\N	\N	\N	Voluntario	Asistente de pista	Medico
5	Luis	Fernández	45678901	Calle Nueva 202	luis.fernandez@example.com	Córdoba	456789012	2018-11-30 00:00:00	\N	Ana Fernández	654321098	t	2024-12-27 16:13:20.216335	1	OS45678	\N	\N	\N	Personal pagado	Herrero	Medico
6	Laura	Gómez	56789012	Avenida Libertad 303	laura.gomez@example.com	Mendoza	567890123	2017-02-14 00:00:00	\N	Carlos Gómez	543210987	t	2024-12-27 16:13:20.216335	4	IO56789	\N	\N	\N	Voluntario	Veterinario	Psicologo
7	Pedro	López	67890123	Calle Principal 404	pedro.lopez@example.com	Salta	678901234	2016-06-18 00:00:00	\N	María López	432109876	t	2024-12-27 16:13:20.216335	1	OS67890	\N	\N	\N	Personal pagado	Manejador	Psicologo
8	Sofía	Rodríguez	78901234	Avenida del Sol 505	sofia.rodriguez@example.com	San Juan	789012345	2015-10-22 00:00:00	\N	Juan Rodríguez	321098765	t	2024-12-27 16:13:20.216335	4	IO78901	\N	\N	\N	Voluntario	Asistente de mantenimiento	Otro
\.


--
-- Data for Name: tutors; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.tutors (id, dni, relationship, name, last_name, address, phone, email, education_level, occupation, rider_and_horsewoman_id) FROM stdin;
1	12345678	Padre	Julian	Garcia	valverde nro 664	2222222222	juli@gmail.com	Primario	Docente	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.users (email, nickname, password, active, system_admin, role_id, inserted_at, updated_at) FROM stdin;
tecnica@example.com	TecnicaUser	$2b$12$GAJ.CNMGpWgDeKGgLPSCOefswPEddszTtXtBmLAR4Yry3A/fqf7XW	t	f	1	2024-12-27 16:13:20.177322	2024-12-27 16:13:20.177357
ecuestre@example.com	EcuestreUser	$2b$12$BEDEX8etearsmyQMmEK1F.vptUo2uWOGnkDDUh7HQtEODEkIrVQfO	t	f	2	2024-12-27 16:13:20.177322	2024-12-27 16:13:20.177357
voluntariado@example.com	VoluntariadoUser	$2b$12$D/.K7Jcm0iEIInDpnSnTl.aHIj5AQcLNvyCOrKGkBWPiYRjE.RvcO	t	f	3	2024-12-27 16:13:20.177322	2024-12-27 16:13:20.177357
administracion@example.com	AdministracionUser	$2b$12$KSFI.uQcWgRhNt/P1lUu5.m4/gLMyoFKQGfnbjlqzJtIrLbasUnMG	t	f	4	2024-12-27 16:13:20.177322	2024-12-27 16:13:20.177357
systemadmin@example.com	SystemAdmin	$2b$12$5gUEhaURuWv1pWdbBtrr2eAy2Rtt2/DXtkJ7PP56yaVZgAN7im72G	t	t	\N	2024-12-27 16:13:20.177322	2024-12-27 16:13:20.177357
\.


--
-- Data for Name: work_in_institutions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.work_in_institutions (id, proposal, condition, seat, therapist, rider_id, rider_horsewoman_id, horse, track_assistant, days) FROM stdin;
1	Hipoterapia	Regular	CASJ	2	3	1	1	4	{Lunes,Martes,Miércoles}
\.


--
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.collections_id_seq', 1, false);


--
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.contact_id_seq', 1, false);


--
-- Name: equestrians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.equestrians_id_seq', 1, true);


--
-- Name: health_insurances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.health_insurances_id_seq', 5, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.post_id_seq', 1, false);


--
-- Name: riders_and_horsewomen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.riders_and_horsewomen_id_seq', 1, true);


--
-- Name: riders_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.riders_files_id_seq', 1, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: team_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.team_members_id_seq', 8, true);


--
-- Name: tutors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.tutors_id_seq', 1, true);


--
-- Name: work_in_institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.work_in_institutions_id_seq', 1, true);


--
-- Name: caring_professionals caring_professionals_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.caring_professionals
    ADD CONSTRAINT caring_professionals_pkey PRIMARY KEY (rider_horsewoman_id, team_member_id);


--
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: equestrian_team_members equestrian_team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrian_team_members
    ADD CONSTRAINT equestrian_team_members_pkey PRIMARY KEY (equestrian_id, team_member_id);


--
-- Name: equestrians equestrians_name_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrians
    ADD CONSTRAINT equestrians_name_key UNIQUE (name);


--
-- Name: equestrians equestrians_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrians
    ADD CONSTRAINT equestrians_pkey PRIMARY KEY (id);


--
-- Name: health_insurances health_insurances_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.health_insurances
    ADD CONSTRAINT health_insurances_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- Name: post post_title_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_title_key UNIQUE (title);


--
-- Name: riders_and_horsewomen riders_and_horsewomen_dni_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen
    ADD CONSTRAINT riders_and_horsewomen_dni_key UNIQUE (dni);


--
-- Name: riders_and_horsewomen riders_and_horsewomen_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen
    ADD CONSTRAINT riders_and_horsewomen_pkey PRIMARY KEY (id);


--
-- Name: riders_files riders_files_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_files
    ADD CONSTRAINT riders_files_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (role_id, permission_id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: team_members team_members_dni_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_dni_key UNIQUE (dni);


--
-- Name: team_members team_members_email_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_email_key UNIQUE (email);


--
-- Name: team_members team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_pkey PRIMARY KEY (id);


--
-- Name: tutors tutors_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.tutors
    ADD CONSTRAINT tutors_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- Name: work_in_institutions work_in_institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_pkey PRIMARY KEY (id);


--
-- Name: caring_professionals caring_professionals_rider_horsewoman_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.caring_professionals
    ADD CONSTRAINT caring_professionals_rider_horsewoman_id_fkey FOREIGN KEY (rider_horsewoman_id) REFERENCES public.riders_and_horsewomen(id);


--
-- Name: caring_professionals caring_professionals_team_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.caring_professionals
    ADD CONSTRAINT caring_professionals_team_member_id_fkey FOREIGN KEY (team_member_id) REFERENCES public.team_members(id);


--
-- Name: collections collections_rider_dni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_rider_dni_fkey FOREIGN KEY (rider_dni) REFERENCES public.riders_and_horsewomen(dni);


--
-- Name: collections collections_team_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_team_member_id_fkey FOREIGN KEY (team_member_id) REFERENCES public.team_members(email);


--
-- Name: equestrian_team_members equestrian_team_members_equestrian_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrian_team_members
    ADD CONSTRAINT equestrian_team_members_equestrian_id_fkey FOREIGN KEY (equestrian_id) REFERENCES public.equestrians(id);


--
-- Name: equestrian_team_members equestrian_team_members_team_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrian_team_members
    ADD CONSTRAINT equestrian_team_members_team_member_id_fkey FOREIGN KEY (team_member_id) REFERENCES public.team_members(id);


--
-- Name: payments payments_beneficiary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_beneficiary_id_fkey FOREIGN KEY (beneficiary_id) REFERENCES public.users(email);


--
-- Name: riders_and_horsewomen riders_and_horsewomen_health_insurance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen
    ADD CONSTRAINT riders_and_horsewomen_health_insurance_id_fkey FOREIGN KEY (health_insurance_id) REFERENCES public.health_insurances(id);


--
-- Name: riders_files riders_files_rider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_files
    ADD CONSTRAINT riders_files_rider_id_fkey FOREIGN KEY (rider_id) REFERENCES public.riders_and_horsewomen(id);


--
-- Name: role_permissions role_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.permissions(id);


--
-- Name: role_permissions role_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: team_members team_members_health_insurance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_health_insurance_id_fkey FOREIGN KEY (health_insurance_id) REFERENCES public.health_insurances(id);


--
-- Name: tutors tutors_rider_and_horsewoman_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.tutors
    ADD CONSTRAINT tutors_rider_and_horsewoman_id_fkey FOREIGN KEY (rider_and_horsewoman_id) REFERENCES public.riders_and_horsewomen(id);


--
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: work_in_institutions work_in_institutions_horse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_horse_fkey FOREIGN KEY (horse) REFERENCES public.equestrians(id);


--
-- Name: work_in_institutions work_in_institutions_rider_horsewoman_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_rider_horsewoman_id_fkey FOREIGN KEY (rider_horsewoman_id) REFERENCES public.riders_and_horsewomen(id);


--
-- Name: work_in_institutions work_in_institutions_rider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_rider_id_fkey FOREIGN KEY (rider_id) REFERENCES public.team_members(id);


--
-- Name: work_in_institutions work_in_institutions_therapist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_therapist_fkey FOREIGN KEY (therapist) REFERENCES public.team_members(id);


--
-- Name: work_in_institutions work_in_institutions_track_assistant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_track_assistant_fkey FOREIGN KEY (track_assistant) REFERENCES public.team_members(id);


--
-- PostgreSQL database dump complete
--

