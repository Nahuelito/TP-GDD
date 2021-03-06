CREATE TABLE "Productor" (
  "nombre" string PRIMARY KEY,
  "produccion_maxima" int,
  "produccion_media" int,
  "fecha_funcionamiento" date
);

CREATE TABLE "Proveedor" (
  "nombre" string PRIMARY KEY,
  "pais" string
);

CREATE TABLE "Transportista" (
  "nombre" string PRIMARY KEY,
  "matricula" string
);

CREATE TABLE "EntregaProveeduria" (
  "nombre_productor" string,
  "nombre_proveedor" string,
  "nombre_transportista" string
);

CREATE TABLE "EstacionPrimaria" (
  "nombre" string PRIMARY KEY,
  "nro_transformadores" int
);

CREATE TABLE "RedDistribucion" (
  "nombre" string PRIMARY KEY,
  "nombre_estacion" string
);

CREATE TABLE "SuministroInterRed" (
  "suministrador" string,
  "suministrado" string,
  "vol_inter" int
);

CREATE TABLE "Provincia" (
  "nombre" string PRIMARY KEY
);

CREATE TABLE "Zona" (
  "nombre" string PRIMARY KEY,
  "codigo" int
);

CREATE TABLE "Linea" (
  "id" string PRIMARY KEY,
  "longitud" int
);

CREATE TABLE "Subestacion" (
  "nombre" string PRIMARY KEY
);

CREATE TABLE "EntregaProduccion" (
  "nombre_productor" string,
  "nombre_estacion" string
);

ALTER TABLE "EntregaProveeduria" ADD FOREIGN KEY ("nombre_productor") REFERENCES "Productor" ("nombre");

ALTER TABLE "EntregaProveeduria" ADD FOREIGN KEY ("nombre_proveedor") REFERENCES "Proveedor" ("nombre");

ALTER TABLE "EntregaProveeduria" ADD FOREIGN KEY ("nombre_transportista") REFERENCES "Transportista" ("nombre");

ALTER TABLE "RedDistribucion" ADD FOREIGN KEY ("nombre_estacion") REFERENCES "EstacionPrimaria" ("nombre");

ALTER TABLE "SuministroInterRed" ADD FOREIGN KEY ("suministrador") REFERENCES "EstacionPrimaria" ("nombre");

ALTER TABLE "SuministroInterRed" ADD FOREIGN KEY ("suministrado") REFERENCES "EstacionPrimaria" ("nombre");

ALTER TABLE "EntregaProduccion" ADD FOREIGN KEY ("nombre_productor") REFERENCES "Productor" ("nombre");

ALTER TABLE "EntregaProduccion" ADD FOREIGN KEY ("nombre_estacion") REFERENCES "EstacionPrimaria" ("nombre");
