--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-01-10 17:31:35

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
-- TOC entry 210 (class 1259 OID 16396)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    correo character varying(45) NOT NULL,
    telefono character varying NOT NULL,
    clave character varying(10) NOT NULL
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16395)
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_id_seq OWNER TO postgres;

--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 209
-- Name: persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;


--
-- TOC entry 3164 (class 2604 OID 16399)
-- Name: persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);


--
-- TOC entry 3307 (class 0 OID 16396)
-- Dependencies: 210
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id, nombre, correo, telefono, clave) FROM stdin;
1	daniel	idninor4@gmail.com	3102207168	daniel
2	edgar	edg@gmail.com	3102207105	edg
3	linda	linda@correo.com	310	linda
\.


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 209
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_seq', 3, true);


--
-- TOC entry 3166 (class 2606 OID 16403)
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);


-- Completed on 2023-01-10 17:31:35

--
-- PostgreSQL database dump complete
--

