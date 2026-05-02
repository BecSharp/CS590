--
-- PostgreSQL database dump
--

\restrict 5a2e26vni4Hr0FBJQMJXRuwcOYcak9kKxsmc8Pa6nUxKwzphl5Et37VZpfytE5n

-- Dumped from database version 17.7 (Ubuntu 17.7-3.pgdg24.04+1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-3.pgdg24.04+1)

-- Started on 2026-05-02 17:32:22 UTC

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

--
-- TOC entry 2 (class 3079 OID 16384)
-- Name: vector; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS vector WITH SCHEMA public;


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION vector; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION vector IS 'vector data type and ivfflat and hnsw access methods';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16720)
-- Name: module_two_nut_descs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.module_two_nut_descs (
    "Nutrient code" integer,
    "Nutrient description" character varying(50),
    "Nutrient description abbrev" character varying(50),
    "Nutrient unit" character varying(50),
    "Date added" character varying(50),
    "Last modified" character varying(50)
);


ALTER TABLE public.module_two_nut_descs OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16723)
-- Name: nutdes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nutdes (
    nutrient_code integer NOT NULL,
    nutrient_description character varying(50) NOT NULL,
    nutrient_description_abbrev character varying(50) NOT NULL,
    nutrient_unit character varying(50) NOT NULL,
    date_added date,
    last_modified date
);


ALTER TABLE public.nutdes OWNER TO postgres;

--
-- TOC entry 3642 (class 0 OID 16720)
-- Dependencies: 218
-- Data for Name: module_two_nut_descs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.module_two_nut_descs ("Nutrient code", "Nutrient description", "Nutrient description abbrev", "Nutrient unit", "Date added", "Last modified") FROM stdin;
203	Protein	Pro	g	10/29/1997	10/29/1997
204	Total Fat	Fat	g	10/29/1997	10/29/1997
205	Carbohydrate	Carb	g	10/29/1997	10/29/1997
207	Ash	Ash	g	10/29/1997	10/29/1997
208	Food Energy	FE	kcal	10/29/1997	10/29/1997
255	Moisture	Mois	g	10/29/1997	10/29/1997
269	Total Sugars	Sug	g	12/17/2013	12/17/2013
291	Total Dietary Fiber	TDF	g	10/29/1997	10/29/1997
301	Calcium	Ca	mg	10/29/1997	10/29/1997
303	Iron	Fe	mg	10/29/1997	10/29/1997
306	Potassium	K	mg	05/02/2017	05/02/2017
307	Sodium	Na	mg	10/29/1997	10/29/1997
320	Vitamin A, RAE	VitA, RAE	mcg	10/24/2024	10/24/2024
328	Vitamin D (D2 + D3)	VitD	mcg	05/02/2017	05/02/2017
401	Vitamin C	VitC	mg	10/29/1997	10/29/1997
539	Added Sugars	SugA	g	04/01/2022	04/01/2022
601	Cholesterol	Chol	mg	10/29/1997	10/29/1997
605	Total Trans	Trans	g	11/24/2005	11/24/2005
606	Saturated Fat	Sfat	g	10/29/1997	10/29/1997
\.


--
-- TOC entry 3643 (class 0 OID 16723)
-- Dependencies: 219
-- Data for Name: nutdes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nutdes (nutrient_code, nutrient_description, nutrient_description_abbrev, nutrient_unit, date_added, last_modified) FROM stdin;
203	Protein	Pro	g	1997-10-29	1997-10-29
204	Total Fat	Fat	g	1997-10-29	1997-10-29
205	Carbohydrate	Carb	g	1997-10-29	1997-10-29
207	Ash	Ash	g	1997-10-29	1997-10-29
208	Food Energy	FE	kcal	1997-10-29	1997-10-29
255	Moisture	Mois	g	1997-10-29	1997-10-29
269	Total Sugars	Sug	g	2013-12-17	2013-12-17
291	Total Dietary Fiber	TDF	g	1997-10-29	1997-10-29
301	Calcium	Ca	mg	1997-10-29	1997-10-29
303	Iron	Fe	mg	1997-10-29	1997-10-29
306	Potassium	K	mg	2017-05-02	2017-05-02
307	Sodium	Na	mg	1997-10-29	1997-10-29
320	Vitamin A, RAE	VitA, RAE	mcg	2024-10-24	2024-10-24
328	Vitamin D (D2 + D3)	VitD	mcg	2017-05-02	2017-05-02
401	Vitamin C	VitC	mg	1997-10-29	1997-10-29
539	Added Sugars	SugA	g	2022-04-01	2022-04-01
601	Cholesterol	Chol	mg	1997-10-29	1997-10-29
605	Total Trans	Trans	g	2005-11-24	2005-11-24
606	Saturated Fat	Sfat	g	1997-10-29	1997-10-29
\.


-- Completed on 2026-05-02 17:32:22 UTC

--
-- PostgreSQL database dump complete
--

\unrestrict 5a2e26vni4Hr0FBJQMJXRuwcOYcak9kKxsmc8Pa6nUxKwzphl5Et37VZpfytE5n

