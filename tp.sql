--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Debian 10.7-1.pgdg90+1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: tp; Type: SCHEMA; Schema: -; Owner: tf39_dba
--

CREATE SCHEMA tp;


ALTER SCHEMA tp OWNER TO tf39_dba;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: compania_electrica; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.compania_electrica (
    nombre character varying(255) NOT NULL
);


ALTER TABLE tp.compania_electrica OWNER TO tf39_dba;

--
-- Name: entrega_produccion; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.entrega_produccion (
    nombre_productor character varying(255),
    nombre_estacion character varying(255)
);


ALTER TABLE tp.entrega_produccion OWNER TO tf39_dba;

--
-- Name: entrega_proveeduria; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.entrega_proveeduria (
    nombre_productor character varying(255),
    nombre_proveedor character varying(255),
    matricula_transportista character varying(255),
    id integer NOT NULL
);


ALTER TABLE tp.entrega_proveeduria OWNER TO tf39_dba;

--
-- Name: estacion_primaria; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.estacion_primaria (
    nombre character varying(255) NOT NULL,
    nro_transformadores integer
);


ALTER TABLE tp.estacion_primaria OWNER TO tf39_dba;

--
-- Name: linea; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.linea (
    id character varying(255) NOT NULL,
    longitud integer,
    numero_red_distribucion integer
);


ALTER TABLE tp.linea OWNER TO tf39_dba;

--
-- Name: productor; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor (
    nombre character varying(255) NOT NULL,
    produccion_maxima integer,
    produccion_media integer,
    fecha_funcionamiento date
);


ALTER TABLE tp.productor OWNER TO tf39_dba;

--
-- Name: productor_hidroelectrico; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_hidroelectrico (
    ocupacion double precision,
    nro_turbinas integer,
    capacidad_maxima double precision
);


ALTER TABLE tp.productor_hidroelectrico OWNER TO tf39_dba;

--
-- Name: productor_nuclear; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_nuclear (
    volumen_plutonio double precision,
    volumen_residuos double precision,
    numero_reactores integer
);


ALTER TABLE tp.productor_nuclear OWNER TO tf39_dba;

--
-- Name: productor_solar; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_solar (
    media_anual_horas_sol double precision,
    superficie_paneles double precision
);


ALTER TABLE tp.productor_solar OWNER TO tf39_dba;

--
-- Name: productor_termico; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_termico (
    volumen_gas double precision,
    numero_hornos integer,
    volumen_carbon double precision
);


ALTER TABLE tp.productor_termico OWNER TO tf39_dba;

--
-- Name: proveedor; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.proveedor (
    nombre character varying(255) NOT NULL,
    pais character varying(255)
);


ALTER TABLE tp.proveedor OWNER TO tf39_dba;

--
-- Name: provincia; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.provincia (
    nombre character varying(255) NOT NULL,
    codigo character varying(255)
);


ALTER TABLE tp.provincia OWNER TO tf39_dba;

--
-- Name: red_distribucion; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.red_distribucion (
    id integer NOT NULL,
    nombre_estacion character varying(255)
);


ALTER TABLE tp.red_distribucion OWNER TO tf39_dba;

--
-- Name: red_pertenece_compania; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.red_pertenece_compania (
    nombre_compania character varying(255),
    numero_red integer
);


ALTER TABLE tp.red_pertenece_compania OWNER TO tf39_dba;

--
-- Name: subestacion; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.subestacion (
    id character varying(255) NOT NULL,
    linea_id character varying
);


ALTER TABLE tp.subestacion OWNER TO tf39_dba;

--
-- Name: suministro_inter_red; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.suministro_inter_red (
    suministrador integer,
    suministrado integer,
    volumen_intercambiado double precision
);


ALTER TABLE tp.suministro_inter_red OWNER TO tf39_dba;

--
-- Name: transportista; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.transportista (
    nombre character varying(255) NOT NULL,
    matricula character varying(255) NOT NULL
);


ALTER TABLE tp.transportista OWNER TO tf39_dba;

