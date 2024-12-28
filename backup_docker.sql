--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-28 14:23:35 UTC

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

DROP DATABASE IF EXISTS grupo43;
--
-- TOC entry 3581 (class 1262 OID 16384)
-- Name: grupo43; Type: DATABASE; Schema: -; Owner: grupo43
--

CREATE DATABASE grupo43 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE grupo43 OWNER TO grupo43;

\connect grupo43

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 869 (class 1247 OID 16386)
-- Name: condition_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.condition_enum AS ENUM (
    'Regular',
    'De baja'
);


ALTER TYPE public.condition_enum OWNER TO grupo43;

--
-- TOC entry 872 (class 1247 OID 16392)
-- Name: conditionenum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.conditionenum AS ENUM (
    'Voluntario',
    'Personal pagado'
);


ALTER TYPE public.conditionenum OWNER TO grupo43;

--
-- TOC entry 875 (class 1247 OID 16398)
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
-- TOC entry 878 (class 1247 OID 16414)
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
-- TOC entry 881 (class 1247 OID 16454)
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
-- TOC entry 884 (class 1247 OID 16464)
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
-- TOC entry 887 (class 1247 OID 16474)
-- Name: family_allowance_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.family_allowance_enum AS ENUM (
    'Asignación Universal por hijo',
    'Asignación Universal por hijo con Discapacidad',
    'Asignación por ayuda escolar anual'
);


ALTER TYPE public.family_allowance_enum OWNER TO grupo43;

--
-- TOC entry 890 (class 1247 OID 16482)
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
-- TOC entry 893 (class 1247 OID 16496)
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
-- TOC entry 896 (class 1247 OID 16522)
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
-- TOC entry 899 (class 1247 OID 16532)
-- Name: payment_type_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.payment_type_enum AS ENUM (
    'Honorarios',
    'Proveedor',
    'Gastos varios'
);


ALTER TYPE public.payment_type_enum OWNER TO grupo43;

--
-- TOC entry 902 (class 1247 OID 16540)
-- Name: pension_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.pension_enum AS ENUM (
    'Provincial',
    'Nacional'
);


ALTER TYPE public.pension_enum OWNER TO grupo43;

--
-- TOC entry 905 (class 1247 OID 16546)
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
-- TOC entry 908 (class 1247 OID 16570)
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
-- TOC entry 911 (class 1247 OID 16582)
-- Name: seat_enum; Type: TYPE; Schema: public; Owner: grupo43
--

CREATE TYPE public.seat_enum AS ENUM (
    'CASJ',
    'HLP',
    'OTRO'
);


ALTER TYPE public.seat_enum OWNER TO grupo43;

--
-- TOC entry 914 (class 1247 OID 16590)
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
-- TOC entry 237 (class 1259 OID 24715)
-- Name: caring_professionals; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.caring_professionals (
    rider_horsewoman_id bigint NOT NULL,
    team_member_id bigint NOT NULL
);


ALTER TABLE public.caring_professionals OWNER TO grupo43;

--
-- TOC entry 244 (class 1259 OID 24794)
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
-- TOC entry 243 (class 1259 OID 24793)
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
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 243
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;


--
-- TOC entry 224 (class 1259 OID 24617)
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
-- TOC entry 223 (class 1259 OID 24616)
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
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 223
-- Name: contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.contact_id_seq OWNED BY public.contact.id;


--
-- TOC entry 242 (class 1259 OID 24778)
-- Name: equestrian_team_members; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.equestrian_team_members (
    equestrian_id integer NOT NULL,
    team_member_id integer NOT NULL
);


ALTER TABLE public.equestrian_team_members OWNER TO grupo43;

--
-- TOC entry 220 (class 1259 OID 24595)
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
-- TOC entry 219 (class 1259 OID 24594)
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
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 219
-- Name: equestrians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.equestrians_id_seq OWNED BY public.equestrians.id;


--
-- TOC entry 226 (class 1259 OID 24626)
-- Name: health_insurances; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.health_insurances (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);


ALTER TABLE public.health_insurances OWNER TO grupo43;

--
-- TOC entry 225 (class 1259 OID 24625)
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
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 225
-- Name: health_insurances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.health_insurances_id_seq OWNED BY public.health_insurances.id;


