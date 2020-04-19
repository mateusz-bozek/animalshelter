--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: shelter_animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shelter_animal (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(16) NOT NULL,
    race character varying(128) NOT NULL,
    description text,
    age integer,
    date_since date,
    points integer NOT NULL,
    photo character varying(100) NOT NULL
);


ALTER TABLE public.shelter_animal OWNER TO postgres;

--
-- Name: shelter_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shelter_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shelter_animal_id_seq OWNER TO postgres;

--
-- Name: shelter_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shelter_animal_id_seq OWNED BY public.shelter_animal.id;


--
-- Name: shelter_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shelter_message (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    email character varying(128) NOT NULL,
    subject character varying(128) NOT NULL,
    message text NOT NULL,
    status integer NOT NULL,
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.shelter_message OWNER TO postgres;

--
-- Name: shelter_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shelter_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shelter_message_id_seq OWNER TO postgres;

--
-- Name: shelter_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shelter_message_id_seq OWNED BY public.shelter_message.id;


--
-- Name: shelter_submission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shelter_submission (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    type character varying(16) NOT NULL,
    race character varying(128) NOT NULL,
    description text,
    age integer,
    submission_date timestamp with time zone NOT NULL,
    status integer NOT NULL,
    photo character varying(100) NOT NULL
);


ALTER TABLE public.shelter_submission OWNER TO postgres;

--
-- Name: shelter_submission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shelter_submission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shelter_submission_id_seq OWNER TO postgres;

--
-- Name: shelter_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shelter_submission_id_seq OWNED BY public.shelter_submission.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shelter_animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shelter_animal ALTER COLUMN id SET DEFAULT nextval('public.shelter_animal_id_seq'::regclass);


--
-- Name: shelter_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shelter_message ALTER COLUMN id SET DEFAULT nextval('public.shelter_message_id_seq'::regclass);


--
-- Name: shelter_submission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shelter_submission ALTER COLUMN id SET DEFAULT nextval('public.shelter_submission_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add animal	7	add_animal
26	Can change animal	7	change_animal
27	Can delete animal	7	delete_animal
28	Can view animal	7	view_animal
29	Can add message	8	add_message
30	Can change message	8	change_message
31	Can delete message	8	delete_message
32	Can view message	8	view_message
33	Can add submission	9	add_submission
34	Can change submission	9	change_submission
35	Can delete submission	9	delete_submission
36	Can view submission	9	view_submission
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$bHa0E1Y4DHw7$vHubgVO38WxqvF/Wou6aUWdyLqN3OXiAVUbch3yRkMA=	2020-04-18 22:22:41.793707+02	t	admin			admin@admin.com	t	t	2020-04-15 18:56:51.326516+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-15 20:23:13.483699+02	1	Animal object (1)	1	[{"added": {}}]	7	1
2	2020-04-15 20:23:42.624783+02	2	Animal object (2)	1	[{"added": {}}]	7	1
3	2020-04-15 20:25:00.514457+02	3	Animal object (3)	1	[{"added": {}}]	7	1
4	2020-04-15 20:25:39.032167+02	4	Animal object (4)	1	[{"added": {}}]	7	1
5	2020-04-15 20:27:04.703041+02	5	Animal object (5)	1	[{"added": {}}]	7	1
6	2020-04-15 20:28:10.443451+02	6	Animal object (6)	1	[{"added": {}}]	7	1
7	2020-04-15 20:28:41.690937+02	7	Animal object (7)	1	[{"added": {}}]	7	1
8	2020-04-15 20:29:43.443942+02	8	Animal object (8)	1	[{"added": {}}]	7	1
9	2020-04-15 20:30:14.009969+02	9	Animal object (9)	1	[{"added": {}}]	7	1
10	2020-04-15 20:30:38.767135+02	10	Animal object (10)	1	[{"added": {}}]	7	1
11	2020-04-15 20:31:07.963776+02	11	Animal object (11)	1	[{"added": {}}]	7	1
12	2020-04-15 20:31:36.869621+02	12	Animal object (12)	1	[{"added": {}}]	7	1
13	2020-04-15 20:32:07.043317+02	13	Animal object (13)	1	[{"added": {}}]	7	1
14	2020-04-15 20:32:36.745928+02	14	Animal object (14)	1	[{"added": {}}]	7	1
15	2020-04-15 20:33:00.911506+02	15	Animal object (15)	1	[{"added": {}}]	7	1
16	2020-04-15 20:33:27.283106+02	16	Animal object (16)	1	[{"added": {}}]	7	1
17	2020-04-15 20:33:53.457915+02	17	Animal object (17)	1	[{"added": {}}]	7	1
18	2020-04-15 20:38:04.985713+02	18	Animal object (18)	1	[{"added": {}}]	7	1
19	2020-04-15 20:38:31.517135+02	19	Animal object (19)	1	[{"added": {}}]	7	1
20	2020-04-15 20:39:05.209948+02	20	Animal object (20)	1	[{"added": {}}]	7	1
21	2020-04-15 20:39:33.49125+02	21	Animal object (21)	1	[{"added": {}}]	7	1
22	2020-04-15 20:40:02.220282+02	22	Animal object (22)	1	[{"added": {}}]	7	1
23	2020-04-15 20:40:42.006551+02	23	Animal object (23)	1	[{"added": {}}]	7	1
24	2020-04-15 20:41:39.862055+02	24	Animal object (24)	1	[{"added": {}}]	7	1
25	2020-04-15 20:42:07.650255+02	25	Animal object (25)	1	[{"added": {}}]	7	1
26	2020-04-15 20:43:00.30578+02	26	Animal object (26)	1	[{"added": {}}]	7	1
27	2020-04-15 20:45:34.499888+02	27	Animal object (27)	1	[{"added": {}}]	7	1
28	2020-04-15 20:48:08.41154+02	28	Animal object (28)	1	[{"added": {}}]	7	1
29	2020-04-15 20:49:34.563938+02	29	Animal object (29)	1	[{"added": {}}]	7	1
30	2020-04-15 20:50:44.880733+02	30	Animal object (30)	1	[{"added": {}}]	7	1
31	2020-04-17 18:47:39.879205+02	28	Animal object (28)	2	[{"changed": {"fields": ["Type"]}}]	7	1
32	2020-04-17 19:21:25.393543+02	30	Animal object (30)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
33	2020-04-17 19:29:10.968529+02	30	Animal object (30)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
34	2020-04-17 19:49:19.703035+02	30	Animal object (30)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
35	2020-04-17 19:54:23.149511+02	30	Animal object (30)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
36	2020-04-17 20:15:47.261769+02	29	Animal object (29)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
37	2020-04-17 20:19:55.271159+02	28	Animal object (28)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
38	2020-04-17 20:20:04.063001+02	27	Animal object (27)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
39	2020-04-17 20:20:15.053627+02	26	Animal object (26)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
40	2020-04-17 20:20:31.487794+02	25	Animal object (25)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
41	2020-04-17 20:20:42.290875+02	24	Animal object (24)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
42	2020-04-17 20:20:54.950501+02	23	Animal object (23)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
43	2020-04-17 20:21:12.075672+02	22	Animal object (22)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
44	2020-04-17 20:21:23.328767+02	21	Animal object (21)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
45	2020-04-17 20:21:33.361547+02	20	Animal object (20)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
46	2020-04-17 20:21:43.422139+02	19	Animal object (19)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
47	2020-04-17 20:22:12.366573+02	18	Animal object (18)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
48	2020-04-17 20:22:23.652381+02	17	Animal object (17)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
49	2020-04-17 20:22:34.273155+02	16	Animal object (16)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
50	2020-04-17 20:22:46.725094+02	15	Animal object (15)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
51	2020-04-17 20:23:06.231227+02	14	Animal object (14)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
52	2020-04-17 20:23:15.650517+02	13	Animal object (13)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
53	2020-04-17 20:23:27.093413+02	12	Animal object (12)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
54	2020-04-17 20:23:39.902744+02	11	Animal object (11)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
55	2020-04-17 20:23:51.484954+02	10	Animal object (10)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
56	2020-04-17 20:24:04.695653+02	9	Animal object (9)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
57	2020-04-17 20:24:22.145868+02	8	Animal object (8)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
58	2020-04-17 20:24:37.456493+02	7	Animal object (7)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
59	2020-04-17 20:24:51.798198+02	6	Animal object (6)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
60	2020-04-17 20:25:04.590502+02	5	Animal object (5)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
61	2020-04-17 20:25:16.764856+02	4	Animal object (4)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
62	2020-04-17 20:25:27.795283+02	3	Animal object (3)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
63	2020-04-17 20:25:41.826974+02	2	Animal object (2)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
64	2020-04-17 20:25:52.977988+02	1	Animal object (1)	2	[{"changed": {"fields": ["Photo"]}}]	7	1
65	2020-04-18 19:14:39.493445+02	2	Message object (2)	1	[{"added": {}}]	8	1
66	2020-04-18 20:46:49.749991+02	2	Message object (2)	2	[{"changed": {"fields": ["Status"]}}]	8	1
67	2020-04-18 20:46:55.266079+02	1	Message object (1)	2	[{"changed": {"fields": ["Status"]}}]	8	1
68	2020-04-18 21:30:16.206125+02	9	Message object (9)	3		8	1
69	2020-04-18 21:30:16.209473+02	8	Message object (8)	3		8	1
70	2020-04-18 21:30:16.210475+02	7	Message object (7)	3		8	1
71	2020-04-18 21:30:16.211397+02	6	Message object (6)	3		8	1
72	2020-04-18 21:30:16.212217+02	5	Message object (5)	3		8	1
73	2020-04-18 21:30:16.213114+02	4	Message object (4)	3		8	1
74	2020-04-18 22:35:29.846296+02	1	Submission object (1)	1	[{"added": {}}]	9	1
75	2020-04-18 22:38:09.665832+02	2	Submission object (2)	1	[{"added": {}}]	9	1
76	2020-04-19 11:17:09.423853+02	3	Submission object (3)	3		9	1
77	2020-04-19 11:20:17.401662+02	4	Submission object (4)	3		9	1
78	2020-04-19 11:49:29.808851+02	5	Submission object (5)	2	[{"changed": {"fields": ["Status"]}}]	9	1
79	2020-04-19 11:53:40.673227+02	5	Submission object (5)	3		9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	shelter	animal
8	shelter	message
9	shelter	submission
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-15 18:56:20.652364+02
2	auth	0001_initial	2020-04-15 18:56:20.678308+02
3	admin	0001_initial	2020-04-15 18:56:20.704238+02
4	admin	0002_logentry_remove_auto_add	2020-04-15 18:56:20.735757+02
5	admin	0003_logentry_add_action_flag_choices	2020-04-15 18:56:20.742819+02
6	contenttypes	0002_remove_content_type_name	2020-04-15 18:56:20.757577+02
7	auth	0002_alter_permission_name_max_length	2020-04-15 18:56:20.761859+02
8	auth	0003_alter_user_email_max_length	2020-04-15 18:56:20.76906+02
9	auth	0004_alter_user_username_opts	2020-04-15 18:56:20.775635+02
10	auth	0005_alter_user_last_login_null	2020-04-15 18:56:20.782915+02
11	auth	0006_require_contenttypes_0002	2020-04-15 18:56:20.784868+02
12	auth	0007_alter_validators_add_error_messages	2020-04-15 18:56:20.793034+02
13	auth	0008_alter_user_username_max_length	2020-04-15 18:56:20.81104+02
14	auth	0009_alter_user_last_name_max_length	2020-04-15 18:56:20.819981+02
15	auth	0010_alter_group_name_max_length	2020-04-15 18:56:20.826798+02
16	auth	0011_update_proxy_permissions	2020-04-15 18:56:20.833122+02
17	sessions	0001_initial	2020-04-15 18:56:20.83775+02
18	shelter	0001_initial	2020-04-15 18:56:20.852274+02
19	shelter	0002_message_status	2020-04-15 18:59:40.304352+02
20	shelter	0003_auto_20200417_1645	2020-04-17 18:45:48.772895+02
21	shelter	0004_animal_photo	2020-04-17 19:19:47.631006+02
22	shelter	0005_remove_animal_filename	2020-04-17 21:59:43.207229+02
23	shelter	0006_auto_20200418_1053	2020-04-18 12:53:33.415615+02
24	shelter	0007_message_date	2020-04-18 19:11:42.861872+02
25	shelter	0008_auto_20200418_2035	2020-04-18 22:35:07.999769+02
26	shelter	0009_auto_20200419_0836	2020-04-19 10:37:00.335642+02
27	shelter	0010_auto_20200419_0916	2020-04-19 11:16:48.308846+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ltn8xibwbkpa40n5wfdujljgx8oa8fmc	N2Y5MDY5NDNiM2YwNTkzYjZlYjFmZjkyNjI0ZTQyYjU3ZTE1ODgwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NjdmMzU2MzczODZjNDM4ZDM2ODZmNjIxN2NlNTZlNzYxNmRhNTYwIn0=	2020-04-29 18:57:10.202223+02
mb7lo4i6t9d2p4phtdfa0nuazo5e5441	N2Y5MDY5NDNiM2YwNTkzYjZlYjFmZjkyNjI0ZTQyYjU3ZTE1ODgwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NjdmMzU2MzczODZjNDM4ZDM2ODZmNjIxN2NlNTZlNzYxNmRhNTYwIn0=	2020-05-02 22:22:41.796072+02
\.


--
-- Data for Name: shelter_animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shelter_animal (id, name, type, race, description, age, date_since, points, photo) FROM stdin;
30	Hedwiga	other	Puchacz	Legenda głosi, że grała w hollywoodzkim filmie...	3	2019-10-15	0	animals/30.jpg
28	Miki	other	Świnka morska	Jeden z naszych darczyńców został zmuszony oddać nam ją w opiekę z powodu dłuższego wyjazdu zagranicznego. Jest bardzo energiczna i nie może się doczekać nowego domu.	3	2018-01-08	0	animals/28.jpg
29	Fili	other	Kanarek	Pewnego słonecznego popołudnia wleciał nam przez okno i tak został pierwszym podopiecznym, który zgłosił się do nas bez ingerencji człowieka!	2	2018-05-09	0	animals/29.jpg
27	Skrzekacz	other	Papuga ara	Papuga trafiła do nas w bardzo ciężkim stanie. Po nieudanym występie w cyrku została przewieziona do pobliskiego weterynarza. Niestety grupa cyrkowa nigdy jej nie odebrała...	2	2019-12-24	0	animals/27.jpg
26	Puchatka	cat	Dachowiec	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	6	2018-09-12	0	animals/26.jpg
25	Cezar	cat	Dachowiec	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	2	2019-08-05	0	animals/25.jpg
24	Bella	cat	Ragdoll	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	1	2020-04-15	0	animals/24.jpg
23	Grampi	cat	Kot perski	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	2	2019-10-14	0	animals/23.jpg
22	Whiskas	cat	Ocicat	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	2	2019-06-12	0	animals/22.jpg
21	Gracjan	cat	Kot himalajski	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	4	2018-11-11	0	animals/21.jpg
20	Geralt	cat	Kot kartuski	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	1	2020-03-23	0	animals/20.jpg
19	Simba	cat	Kot bengalski	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	3	2019-12-04	0	animals/19.jpg
18	Kriki	cat	Kot bombajski	Kot, przywieziony do naszego schroniska przez jednego z naszych patronów. Został znaleziony w parku Jordana. Nie jest agresywny, posiada komplet szczepień i teraz szuka nowego domu!	1	2020-01-13	0	animals/18.jpg
17	Zabawa	dog	Kundel	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	3	2020-01-02	0	animals/17.jpg
16	Tofik	dog	Kundel	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	3	2020-04-09	0	animals/16.jpg
13	Złociak	dog	Golden Retriever	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	1	2020-01-07	0	animals/13.jpg
11	Ork	dog	Buldog angielski	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	3	2019-07-08	0	animals/11.jpg
9	Zenek	dog	Chow Chow	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	7	2020-03-16	0	animals/9.jpg
8	Gaduła	dog	Chihuahua	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	5	2017-04-12	0	animals/8.jpg
7	Zaczepka	dog	Bokser	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	3	2019-12-19	0	animals/7.jpg
6	Doge	dog	Shiba Inu	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	2	2020-02-10	0	animals/6.jpg
5	Miodzik	dog	Boston terrier	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	4	2020-04-15	0	animals/5.jpg
4	Mordka	dog	Beagle	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	1	2019-12-16	0	animals/4.jpg
3	Klopsik	dog	Alaskan malamute	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	2	2020-04-14	0	animals/3.jpg
2	Parki	dog	Akita	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	5	2019-04-15	0	animals/2.jpg
1	Lulek	dog	Kundel	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	3	2019-11-04	0	animals/1.jpg
15	Brutus	dog	Nowofundland	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	6	2019-10-14	0	animals/15.jpg
14	Serio	dog	Mastiff	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	10	2019-02-11	0	animals/14.jpg
12	Szarik	dog	Owczarek niemiecki	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	1	2020-01-07	0	animals/12.jpg
10	Tyfon	dog	Doberman	Pies, przywieziony do naszego schroniska przez jednego z naszych patronów. Został porzucony w lesie w okolicach Niepołomic. Bardzo szybko zaadaptował się do nowego środowiska, jest posłuszny i zna podstawowe komendy.	3	2019-11-20	0	animals/10.jpg
\.


--
-- Data for Name: shelter_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shelter_message (id, name, email, subject, message, status, date) FROM stdin;
1	Mateusz	mateuszadambozek@gmail.com	Pies Brutus	Dzień dobry,\r\nChciałbym się dowiedzieć czy pies o imieniu Brutus znajdujący się w Waszym schronisku posiada komplet szczepień i czy przejawia agresywne zachowania. Posiadam małe dziecko i nie chciałbym ryzykować. Jeśli wszystko jest w porządku to bardzo proszę o kontakt i umówimy się na dogodny termin w celu obejrzenia i ewentualnego odbioru zwierzaka.\r\nPozdrawiam serdecznie	0	2020-04-18 19:11:42.842357+02
11	Test2	test@test.test	test	test	0	2020-04-18 22:03:19.408742+02
2	Mateusz	mateuszadambozek@gmail.com	Pies Brutus	Dzień dobry\r\nPrzepraszam ale już nieaktualne, przepraszam za kłopot.\r\nPozdrawiam	0	2020-04-18 19:14:39.492248+02
\.


--
-- Data for Name: shelter_submission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shelter_submission (id, name, type, race, description, age, submission_date, status, photo) FROM stdin;
1	Reksio	dog	Kundel	Piesek bardzo szybko się przyzwyczaił do nowego otoczenia. Dzieci go kochają! Bardzo dziękujemy za profesjonalną pomoc w przygotowaniu mu odpowiedniego miejsca w domu i cieszymy się, że dzięki wam znalazł nowy dom.	3	2020-04-18 22:35:29.840747+02	1	submissions/Screenshot_2020-04-18_at_22.30.02.png
2	Wrex	dog	Bernardyn	Dziękujemy za umożliwienie nam zaopiekowania się nad tym wspaniałym stworzeniem. W naszej rodzinie zawsze będzie traktowany jako pełnoprawny członek, bo nie zasługuje na nic innego!	6	2020-04-18 22:38:09.66429+02	1	submissions/Screenshot_2020-04-18_at_22.31.13.png
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 79, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: shelter_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shelter_animal_id_seq', 30, true);


--
-- Name: shelter_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shelter_message_id_seq', 11, true);


--
-- Name: shelter_submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shelter_submission_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shelter_animal shelter_animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shelter_animal
    ADD CONSTRAINT shelter_animal_pkey PRIMARY KEY (id);


--
-- Name: shelter_message shelter_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shelter_message
    ADD CONSTRAINT shelter_message_pkey PRIMARY KEY (id);


--
-- Name: shelter_submission shelter_submission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shelter_submission
    ADD CONSTRAINT shelter_submission_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

