--
-- PostgreSQL database dump
--

\restrict MizmDuuY3DxDcpL3ArKcAdbI3yG6Mhc8eU6SzZfybkx389hN4PlE3akO3GJIxrc

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.4

-- Started on 2026-09-11 21:37:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16411)
-- Name: document_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.document_fields (
    field_id integer NOT NULL,
    document_id integer,
    field_name character varying(100),
    field_value text
);


ALTER TABLE public.document_fields OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16410)
-- Name: document_fields_field_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.document_fields_field_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.document_fields_field_id_seq OWNER TO postgres;

--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 221
-- Name: document_fields_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.document_fields_field_id_seq OWNED BY public.document_fields.field_id;


--
-- TOC entry 220 (class 1259 OID 16399)
-- Name: documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documents (
    document_id integer NOT NULL,
    document_name character varying(255) NOT NULL,
    file_path text,
    document_type character varying(100),
    uploaded_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.documents OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16398)
-- Name: documents_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.documents_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documents_document_id_seq OWNER TO postgres;

--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 219
-- Name: documents_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.documents_document_id_seq OWNED BY public.documents.document_id;


--
-- TOC entry 228 (class 1259 OID 16455)
-- Name: geological_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geological_data (
    geological_id integer NOT NULL,
    site_id integer,
    rock_type character varying(100),
    mineral_content character varying(255),
    geological_description text,
    recorded_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.geological_data OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16454)
-- Name: geological_data_geological_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.geological_data_geological_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.geological_data_geological_id_seq OWNER TO postgres;

--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 227
-- Name: geological_data_geological_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.geological_data_geological_id_seq OWNED BY public.geological_data.geological_id;


--
-- TOC entry 226 (class 1259 OID 16443)
-- Name: mining_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mining_sites (
    site_id integer NOT NULL,
    site_name character varying(255) NOT NULL,
    location character varying(255),
    mineral_type character varying(100),
    latitude numeric(10,7),
    longitude numeric(10,7),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mining_sites OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16442)
-- Name: mining_sites_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mining_sites_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mining_sites_site_id_seq OWNER TO postgres;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 225
-- Name: mining_sites_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mining_sites_site_id_seq OWNED BY public.mining_sites.site_id;


--
-- TOC entry 224 (class 1259 OID 16426)
-- Name: reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reports (
    report_id integer NOT NULL,
    document_id integer,
    report_title character varying(255) NOT NULL,
    report_content text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.reports OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16425)
-- Name: reports_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reports_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reports_report_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 223
-- Name: reports_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reports_report_id_seq OWNED BY public.reports.report_id;


--
-- TOC entry 230 (class 1259 OID 16471)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(150) NOT NULL,
    role character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16470)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 4883 (class 2604 OID 16414)
-- Name: document_fields field_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_fields ALTER COLUMN field_id SET DEFAULT nextval('public.document_fields_field_id_seq'::regclass);


--
-- TOC entry 4881 (class 2604 OID 16402)
-- Name: documents document_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents ALTER COLUMN document_id SET DEFAULT nextval('public.documents_document_id_seq'::regclass);


--
-- TOC entry 4888 (class 2604 OID 16458)
-- Name: geological_data geological_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geological_data ALTER COLUMN geological_id SET DEFAULT nextval('public.geological_data_geological_id_seq'::regclass);


--
-- TOC entry 4886 (class 2604 OID 16446)
-- Name: mining_sites site_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mining_sites ALTER COLUMN site_id SET DEFAULT nextval('public.mining_sites_site_id_seq'::regclass);


--
-- TOC entry 4884 (class 2604 OID 16429)
-- Name: reports report_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports ALTER COLUMN report_id SET DEFAULT nextval('public.reports_report_id_seq'::regclass);


--
-- TOC entry 4890 (class 2604 OID 16474)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 5059 (class 0 OID 16411)
-- Dependencies: 222
-- Data for Name: document_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.document_fields (field_id, document_id, field_name, field_value) FROM stdin;
1	1	Location	Uttar Pradesh
2	1	Mineral	Limestone
3	1	Rock Type	Sedimentary Rock
4	1	Mining Status	Active
\.