--
-- TOC entry 234 (class 1259 OID 24692)
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
-- TOC entry 233 (class 1259 OID 24691)
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
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 233
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- TOC entry 218 (class 1259 OID 24586)
-- Name: permissions; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.permissions OWNER TO grupo43;

--
-- TOC entry 217 (class 1259 OID 24585)
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
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 217
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- TOC entry 222 (class 1259 OID 24606)
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
-- TOC entry 221 (class 1259 OID 24605)
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
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 221
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;


--
-- TOC entry 232 (class 1259 OID 24676)
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
-- TOC entry 231 (class 1259 OID 24675)
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
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 231
-- Name: riders_and_horsewomen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.riders_and_horsewomen_id_seq OWNED BY public.riders_and_horsewomen.id;


--
-- TOC entry 236 (class 1259 OID 24704)
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
-- TOC entry 235 (class 1259 OID 24703)
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
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 235
-- Name: riders_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.riders_files_id_seq OWNED BY public.riders_files.id;


--
-- TOC entry 228 (class 1259 OID 24642)
-- Name: role_permissions; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.role_permissions (
    role_id bigint NOT NULL,
    permission_id bigint NOT NULL
);


ALTER TABLE public.role_permissions OWNER TO grupo43;

--
-- TOC entry 216 (class 1259 OID 24577)
-- Name: roles; Type: TABLE; Schema: public; Owner: grupo43
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.roles OWNER TO grupo43;

--
-- TOC entry 215 (class 1259 OID 24576)
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
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 215
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 230 (class 1259 OID 24658)
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
-- TOC entry 229 (class 1259 OID 24657)
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
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 229
-- Name: team_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.team_members_id_seq OWNED BY public.team_members.id;


--
-- TOC entry 241 (class 1259 OID 24765)
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
-- TOC entry 240 (class 1259 OID 24764)
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
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 240
-- Name: tutors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.tutors_id_seq OWNED BY public.tutors.id;


--
-- TOC entry 227 (class 1259 OID 24632)
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
-- TOC entry 239 (class 1259 OID 24731)
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
-- TOC entry 238 (class 1259 OID 24730)
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
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 238
-- Name: work_in_institutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo43
--

ALTER SEQUENCE public.work_in_institutions_id_seq OWNED BY public.work_in_institutions.id;


--
-- TOC entry 3339 (class 2604 OID 24811)
-- Name: collections id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);


--
-- TOC entry 3331 (class 2604 OID 24812)
-- Name: contact id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);


--
-- TOC entry 3329 (class 2604 OID 24813)
-- Name: equestrians id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrians ALTER COLUMN id SET DEFAULT nextval('public.equestrians_id_seq'::regclass);


--
-- TOC entry 3332 (class 2604 OID 24814)
-- Name: health_insurances id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.health_insurances ALTER COLUMN id SET DEFAULT nextval('public.health_insurances_id_seq'::regclass);


--
-- TOC entry 3335 (class 2604 OID 24815)
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- TOC entry 3328 (class 2604 OID 24816)
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- TOC entry 3330 (class 2604 OID 24817)
-- Name: post id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);


--
-- TOC entry 3334 (class 2604 OID 24818)
-- Name: riders_and_horsewomen id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen ALTER COLUMN id SET DEFAULT nextval('public.riders_and_horsewomen_id_seq'::regclass);


--
-- TOC entry 3336 (class 2604 OID 24819)
-- Name: riders_files id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_files ALTER COLUMN id SET DEFAULT nextval('public.riders_files_id_seq'::regclass);


