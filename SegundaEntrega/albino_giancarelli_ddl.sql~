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
    nombre_productor character varying(255) NOT NULL,
    nombre_estacion character varying(255) NOT NULL,
    fecha date NOT NULL,
    energia integer
);


ALTER TABLE tp.entrega_produccion OWNER TO tf39_dba;

--
-- Name: entrega_proveeduria; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.entrega_proveeduria (
    nombre_productor character varying(255),
    nombre_proveedor character varying(255),
    matricula_transportista character varying(255),
    id integer NOT NULL,
    toneladas integer,
    fecha date
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
    id integer NOT NULL,
    longitud integer,
    numero_red_distribucion integer
);


ALTER TABLE tp.linea OWNER TO tf39_dba;

--
-- Name: productor; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor (
    nombre character varying(255) NOT NULL,
    produccion_media integer,
    produccion_maxima integer,
    fecha_funcionamiento date
);


ALTER TABLE tp.productor OWNER TO tf39_dba;

--
-- Name: productor_hidroelectrico; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_hidroelectrico (
    ocupacion double precision,
    nro_turbinas integer,
    capacidad_maxima double precision,
    nombre character varying(255)
);


ALTER TABLE tp.productor_hidroelectrico OWNER TO tf39_dba;

--
-- Name: productor_nuclear; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_nuclear (
    volumen_plutonio double precision,
    volumen_residuos double precision,
    numero_reactores integer,
    nombre character varying(255)
);


ALTER TABLE tp.productor_nuclear OWNER TO tf39_dba;

--
-- Name: productor_solar; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_solar (
    media_anual_horas_sol double precision,
    superficie_paneles double precision,
    nombre character varying(255)
);


ALTER TABLE tp.productor_solar OWNER TO tf39_dba;

--
-- Name: productor_termico; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.productor_termico (
    volumen_gas double precision,
    numero_hornos integer,
    volumen_carbon double precision,
    nombre character varying(255)
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
    id integer NOT NULL,
    linea_id integer
);


ALTER TABLE tp.subestacion OWNER TO tf39_dba;

--
-- Name: suministro_inter_red; Type: TABLE; Schema: tp; Owner: tf39_dba
--

CREATE TABLE tp.suministro_inter_red (
    suministrador integer,
    suministrado integer,
    volumen_intercambiado double precision,
    fecha date
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
    id_subestacion integer
);


ALTER TABLE tp.zona OWNER TO tf39_dba;

--
-- Name: compania_electrica compania_electrica_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.compania_electrica
    ADD CONSTRAINT compania_electrica_pkey PRIMARY KEY (nombre);


--
-- Name: entrega_produccion entrega_produccion_pkey; Type: CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.entrega_produccion
    ADD CONSTRAINT entrega_produccion_pkey PRIMARY KEY (nombre_productor, nombre_estacion, fecha);


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
-- Name: productor_hidroelectrico productor_hidroelectrico_nombre_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.productor_hidroelectrico
    ADD CONSTRAINT productor_hidroelectrico_nombre_fkey FOREIGN KEY (nombre) REFERENCES tp.productor(nombre);


--
-- Name: productor_nuclear productor_nuclear_nombre_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.productor_nuclear
    ADD CONSTRAINT productor_nuclear_nombre_fkey FOREIGN KEY (nombre) REFERENCES tp.productor(nombre);


--
-- Name: productor_solar productor_solar_nombre_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.productor_solar
    ADD CONSTRAINT productor_solar_nombre_fkey FOREIGN KEY (nombre) REFERENCES tp.productor(nombre);


--
-- Name: productor_termico productor_termico_nombre_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.productor_termico
    ADD CONSTRAINT productor_termico_nombre_fkey FOREIGN KEY (nombre) REFERENCES tp.productor(nombre);


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
-- Name: zona zona_id_subestacion_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.zona
    ADD CONSTRAINT zona_id_subestacion_fkey FOREIGN KEY (id_subestacion) REFERENCES tp.subestacion(id);


--
-- Name: zona zona_nombre_provincia_fkey; Type: FK CONSTRAINT; Schema: tp; Owner: tf39_dba
--

ALTER TABLE ONLY tp.zona
    ADD CONSTRAINT zona_nombre_provincia_fkey FOREIGN KEY (nombre_provincia) REFERENCES tp.provincia(nombre);
