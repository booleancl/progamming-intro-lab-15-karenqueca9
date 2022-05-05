--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6 (Ubuntu 13.6-0ubuntu0.21.10.1)
-- Dumped by pg_dump version 13.6 (Ubuntu 13.6-0ubuntu0.21.10.1)

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
-- Name: drivers; Type: TABLE; Schema: public; Owner: karen
--

CREATE TABLE public.drivers (
    id integer NOT NULL,
    name character varying(30),
    last_name character varying(30),
    rut character varying(12) NOT NULL
);


ALTER TABLE public.drivers OWNER TO karen;

--
-- Name: drivers_id_seq; Type: SEQUENCE; Schema: public; Owner: karen
--

CREATE SEQUENCE public.drivers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drivers_id_seq OWNER TO karen;

--
-- Name: drivers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: karen
--

ALTER SEQUENCE public.drivers_id_seq OWNED BY public.drivers.id;


--
-- Name: locals; Type: TABLE; Schema: public; Owner: karen
--

CREATE TABLE public.locals (
    id integer NOT NULL,
    number integer,
    address character varying(200)
);


ALTER TABLE public.locals OWNER TO karen;

--
-- Name: locals_id_seq; Type: SEQUENCE; Schema: public; Owner: karen
--

CREATE SEQUENCE public.locals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locals_id_seq OWNER TO karen;

--
-- Name: locals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: karen
--

ALTER SEQUENCE public.locals_id_seq OWNED BY public.locals.id;


--
-- Name: ramps; Type: TABLE; Schema: public; Owner: karen
--

CREATE TABLE public.ramps (
    id integer NOT NULL,
    license_plate character varying(9)
);


ALTER TABLE public.ramps OWNER TO karen;

--
-- Name: ramps_id_seq; Type: SEQUENCE; Schema: public; Owner: karen
--

CREATE SEQUENCE public.ramps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ramps_id_seq OWNER TO karen;

--
-- Name: ramps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: karen
--

ALTER SEQUENCE public.ramps_id_seq OWNED BY public.ramps.id;


--
-- Name: travels; Type: TABLE; Schema: public; Owner: karen
--

CREATE TABLE public.travels (
    id integer NOT NULL,
    driver_id integer NOT NULL,
    local_id integer NOT NULL,
    ramp_id integer NOT NULL,
    truck_id integer NOT NULL,
    arrival_time timestamp without time zone,
    departure_time timestamp without time zone,
    return_time timestamp without time zone
);


ALTER TABLE public.travels OWNER TO karen;

--
-- Name: travels_detail; Type: TABLE; Schema: public; Owner: karen
--

CREATE TABLE public.travels_detail (
    id integer NOT NULL,
    quantity integer,
    unity character varying(4),
    travel_id integer NOT NULL,
    description text
);


ALTER TABLE public.travels_detail OWNER TO karen;

--
-- Name: travels_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: karen
--

CREATE SEQUENCE public.travels_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travels_detail_id_seq OWNER TO karen;

--
-- Name: travels_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: karen
--

ALTER SEQUENCE public.travels_detail_id_seq OWNED BY public.travels_detail.id;


--
-- Name: travels_id_seq; Type: SEQUENCE; Schema: public; Owner: karen
--

CREATE SEQUENCE public.travels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travels_id_seq OWNER TO karen;

--
-- Name: travels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: karen
--

ALTER SEQUENCE public.travels_id_seq OWNED BY public.travels.id;


--
-- Name: trucks; Type: TABLE; Schema: public; Owner: karen
--

CREATE TABLE public.trucks (
    id integer NOT NULL,
    license_plate character varying(9)
);


ALTER TABLE public.trucks OWNER TO karen;

--
-- Name: trucks_id_seq; Type: SEQUENCE; Schema: public; Owner: karen
--

CREATE SEQUENCE public.trucks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trucks_id_seq OWNER TO karen;

--
-- Name: trucks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: karen
--

ALTER SEQUENCE public.trucks_id_seq OWNED BY public.trucks.id;


--
-- Name: drivers id; Type: DEFAULT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.drivers ALTER COLUMN id SET DEFAULT nextval('public.drivers_id_seq'::regclass);


--
-- Name: locals id; Type: DEFAULT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.locals ALTER COLUMN id SET DEFAULT nextval('public.locals_id_seq'::regclass);


--
-- Name: ramps id; Type: DEFAULT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.ramps ALTER COLUMN id SET DEFAULT nextval('public.ramps_id_seq'::regclass);


--
-- Name: travels id; Type: DEFAULT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels ALTER COLUMN id SET DEFAULT nextval('public.travels_id_seq'::regclass);