--
-- TOC entry 3327 (class 2604 OID 24820)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3333 (class 2604 OID 24821)
-- Name: team_members id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members ALTER COLUMN id SET DEFAULT nextval('public.team_members_id_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 24822)
-- Name: tutors id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.tutors ALTER COLUMN id SET DEFAULT nextval('public.tutors_id_seq'::regclass);


--
-- TOC entry 3337 (class 2604 OID 24823)
-- Name: work_in_institutions id; Type: DEFAULT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions ALTER COLUMN id SET DEFAULT nextval('public.work_in_institutions_id_seq'::regclass);


--
-- TOC entry 3568 (class 0 OID 24715)
-- Dependencies: 237
-- Data for Name: caring_professionals; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3575 (class 0 OID 24794)
-- Dependencies: 244
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3555 (class 0 OID 24617)
-- Dependencies: 224
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3573 (class 0 OID 24778)
-- Dependencies: 242
-- Data for Name: equestrian_team_members; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3551 (class 0 OID 24595)
-- Dependencies: 220
-- Data for Name: equestrians; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.equestrians VALUES (1, 'Calamuchita', '2000-02-10 00:00:00', 'M', 'caballo ', 'suave', true, '2020-02-10 00:00:00', 'Chascoumus', '2024-12-27 16:13:23.388658', '{Hipoterapia}', 'Informe de Evolución.webp', 'Registro de Veterinario.jpeg', 'Ficha de Caballo.jpeg', 'Plan de entrenamiento.png', 'Carga de Img.jpeg');


--
-- TOC entry 3557 (class 0 OID 24626)
-- Dependencies: 226
-- Data for Name: health_insurances; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.health_insurances VALUES (1, 'OSDE');
INSERT INTO public.health_insurances VALUES (2, 'Swiss Medical');
INSERT INTO public.health_insurances VALUES (3, 'Galeno');
INSERT INTO public.health_insurances VALUES (4, 'IOMA');
INSERT INTO public.health_insurances VALUES (5, 'Medifé');


--
-- TOC entry 3565 (class 0 OID 24692)
-- Dependencies: 234
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3549 (class 0 OID 24586)
-- Dependencies: 218
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3553 (class 0 OID 24606)
-- Dependencies: 222
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3563 (class 0 OID 24676)
-- Dependencies: 232
-- Data for Name: riders_and_horsewomen; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.riders_and_horsewomen VALUES (1, '12345678', 'santiago', 'Fierro', 21, '2000-12-12', 'La aplta', '522 22', '22144222', '22142222', '2219876543', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cáritas', '522 e 8 y 9', '2122222222', '2', 'Una observación', 1, 2122122122, false, '', true, '2024-12-27 16:13:23.378647');


--
-- TOC entry 3567 (class 0 OID 24704)
-- Dependencies: 236
-- Data for Name: riders_files; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.riders_files VALUES (1, 'Un Plan de Entrenamiento', false, 'Evaluación', 1, '2024-12-27 16:13:23.381621');


--
-- TOC entry 3559 (class 0 OID 24642)
-- Dependencies: 228
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: grupo43
--



--
-- TOC entry 3547 (class 0 OID 24577)
-- Dependencies: 216
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.roles VALUES (1, 'Tecnica');
INSERT INTO public.roles VALUES (2, 'Ecuestre');
INSERT INTO public.roles VALUES (3, 'Voluntariado');
INSERT INTO public.roles VALUES (4, 'Administracion');


--
-- TOC entry 3561 (class 0 OID 24658)
-- Dependencies: 230
-- Data for Name: team_members; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.team_members VALUES (1, 'Carlos', 'Pérez', '12345678', 'Calle Falsa 123', 'carlos.perez@example.com', 'La Plata', '123456789', '2022-05-10 00:00:00', NULL, 'Juan Pérez', '987654321', true, '2024-12-27 16:13:20.216335', 1, 'OS12345', NULL, NULL, NULL, 'Personal pagado', 'Administrativo', 'Psicologo');
INSERT INTO public.team_members VALUES (2, 'Ana', 'López', '87654321', 'Avenida Siempre Viva 456', 'ana.lopez@example.com', 'La Plata', '987654321', '2021-09-15 00:00:00', NULL, 'María López', '123456789', true, '2024-12-27 16:13:20.216335', 4, 'IO98765', NULL, NULL, NULL, 'Voluntario', 'Terapeuta', 'Fisioterapeuta');
INSERT INTO public.team_members VALUES (3, 'Juan', 'García', '23456789', 'Calle Real 789', 'juan.garcia@example.com', 'Buenos Aires', '234567890', '2020-03-20 00:00:00', NULL, 'Pedro García', '876543210', true, '2024-12-27 16:13:20.216335', 1, 'OS23456', NULL, NULL, NULL, 'Personal pagado', 'Manejador', 'Veterinario');
INSERT INTO public.team_members VALUES (4, 'María', 'Martínez', '34567890', 'Avenida Central 101', 'maria.martinez@example.com', 'Rosario', '345678901', '2019-07-25 00:00:00', NULL, 'Laura Martínez', '765432109', true, '2024-12-27 16:13:20.216335', 4, 'IO34567', NULL, NULL, NULL, 'Voluntario', 'Asistente de pista', 'Medico');
INSERT INTO public.team_members VALUES (5, 'Luis', 'Fernández', '45678901', 'Calle Nueva 202', 'luis.fernandez@example.com', 'Córdoba', '456789012', '2018-11-30 00:00:00', NULL, 'Ana Fernández', '654321098', true, '2024-12-27 16:13:20.216335', 1, 'OS45678', NULL, NULL, NULL, 'Personal pagado', 'Herrero', 'Medico');
INSERT INTO public.team_members VALUES (6, 'Laura', 'Gómez', '56789012', 'Avenida Libertad 303', 'laura.gomez@example.com', 'Mendoza', '567890123', '2017-02-14 00:00:00', NULL, 'Carlos Gómez', '543210987', true, '2024-12-27 16:13:20.216335', 4, 'IO56789', NULL, NULL, NULL, 'Voluntario', 'Veterinario', 'Psicologo');
INSERT INTO public.team_members VALUES (7, 'Pedro', 'López', '67890123', 'Calle Principal 404', 'pedro.lopez@example.com', 'Salta', '678901234', '2016-06-18 00:00:00', NULL, 'María López', '432109876', true, '2024-12-27 16:13:20.216335', 1, 'OS67890', NULL, NULL, NULL, 'Personal pagado', 'Manejador', 'Psicologo');
INSERT INTO public.team_members VALUES (8, 'Sofía', 'Rodríguez', '78901234', 'Avenida del Sol 505', 'sofia.rodriguez@example.com', 'San Juan', '789012345', '2015-10-22 00:00:00', NULL, 'Juan Rodríguez', '321098765', true, '2024-12-27 16:13:20.216335', 4, 'IO78901', NULL, NULL, NULL, 'Voluntario', 'Asistente de mantenimiento', 'Otro');


--
-- TOC entry 3572 (class 0 OID 24765)
-- Dependencies: 241
-- Data for Name: tutors; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.tutors VALUES (1, '12345678', 'Padre', 'Julian', 'Garcia', 'valverde nro 664', '2222222222', 'juli@gmail.com', 'Primario', 'Docente', 1);


--
-- TOC entry 3558 (class 0 OID 24632)
-- Dependencies: 227
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.users VALUES ('tecnica@example.com', 'TecnicaUser', '$2b$12$GAJ.CNMGpWgDeKGgLPSCOefswPEddszTtXtBmLAR4Yry3A/fqf7XW', true, false, 1, '2024-12-27 16:13:20.177322', '2024-12-27 16:13:20.177357');
INSERT INTO public.users VALUES ('ecuestre@example.com', 'EcuestreUser', '$2b$12$BEDEX8etearsmyQMmEK1F.vptUo2uWOGnkDDUh7HQtEODEkIrVQfO', true, false, 2, '2024-12-27 16:13:20.177322', '2024-12-27 16:13:20.177357');
INSERT INTO public.users VALUES ('voluntariado@example.com', 'VoluntariadoUser', '$2b$12$D/.K7Jcm0iEIInDpnSnTl.aHIj5AQcLNvyCOrKGkBWPiYRjE.RvcO', true, false, 3, '2024-12-27 16:13:20.177322', '2024-12-27 16:13:20.177357');
INSERT INTO public.users VALUES ('administracion@example.com', 'AdministracionUser', '$2b$12$KSFI.uQcWgRhNt/P1lUu5.m4/gLMyoFKQGfnbjlqzJtIrLbasUnMG', true, false, 4, '2024-12-27 16:13:20.177322', '2024-12-27 16:13:20.177357');
INSERT INTO public.users VALUES ('systemadmin@example.com', 'SystemAdmin', '$2b$12$5gUEhaURuWv1pWdbBtrr2eAy2Rtt2/DXtkJ7PP56yaVZgAN7im72G', true, true, NULL, '2024-12-27 16:13:20.177322', '2024-12-27 16:13:20.177357');


--
-- TOC entry 3570 (class 0 OID 24731)
-- Dependencies: 239
-- Data for Name: work_in_institutions; Type: TABLE DATA; Schema: public; Owner: grupo43
--

INSERT INTO public.work_in_institutions VALUES (1, 'Hipoterapia', 'Regular', 'CASJ', 2, 3, 1, 1, 4, '{Lunes,Martes,Miércoles}');


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 243
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.collections_id_seq', 1, false);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 223
-- Name: contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.contact_id_seq', 1, false);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 219
-- Name: equestrians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.equestrians_id_seq', 1, true);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 225
-- Name: health_insurances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.health_insurances_id_seq', 5, true);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 233
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 217
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 221
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.post_id_seq', 1, false);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 231
-- Name: riders_and_horsewomen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.riders_and_horsewomen_id_seq', 1, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 235
-- Name: riders_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.riders_files_id_seq', 1, true);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 215
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 229
-- Name: team_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.team_members_id_seq', 8, true);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 240
-- Name: tutors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.tutors_id_seq', 1, true);


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 238
-- Name: work_in_institutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo43
--

SELECT pg_catalog.setval('public.work_in_institutions_id_seq', 1, true);


--
-- TOC entry 3375 (class 2606 OID 24719)
-- Name: caring_professionals caring_professionals_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.caring_professionals
    ADD CONSTRAINT caring_professionals_pkey PRIMARY KEY (rider_horsewoman_id, team_member_id);


--
-- TOC entry 3383 (class 2606 OID 24799)
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- TOC entry 3353 (class 2606 OID 24624)
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- TOC entry 3381 (class 2606 OID 24782)
-- Name: equestrian_team_members equestrian_team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrian_team_members
    ADD CONSTRAINT equestrian_team_members_pkey PRIMARY KEY (equestrian_id, team_member_id);


--
-- TOC entry 3345 (class 2606 OID 24604)
-- Name: equestrians equestrians_name_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrians
    ADD CONSTRAINT equestrians_name_key UNIQUE (name);


--
-- TOC entry 3347 (class 2606 OID 24602)
-- Name: equestrians equestrians_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrians
    ADD CONSTRAINT equestrians_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 24631)
-- Name: health_insurances health_insurances_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.health_insurances
    ADD CONSTRAINT health_insurances_pkey PRIMARY KEY (id);


--
-- TOC entry 3371 (class 2606 OID 24697)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 24593)
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 24613)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 24615)
-- Name: post post_title_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_title_key UNIQUE (title);