--
-- TOC entry 5057 (class 0 OID 16399)
-- Dependencies: 220
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.documents (document_id, document_name, file_path, document_type, uploaded_at) FROM stdin;
1	Geological Survey Report	uploads/geological_report.pdf	PDF	2026-09-10 23:58:21.722692
\.


--
-- TOC entry 5065 (class 0 OID 16455)
-- Dependencies: 228
-- Data for Name: geological_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.geological_data (geological_id, site_id, rock_type, mineral_content, geological_description, recorded_at) FROM stdin;
1	1	Sedimentary Rock	High Limestone Content	The site contains limestone-bearing geological formations suitable for mining analysis.	2026-09-11 21:26:21.137544
\.


--
-- TOC entry 5063 (class 0 OID 16443)
-- Dependencies: 226
-- Data for Name: mining_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mining_sites (site_id, site_name, location, mineral_type, latitude, longitude, created_at) FROM stdin;
1	Sample Mining Site	Uttar Pradesh	Limestone	26.8467000	80.9462000	2026-09-10 23:58:21.722692
\.


--
-- TOC entry 5061 (class 0 OID 16426)
-- Dependencies: 224
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reports (report_id, document_id, report_title, report_content, created_at) FROM stdin;
1	1	Sample Geological Report	This is a sample geological and mining report generated for the prototype.	2026-09-10 23:58:21.722692
\.


--
-- TOC entry 5067 (class 0 OID 16471)
-- Dependencies: 230
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, name, email, role, created_at) FROM stdin;
1	Admin User	admin@example.com	Administrator	2026-09-11 21:26:21.137544
2	Geological Officer	geology@example.com	Geological Officer	2026-09-11 21:26:21.137544
3	Mining Officer	mining@example.com	Mining Officer	2026-09-11 21:26:21.137544
\.


--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 221
-- Name: document_fields_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.document_fields_field_id_seq', 8, true);


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 219
-- Name: documents_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documents_document_id_seq', 3, true);


--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 227
-- Name: geological_data_geological_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.geological_data_geological_id_seq', 2, true);


--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 225
-- Name: mining_sites_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mining_sites_site_id_seq', 3, true);


--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 223
-- Name: reports_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_report_id_seq', 3, true);


--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 4, true);


--
-- TOC entry 4895 (class 2606 OID 16419)
-- Name: document_fields document_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_fields
    ADD CONSTRAINT document_fields_pkey PRIMARY KEY (field_id);


--
-- TOC entry 4893 (class 2606 OID 16409)
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (document_id);


--
-- TOC entry 4901 (class 2606 OID 16464)
-- Name: geological_data geological_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geological_data
    ADD CONSTRAINT geological_data_pkey PRIMARY KEY (geological_id);


--
-- TOC entry 4899 (class 2606 OID 16453)
-- Name: mining_sites mining_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mining_sites
    ADD CONSTRAINT mining_sites_pkey PRIMARY KEY (site_id);


--
-- TOC entry 4897 (class 2606 OID 16436)
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (report_id);


--
-- TOC entry 4903 (class 2606 OID 16482)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4905 (class 2606 OID 16480)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4906 (class 2606 OID 16420)
-- Name: document_fields document_fields_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document_fields
    ADD CONSTRAINT document_fields_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(document_id) ON DELETE CASCADE;


--
-- TOC entry 4908 (class 2606 OID 16465)
-- Name: geological_data geological_data_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.geological_data
    ADD CONSTRAINT geological_data_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.mining_sites(site_id) ON DELETE CASCADE;


--
-- TOC entry 4907 (class 2606 OID 16437)
-- Name: reports reports_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents(document_id) ON DELETE SET NULL;


-- Completed on 2026-09-11 21:37:25

--
-- PostgreSQL database dump complete
--

\unrestrict MizmDuuY3DxDcpL3ArKcAdbI3yG6Mhc8eU6SzZfybkx389hN4PlE3akO3GJIxrc