--
-- Name: zona; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.zona (
    id character varying(255) NOT NULL,
    numero_particulares integer,
    consumo_medio double precision,
    numero_empresa integer,
    numero_institucion integer,
    nombre_provincia character varying(255),
    id_subestiacion character varying(255)
);


ALTER TABLE tp.zona OWNER TO tf39_dba;

--
-- Data for Name: compania_electrica; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.compania_electrica (nombre) FROM stdin;
\.


--
-- Data for Name: entrega_produccion; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.entrega_produccion (nombre_productor, nombre_estacion) FROM stdin;
\.


--
-- Data for Name: entrega_proveeduria; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.entrega_proveeduria (nombre_productor, nombre_proveedor, matricula_transportista, id) FROM stdin;
Cypress-pine	Florida Feathershank	WAUNF78P57A218970	19
Myrobalan	Thinfruit Sedge	2G61T5S30E9613008	1
Muskflower	Florida Feathershank	WAUEF98E58A252080	2
Cypress-pine	Shrubland Beggarticks	5TDBKRFH8FS511823	3
Sorghum	Salt Heliotrope	WAUEF78E48A594494	4
Myrobalan	Malaysian Persimmon	KNAFU6A22D5158119	5
Muskflower	Brazilian Morning-glory	2HNYD18242H984426	6
Cypress-pine	Santa Cruz Water-lily	WAUET48H06K990351	7
Sorghum	Amur Maackia	JH4KC1F75EC057745	8
Myrobalan	Fairyduster	WAUFEBFM6CA036627	9
Muskflower	Vadimir Putin	JN1CV6EKXCM178509	10
Cypress-pine	Vadimir Putin	JN8AE2KP7E9297237	11
Sorghum	Fairyduster	KMHGH4JH3FU887772	12
Myrobalan	Amur Maackia	WBA3B9C52DF386729	13
Muskflower	Santa Cruz Water-lily	WVWAN7AN3DE933179	14
Cypress-pine	Brazilian Morning-glory	WVWGU7AN6CE947783	15
Sorghum	Malaysian Persimmon	WAULT68E52A697389	16
Myrobalan	Salt Heliotrope	SCFLDCFP3EG994456	17
Muskflower	Shrubland Beggarticks	WBA3C1C5XFP154729	18
\.


--
-- Data for Name: estacion_primaria; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.estacion_primaria (nombre, nro_transformadores) FROM stdin;
American black bear	19
Turkey, wild	9
Openbill, asian	12
Booby, blue-footed	1
Deer, white-tailed	5
Arctic ground squirrel	14
Red-capped cardinal	18
American crow	17
Chimpanzee	14
Beaver, american	5
Coyote	13
Andean goose	19
Goose, egyptian	18
Possum, pygmy	9
White-eye, pale	5
Yellow-headed caracara	15
Boubou, southern	8
Zebra, plains	20
Otter, oriental short-clawed	5
Peregrine falcon	7
Canada goose	7
Bird, black-throated butcher	11
Eagle, pallas's fish	4
Fox, bat-eared	12
White-browed sparrow weaver	2
Bleu, blue-breasted cordon	2
Grey heron	17
Lily trotter	16
Oriental short-clawed otter	19
Shrike, crimson-breasted	5
Red-breasted nuthatch	10
Iguana, land	7
Goose, cereopsis	14
Tern, arctic	8
Red-necked phalarope	13
Red brocket	4
African elephant	16
Heron, striated	17
Gull, lava	3
Whip-tailed wallaby	3
Urial	16
Tiger	16
Banded mongoose	8
Mallard	15
Monitor, water	6
Brown and yellow marshbird	13
Bat-eared fox	4
Grey-footed squirrel	17
Sheep, american bighorn	16
\.


--
-- Data for Name: linea; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.linea (id, longitud, numero_red_distribucion) FROM stdin;
\.


--
-- Data for Name: productor; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.productor (nombre, produccion_maxima, produccion_media, fecha_funcionamiento) FROM stdin;
Cypress-pine	14235	7307	1992-04-10
Muskflower	14662	5429	2003-08-10
Myrobalan	13713	8214	2016-03-21
Sorghum	13967	4172	2015-11-16
\.