--
-- TOC entry 3367 (class 2606 OID 24685)
-- Name: riders_and_horsewomen riders_and_horsewomen_dni_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen
    ADD CONSTRAINT riders_and_horsewomen_dni_key UNIQUE (dni);


--
-- TOC entry 3369 (class 2606 OID 24683)
-- Name: riders_and_horsewomen riders_and_horsewomen_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen
    ADD CONSTRAINT riders_and_horsewomen_pkey PRIMARY KEY (id);


--
-- TOC entry 3373 (class 2606 OID 24709)
-- Name: riders_files riders_files_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_files
    ADD CONSTRAINT riders_files_pkey PRIMARY KEY (id);


--
-- TOC entry 3359 (class 2606 OID 24646)
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (role_id, permission_id);


--
-- TOC entry 3341 (class 2606 OID 24584)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3361 (class 2606 OID 24667)
-- Name: team_members team_members_dni_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_dni_key UNIQUE (dni);


--
-- TOC entry 3363 (class 2606 OID 24669)
-- Name: team_members team_members_email_key; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_email_key UNIQUE (email);


--
-- TOC entry 3365 (class 2606 OID 24665)
-- Name: team_members team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 24772)
-- Name: tutors tutors_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.tutors
    ADD CONSTRAINT tutors_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 24636)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- TOC entry 3377 (class 2606 OID 24738)