--
-- Name: travels_detail id; Type: DEFAULT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels_detail ALTER COLUMN id SET DEFAULT nextval('public.travels_detail_id_seq'::regclass);


--
-- Name: trucks id; Type: DEFAULT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.trucks ALTER COLUMN id SET DEFAULT nextval('public.trucks_id_seq'::regclass);


--
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: karen
--

COPY public.drivers (id, name, last_name, rut) FROM stdin;
1	Jose	Morales	13.532.178-1
2	Enrique	Caro	15.545.273-8
3	Juan	Perez	17.234.453-7
\.


--
-- Data for Name: locals; Type: TABLE DATA; Schema: public; Owner: karen
--

COPY public.locals (id, number, address) FROM stdin;
1	1	Los manzanos 12
2	2	Los plátanos 11
3	3	Los kiwis 19
\.


--
-- Data for Name: ramps; Type: TABLE DATA; Schema: public; Owner: karen
--

COPY public.ramps (id, license_plate) FROM stdin;
1	13-4W-XB
2	MS-17-36
3	13-DS-86
\.


--
-- Data for Name: travels; Type: TABLE DATA; Schema: public; Owner: karen
--

COPY public.travels (id, driver_id, local_id, ramp_id, truck_id, arrival_time, departure_time, return_time) FROM stdin;
1	1	1	1	1	2022-01-03 19:10:00	2022-01-06 15:24:00	2022-01-06 17:14:00
2	2	2	2	2	2022-01-05 14:10:00	2022-01-06 13:14:00	2022-01-09 19:14:00
3	3	3	3	3	2022-02-15 17:40:00	2022-02-21 18:34:00	2022-02-22 11:39:00
\.


--
-- Data for Name: travels_detail; Type: TABLE DATA; Schema: public; Owner: karen
--

COPY public.travels_detail (id, quantity, unity, travel_id, description) FROM stdin;
1	1	boxs	2	sugar from Perú
2	65	boxs	2	apples from Colombia
3	5	boxs	1	mariscos from Chile
4	63	boxs	3	cafe from Turquia
\.


--
-- Data for Name: trucks; Type: TABLE DATA; Schema: public; Owner: karen
--

COPY public.trucks (id, license_plate) FROM stdin;
1	33-13-XB
2	MS-17-36
3	13-DC-86
4	33-13-XB
5	MS-17-36
6	13-DC-86
\.


--
-- Name: drivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: karen
--

SELECT pg_catalog.setval('public.drivers_id_seq', 3, true);


--
-- Name: locals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: karen
--

SELECT pg_catalog.setval('public.locals_id_seq', 3, true);


--
-- Name: ramps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: karen
--

SELECT pg_catalog.setval('public.ramps_id_seq', 3, true);


--
-- Name: travels_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: karen
--

SELECT pg_catalog.setval('public.travels_detail_id_seq', 4, true);


--
-- Name: travels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: karen
--

SELECT pg_catalog.setval('public.travels_id_seq', 3, true);


--
-- Name: trucks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: karen
--

SELECT pg_catalog.setval('public.trucks_id_seq', 6, true);


--
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);


--
-- Name: drivers drivers_rut_key; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_rut_key UNIQUE (rut);


--
-- Name: locals locals_pkey; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.locals
    ADD CONSTRAINT locals_pkey PRIMARY KEY (id);


--
-- Name: ramps ramps_pkey; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.ramps
    ADD CONSTRAINT ramps_pkey PRIMARY KEY (id);


--
-- Name: travels_detail travels_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels_detail
    ADD CONSTRAINT travels_detail_pkey PRIMARY KEY (id);


--
-- Name: travels travels_pkey; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT travels_pkey PRIMARY KEY (id);


--
-- Name: trucks trucks_pkey; Type: CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.trucks
    ADD CONSTRAINT trucks_pkey PRIMARY KEY (id);


--
-- Name: travels_detail travels_detail_travel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels_detail
    ADD CONSTRAINT travels_detail_travel_id_fkey FOREIGN KEY (travel_id) REFERENCES public.travels(id);


--
-- Name: travels travels_driver_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT travels_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.drivers(id);


--
-- Name: travels travels_local_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT travels_local_id_fkey FOREIGN KEY (local_id) REFERENCES public.locals(id);


--
-- Name: travels travels_ramp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT travels_ramp_id_fkey FOREIGN KEY (ramp_id) REFERENCES public.ramps(id);


--
-- Name: travels travels_truck_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: karen
--

ALTER TABLE ONLY public.travels
    ADD CONSTRAINT travels_truck_id_fkey FOREIGN KEY (truck_id) REFERENCES public.trucks(id);


--
-- PostgreSQL database dump complete
--