--
-- Data for Name: productor_hidroelectrico; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.productor_hidroelectrico (ocupacion, nro_turbinas, capacidad_maxima) FROM stdin;
200	100	15000
\.


--
-- Data for Name: productor_nuclear; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.productor_nuclear (volumen_plutonio, volumen_residuos, numero_reactores) FROM stdin;
5000	100000	3
\.


--
-- Data for Name: productor_solar; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.productor_solar (media_anual_horas_sol, superficie_paneles) FROM stdin;
12	500
\.


--
-- Data for Name: productor_termico; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.productor_termico (volumen_gas, numero_hornos, volumen_carbon) FROM stdin;
500000	100	100000
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.proveedor (nombre, pais) FROM stdin;
Thinfruit Sedge	Colombia
Florida Feathershank	Indonesia
Shrubland Beggarticks	South Africa
Salt Heliotrope	Portugal
Malaysian Persimmon	Philippines
Brazilian Morning-glory	Philippines
Santa Cruz Water-lily	Nigeria
Amur Maackia	Azerbaijan
Fairyduster	Costa Rica
Vadimir Putin	Russia
\.


--
-- Data for Name: provincia; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.provincia (nombre, codigo) FROM stdin;
\.


--
-- Data for Name: red_distribucion; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.red_distribucion (id, nombre_estacion) FROM stdin;
\.


--
-- Data for Name: red_pertenece_compania; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.red_pertenece_compania (nombre_compania, numero_red) FROM stdin;
\.


--
-- Data for Name: subestacion; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.subestacion (id, linea_id) FROM stdin;
\.


--
-- Data for Name: suministro_inter_red; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.suministro_inter_red (suministrador, suministrado, volumen_intercambiado) FROM stdin;
\.


--
-- Data for Name: transportista; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.transportista (nombre, matricula) FROM stdin;
Stiffleaf False Goldenaster	5TDBKRFH8FS511823
Candlewood	WAUEF78E48A594494
Lilythorn	KNAFU6A22D5158119
Fontinalis Moss	2HNYD18242H984426
Pencilmark Lichen	WAUET48H06K990351
Rio Grande Phlox	JH4KC1F75EC057745
Shasta Knotweed	WAUFEBFM6CA036627
Snowqueen	JN1CV6EKXCM178509
Bindweed Dwarf Morning-glory	JN8AE2KP7E9297237
California Silverbush	KMHGH4JH3FU887772
Lurid Fishscale Lichen	WBA3B9C52DF386729
Largeflower Crested Coralroot	2G61T5S30E9613008
White Wormwood	WVWAN7AN3DE933179
Jamaican Pepper	WVWGU7AN6CE947783
Cattail Grass	WAULT68E52A697389
Ballmustard	WAUEF98E58A252080
Nutrush	SCFLDCFP3EG994456
Cup Lichen	WBA3C1C5XFP154729
Fedex	WAUNF78P57A218970
\.


--
-- Data for Name: zona; Type: TABLE DATA; Schema: tp; Owner: tf39_dba
--

COPY tp.zona (id, numero_particulares, consumo_medio, numero_empresa, numero_institucion, nombre_provincia, id_subestiacion) FROM stdin;
\.


--
-- Name: compania_electrica compania_electrica_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.compania_electrica
    ADD CONSTRAINT compania_electrica_pkey PRIMARY KEY (nombre);


--
-- Name: entrega_proveeduria entrega_proveeduria_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.entrega_proveeduria
    ADD CONSTRAINT entrega_proveeduria_pkey PRIMARY KEY (id);


--
-- Name: estacion_primaria estacion_primaria_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.estacion_primaria
    ADD CONSTRAINT estacion_primaria_pkey PRIMARY KEY (nombre);


--
-- Name: linea linea_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.linea
    ADD CONSTRAINT linea_pkey PRIMARY KEY (id);


--
-- Name: productor productor_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.productor
    ADD CONSTRAINT productor_pkey PRIMARY KEY (nombre);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (nombre);