-- Name: work_in_institutions work_in_institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_pkey PRIMARY KEY (id);


--
-- TOC entry 3391 (class 2606 OID 24720)
-- Name: caring_professionals caring_professionals_rider_horsewoman_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.caring_professionals
    ADD CONSTRAINT caring_professionals_rider_horsewoman_id_fkey FOREIGN KEY (rider_horsewoman_id) REFERENCES public.riders_and_horsewomen(id);


--
-- TOC entry 3392 (class 2606 OID 24725)
-- Name: caring_professionals caring_professionals_team_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.caring_professionals
    ADD CONSTRAINT caring_professionals_team_member_id_fkey FOREIGN KEY (team_member_id) REFERENCES public.team_members(id);


--
-- TOC entry 3401 (class 2606 OID 24800)
-- Name: collections collections_rider_dni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_rider_dni_fkey FOREIGN KEY (rider_dni) REFERENCES public.riders_and_horsewomen(dni);


--
-- TOC entry 3402 (class 2606 OID 24805)
-- Name: collections collections_team_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_team_member_id_fkey FOREIGN KEY (team_member_id) REFERENCES public.team_members(email);


--
-- TOC entry 3399 (class 2606 OID 24783)
-- Name: equestrian_team_members equestrian_team_members_equestrian_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrian_team_members
    ADD CONSTRAINT equestrian_team_members_equestrian_id_fkey FOREIGN KEY (equestrian_id) REFERENCES public.equestrians(id);


