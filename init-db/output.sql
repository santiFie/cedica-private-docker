--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4

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
    'REGULAR',
    'DE BAJA'
);


ALTER TYPE public.condition_enum OWNER TO grupo43;

--
-- Name: conditionenum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.conditionenum AS ENUM (
    'VOLUNTARIO',
    'PERSONAL_PAGADO'
);


ALTER TYPE public.conditionenum OWNER TO grupo43;

--
-- Name: days_of_week_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.days_of_week_enum AS ENUM (
    'LUNES',
    'MARTES',
    'MIERCOLES',
    'JUEVES',
    'VIERNES',
    'SABADO',
    'DOMINGO'
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
    'ADMINISTRATIVO',
    'TERAPEUTA',
    'MANEJADOR',
    'ASISTENTE_DE_PISTA',
    'HERRERO',
    'VETERINARIO',
    'ENTRENADOR_DE_CABALLOS',
    'DOMADOR_DE_CABALLOS',
    'PROFESOR_DE_EQUITACION',
    'PROFESOR_DE_ENTRENAMIENTO',
    'ASISTENTE_DE_MANTENIMIENTO',
    'OTRO'
);


ALTER TYPE public.jobenum OWNER TO grupo43;

--
-- Name: payment_method_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.payment_method_enum AS ENUM (
    'EFECTIVO',
    'TARJETA DE CREDITO',
    'TARJETA DE DEBITO',
    'TRANSFERENCIA'
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
-- Name: paymenttype; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.paymenttype AS ENUM (
    'HONORARIOS',
    'PROVEEDOR',
    'GASTOS_VARIOS'
);


ALTER TYPE public.paymenttype OWNER TO grupo43;

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
    'PSICOLOGO',
    'PSICOMOTRICISTA',
    'MEDICO',
    'FISIOTERAPEUTA',
    'TERAPEUTA_OCUPACIONAL',
    'PSICOLOGO_EDUCATIVO',
    'MAESTRO',
    'PROFESOR',
    'FONOAUDIOLOGO',
    'VETERINARIO',
    'OTRO'
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
    scholarship_percentage character varying(2),
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
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.collections (id, rider_dni, payment_date, payment_method, amount, observations, team_member_id) FROM stdin;
\.


--
-- Data for Name: equestrian_team_members; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.equestrian_team_members (equestrian_id, team_member_id) FROM stdin;
\.


--
-- Data for Name: equestrians; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.equestrians (id, name, date_of_birth, sex, race, coat, bought, date_of_entry, headquarters, inserted_at, proposals, evolution_report, veterinary_record, training_plan, images, horse_sheet) FROM stdin;
\.


--
-- Data for Name: health_insurances; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.health_insurances (id, name) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.payments (id, beneficiary_id, amount, payment_date, payment_type, description) FROM stdin;
1	\N	15000	2000-01-01 00:00:00	Gastos varios	
2	\N	214123	2024-01-01 00:00:00	Proveedor	
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.permissions (id, name) FROM stdin;
1	user_update
2	user_index
3	user_edit
4	user_delete
5	user_new
6	equestrian_new
7	equestrian_create
8	equestrian_edit
9	equestrian_update
10	equestrian_index
11	equestrian_delete
12	equestrian_show
13	equestrian_view_file
14	equestrina_download_file
15	payment_delete
16	payment_edit
17	payment_edit_form
18	payment_show_detail
19	payment_register
20	payment_register_form
21	payment_index
22	collection_index
23	collection_register_form
24	collection_register
25	collection_show_detail
26	collection_edit_form
27	collection_edit
28	collection_delete
29	collection_index_debts
30	collection_show_detail_debts
31	team_member_index
32	team_member_new
33	team_member_create
34	team_member_show
35	team_member_edit
36	team_member_update
37	team_member_switch_state
38	riders_and_horsewomen_new
39	riders_and_horsewomen_create
40	riders_and_horsewomen_edit
41	riders_and_horsewomen_update
42	riders_and_horsewomen_index
44	riders_and_horsewomen_show
46	riders_and_horsewomen_download_file
45	riders_and_horsewomen_view_file
43	riders_and_horsewomen_delete_rider
47	riders_and_horsewomen_new_file
48	riders_and_horsewomen_delete_file
49	riders_and_horsewomen_new_link
50	riders_and_horsewomen_delete_link
51	riders_and_horsewomen_view_link
52	riders_and_horsewomen_index_files
\.


--
-- Data for Name: riders_and_horsewomen; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.riders_and_horsewomen (id, dni, name, last_name, age, date_of_birth, place_of_birth, address, phone, emergency_contact, emergency_phone, scholarship_percentage, observations, disability_certificate, others, disability_type, family_allowance, pension, name_institution, address_institution, phone_institution, current_grade, observations_institution, health_insurance_id, membership_number, curatela, pension_situation_observations, debtor, inserted_at) FROM stdin;
\.


--
-- Data for Name: riders_files; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.riders_files (id, filename, is_link, file_type, rider_id, created_at) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.role_permissions (role_id, permission_id) FROM stdin;
4	1
4	2
4	3
4	4
4	5
2	6
2	7
2	8
2	9
2	10
2	11
2	12
2	13
2	14
4	10
4	12
1	10
1	12
4	15
4	16
4	17
4	18
4	19
4	20
4	21
4	22
4	23
4	24
4	25
4	26
4	27
4	28
4	29
4	30
1	22
1	25
4	31
4	32
4	33
4	34
4	35
4	36
4	37
1	38
1	40
1	41
1	39
1	43
1	44
4	38
4	40
4	41
4	39
4	43
4	44
2	44
1	42
1	45
1	46
2	42
4	42
4	45
4	46
4	47
4	48
4	49
4	50
4	51
4	52
1	47
1	48
1	49
1	50
1	51
1	52
2	45
2	46
2	51
2	52
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

COPY public.team_members (id, name, last_name, dni, address, email, locality, phone, initial_date, end_date, emergency_contact, emergency_phone, active, health_insurance_id, associated_number, title, dni_copy, cv, condition, job_position, profession) FROM stdin;
\.


--
-- Data for Name: tutors; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.tutors (id, dni, relationship, name, last_name, address, phone, email, education_level, occupation, rider_and_horsewoman_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.users (email, nickname, password, active, system_admin, role_id, inserted_at, updated_at) FROM stdin;
julian@garcia.com	julien9	$2b$12$az9zhm94U6uuT9Pr3N31Z.Dj.Wp0FF36mIlwVx7hMRBEitPkjaOe6	t	f	1	2024-10-19 10:43:16.102987	2024-10-19 10:43:16.103042
santi@fierro.com	fierrito	$2b$12$TpnaDq9wEYHYeZEauA.uyO4iDcQgQgoGMuxukDEOCyK2V8r7FLZTu	t	f	2	2024-10-19 10:43:16.102987	2024-10-19 10:43:16.103042
manu@pincel.com	pincel	$2b$12$jO17rYxmoY38VMZeZF2Df.wJDovfXz.JgTTPFffZsn7RthZndDN6m	t	f	3	2024-10-19 10:43:16.102987	2024-10-19 10:43:16.103042
pepito@gmail.com	pepi	$2b$12$HoiIhYqlkjaABnc2bp0Er.EOUeqCHkXIlXpQqawSurgCr5vU9qK9e	t	t	4	2024-10-19 10:43:16.102987	2024-10-19 10:43:16.103042
\.


--
-- Data for Name: work_in_institutions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

COPY public.work_in_institutions (id, proposal, condition, seat, therapist, rider_id, rider_horsewoman_id, horse, track_assistant, days) FROM stdin;
\.


--
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.collections_id_seq', 1, false);


--
-- Name: equestrians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.equestrians_id_seq', 1, false);


--
-- Name: health_insurances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.health_insurances_id_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.payments_id_seq', 2, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- Name: riders_and_horsewomen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.riders_and_horsewomen_id_seq', 1, false);


--
-- Name: riders_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.riders_files_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: team_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.team_members_id_seq', 1, false);


--
-- Name: tutors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.tutors_id_seq', 1, false);


--
-- Name: work_in_institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.work_in_institutions_id_seq', 1, false);


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