--
-- Name: provincia provincia_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (nombre);


--
-- Name: red_distribucion red_distribucion_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.red_distribucion
    ADD CONSTRAINT red_distribucion_pkey PRIMARY KEY (id);


--
-- Name: subestacion subestacion_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.subestacion
    ADD CONSTRAINT subestacion_pkey PRIMARY KEY (id);


--
-- Name: transportista transportista_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.transportista
    ADD CONSTRAINT transportista_pkey PRIMARY KEY (matricula);


--
-- Name: zona zona_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.zona
    ADD CONSTRAINT zona_pkey PRIMARY KEY (id);


--
-- Name: entrega_produccion entrega_produccion_nombre_estacion_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.entrega_produccion
    ADD CONSTRAINT entrega_produccion_nombre_estacion_fkey FOREIGN KEY (nombre_estacion) REFERENCES tp.estacion_primaria(nombre);


--
-- Name: entrega_produccion entrega_produccion_nombre_productor_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.entrega_produccion
    ADD CONSTRAINT entrega_produccion_nombre_productor_fkey FOREIGN KEY (nombre_productor) REFERENCES tp.productor(nombre);


--
-- Name: entrega_proveeduria entrega_proveeduria_nombre_productor_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.entrega_proveeduria
    ADD CONSTRAINT entrega_proveeduria_nombre_productor_fkey FOREIGN KEY (nombre_productor) REFERENCES tp.productor(nombre);


--
-- Name: entrega_proveeduria entrega_proveeduria_nombre_proveedor_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.entrega_proveeduria
    ADD CONSTRAINT entrega_proveeduria_nombre_proveedor_fkey FOREIGN KEY (nombre_proveedor) REFERENCES tp.proveedor(nombre);


--
-- Name: linea linea_numero_red_distribucion_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.linea
    ADD CONSTRAINT linea_numero_red_distribucion_fkey FOREIGN KEY (numero_red_distribucion) REFERENCES tp.red_distribucion(id);


--
-- Name: red_distribucion red_distribucion_nombre_estacion_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.red_distribucion
    ADD CONSTRAINT red_distribucion_nombre_estacion_fkey FOREIGN KEY (nombre_estacion) REFERENCES tp.estacion_primaria(nombre);


--
-- Name: red_pertenece_compania red_pertenece_compania_nombre_compania_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.red_pertenece_compania
    ADD CONSTRAINT red_pertenece_compania_nombre_compania_fkey FOREIGN KEY (nombre_compania) REFERENCES tp.compania_electrica(nombre);


--
-- Name: red_pertenece_compania red_pertenece_compania_numero_red_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.red_pertenece_compania
    ADD CONSTRAINT red_pertenece_compania_numero_red_fkey FOREIGN KEY (numero_red) REFERENCES tp.red_distribucion(id);


--
-- Name: subestacion subestacion_linea_id_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.subestacion
    ADD CONSTRAINT subestacion_linea_id_fkey FOREIGN KEY (linea_id) REFERENCES tp.linea(id);


--
-- Name: suministro_inter_red suministro_inter_red_suministrado_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.suministro_inter_red
    ADD CONSTRAINT suministro_inter_red_suministrado_fkey FOREIGN KEY (suministrado) REFERENCES tp.red_distribucion(id);


--
-- Name: suministro_inter_red suministro_inter_red_suministrador_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.suministro_inter_red
    ADD CONSTRAINT suministro_inter_red_suministrador_fkey FOREIGN KEY (suministrador) REFERENCES tp.red_distribucion(id);


--
-- Name: zona zona_id_subestiacion_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.zona
    ADD CONSTRAINT zona_id_subestiacion_fkey FOREIGN KEY (id_subestiacion) REFERENCES tp.subestacion(id);


--
-- Name: zona zona_nombre_provincia_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.zona
    ADD CONSTRAINT zona_nombre_provincia_fkey FOREIGN KEY (nombre_provincia) REFERENCES tp.provincia(nombre);


--
-- PostgreSQL database dump complete
--