--
-- TOC entry 3400 (class 2606 OID 24788)
-- Name: equestrian_team_members equestrian_team_members_team_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.equestrian_team_members
    ADD CONSTRAINT equestrian_team_members_team_member_id_fkey FOREIGN KEY (team_member_id) REFERENCES public.team_members(id);


--
-- TOC entry 3389 (class 2606 OID 24698)
-- Name: payments payments_beneficiary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_beneficiary_id_fkey FOREIGN KEY (beneficiary_id) REFERENCES public.users(email);


--
-- TOC entry 3388 (class 2606 OID 24686)
-- Name: riders_and_horsewomen riders_and_horsewomen_health_insurance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_and_horsewomen
    ADD CONSTRAINT riders_and_horsewomen_health_insurance_id_fkey FOREIGN KEY (health_insurance_id) REFERENCES public.health_insurances(id);


--
-- TOC entry 3390 (class 2606 OID 24710)
-- Name: riders_files riders_files_rider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.riders_files
    ADD CONSTRAINT riders_files_rider_id_fkey FOREIGN KEY (rider_id) REFERENCES public.riders_and_horsewomen(id);


--
-- TOC entry 3385 (class 2606 OID 24652)
-- Name: role_permissions role_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.permissions(id);


--
-- TOC entry 3386 (class 2606 OID 24647)
-- Name: role_permissions role_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3387 (class 2606 OID 24670)
-- Name: team_members team_members_health_insurance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_health_insurance_id_fkey FOREIGN KEY (health_insurance_id) REFERENCES public.health_insurances(id);


--
-- TOC entry 3398 (class 2606 OID 24773)
-- Name: tutors tutors_rider_and_horsewoman_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.tutors
    ADD CONSTRAINT tutors_rider_and_horsewoman_id_fkey FOREIGN KEY (rider_and_horsewoman_id) REFERENCES public.riders_and_horsewomen(id);


--
-- TOC entry 3384 (class 2606 OID 24637)
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3393 (class 2606 OID 24754)
-- Name: work_in_institutions work_in_institutions_horse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_horse_fkey FOREIGN KEY (horse) REFERENCES public.equestrians(id);


--
-- TOC entry 3394 (class 2606 OID 24749)
-- Name: work_in_institutions work_in_institutions_rider_horsewoman_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_rider_horsewoman_id_fkey FOREIGN KEY (rider_horsewoman_id) REFERENCES public.riders_and_horsewomen(id);


--
-- TOC entry 3395 (class 2606 OID 24744)
-- Name: work_in_institutions work_in_institutions_rider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_rider_id_fkey FOREIGN KEY (rider_id) REFERENCES public.team_members(id);


--
-- TOC entry 3396 (class 2606 OID 24739)
-- Name: work_in_institutions work_in_institutions_therapist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_therapist_fkey FOREIGN KEY (therapist) REFERENCES public.team_members(id);


--
-- TOC entry 3397 (class 2606 OID 24759)
-- Name: work_in_institutions work_in_institutions_track_assistant_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo43
--

ALTER TABLE ONLY public.work_in_institutions
    ADD CONSTRAINT work_in_institutions_track_assistant_fkey FOREIGN KEY (track_assistant) REFERENCES public.team_members(id);


-- Completed on 2024-12-28 14:23:35 UTC

--
-- PostgreSQL database dump complete
--

