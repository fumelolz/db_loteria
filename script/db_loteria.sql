CREATE DATABASE db_loteria;

use db_loteria;

CREATE TABLE cartas(
	id int not null IDENTITY(1,1),
	nombre nvarchar(50),
);

ALTER TABLE cartas
ADD CONSTRAINT PK_cartas_ID PRIMARY KEY (id);

CREATE TABLE tablas(
	id int not null IDENTITY(1,1),
	nombre nvarchar(50) not null,
	carta1 int not null,
	carta2 int not null,
	carta3 int not null,
	carta4 int not null,
	carta5 int not null,
	carta6 int not null,
	carta7 int not null,
	carta8 int not null,
	carta9 int not null,
	carta10 int not null,
	carta11 int not null,
	carta12 int not null
);


ALTER TABLE tablas
  ADD CONSTRAINT ck_carta1
  CHECK (carta1 not IN (
    carta2, carta3, carta4, carta5, carta6, carta7, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta2
  CHECK (carta2 not IN (
    carta1, carta3, carta4, carta5, carta6, carta7, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta3
  CHECK (carta3 not IN (
    carta1, carta2, carta4, carta5, carta6, carta7, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta4
  CHECK (carta4 not IN (
    carta1, carta2, carta3, carta5, carta6, carta7, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta5
  CHECK (carta5 not IN (
    carta1, carta2, carta3, carta4, carta6, carta7, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta6
  CHECK (carta6 not IN (
    carta1, carta2, carta3, carta4, carta5, carta7, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta7
  CHECK (carta7 not IN (
    carta1, carta2, carta3, carta4, carta5, carta6, carta8, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta8
  CHECK (carta8 not IN (
    carta1, carta2, carta3, carta4, carta5, carta6, carta7, carta9, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta9
  CHECK (carta9 not IN (
    carta1, carta2, carta3, carta4, carta5, carta6, carta7, carta8, carta10, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta10
  CHECK (carta10 not IN (
    carta1, carta2, carta3, carta4, carta5, carta6, carta7, carta8, carta9, carta11, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta11
  CHECK (carta11 not IN (
    carta1, carta2, carta3, carta4, carta5, carta6, carta7, carta8, carta9, carta10, carta12
  ));
ALTER TABLE tablas
  ADD CONSTRAINT ck_carta12
  CHECK (carta12 not IN (
    carta1, carta2, carta3, carta4, carta5, carta6, carta7, carta8, carta9, carta10, carta11
  ));


CREATE UNIQUE INDEX IX_TABLASUK
ON tablas (
    carta1, 
    carta2, 
    carta3, 
    carta4, 
    carta5, 
    carta6, 
    carta7, 
    carta8, 
    carta9, 
    carta10, 
    carta11, 
    carta12
);


ALTER TABLE tablas
ADD CONSTRAINT PK_tablas_ID PRIMARY KEY (id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta1 FOREIGN KEY (carta1) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta2 FOREIGN KEY (carta2) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta3 FOREIGN KEY (carta3) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta4 FOREIGN KEY (carta4) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta5 FOREIGN KEY (carta5) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta6 FOREIGN KEY (carta6) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta7 FOREIGN KEY (carta7) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta8 FOREIGN KEY (carta8) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta9 FOREIGN KEY (carta9) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta10 FOREIGN KEY (carta10) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta11 FOREIGN KEY (carta11) REFERENCES cartas(id);
ALTER TABLE tablas
ADD CONSTRAINT FK_cartas_tablas_carta12 FOREIGN KEY (carta12) REFERENCES cartas(id);

INSERT INTO cartas(nombre) VALUES ('El gallo');
INSERT INTO cartas(nombre) VALUES ('El diablito');
INSERT INTO cartas(nombre) VALUES ('La dama');
INSERT INTO cartas(nombre) VALUES ('El catrín');
INSERT INTO cartas(nombre) VALUES ('El paraguas');
INSERT INTO cartas(nombre) VALUES ('La sirena');
INSERT INTO cartas(nombre) VALUES ('La escalera');
INSERT INTO cartas(nombre) VALUES ('La botella');
INSERT INTO cartas(nombre) VALUES ('El barril');
INSERT INTO cartas(nombre) VALUES ('El árbol');
INSERT INTO cartas(nombre) VALUES ('El melón');
INSERT INTO cartas(nombre) VALUES ('El valiente');
INSERT INTO cartas(nombre) VALUES ('El gorrito');
INSERT INTO cartas(nombre) VALUES ('La muerte');
INSERT INTO cartas(nombre) VALUES ('La pera');
INSERT INTO cartas(nombre) VALUES ('La bandera');
INSERT INTO cartas(nombre) VALUES ('El bandolón');
INSERT INTO cartas(nombre) VALUES ('El violoncello');
INSERT INTO cartas(nombre) VALUES ('La garza');
INSERT INTO cartas(nombre) VALUES ('El pájaro');
INSERT INTO cartas(nombre) VALUES ('La mano');
INSERT INTO cartas(nombre) VALUES ('La bota');
INSERT INTO cartas(nombre) VALUES ('La luna');
INSERT INTO cartas(nombre) VALUES ('El cotorro');
INSERT INTO cartas(nombre) VALUES ('El borracho');
INSERT INTO cartas(nombre) VALUES ('El negrito');
INSERT INTO cartas(nombre) VALUES ('El corazón');
INSERT INTO cartas(nombre) VALUES ('La sandía');
INSERT INTO cartas(nombre) VALUES ('El tambor');
INSERT INTO cartas(nombre) VALUES ('El camarón');
INSERT INTO cartas(nombre) VALUES ('Las jaras');
INSERT INTO cartas(nombre) VALUES ('El músico');
INSERT INTO cartas(nombre) VALUES ('La arańa');
INSERT INTO cartas(nombre) VALUES ('El soldado');
INSERT INTO cartas(nombre) VALUES ('La estrella');
INSERT INTO cartas(nombre) VALUES ('El cazo');
INSERT INTO cartas(nombre) VALUES ('El mundo');
INSERT INTO cartas(nombre) VALUES ('El apache');
INSERT INTO cartas(nombre) VALUES ('El nopal');
INSERT INTO cartas(nombre) VALUES ('El alacrán');
INSERT INTO cartas(nombre) VALUES ('La rosa');
INSERT INTO cartas(nombre) VALUES ('La calavera');
INSERT INTO cartas(nombre) VALUES ('La campana');
INSERT INTO cartas(nombre) VALUES ('El cantarito');
INSERT INTO cartas(nombre) VALUES ('El venado');
INSERT INTO cartas(nombre) VALUES ('El sol');
INSERT INTO cartas(nombre) VALUES ('La corona');
INSERT INTO cartas(nombre) VALUES ('La chalupa');
INSERT INTO cartas(nombre) VALUES ('El pino');
INSERT INTO cartas(nombre) VALUES ('El pescado');
INSERT INTO cartas(nombre) VALUES ('La palma');
INSERT INTO cartas(nombre) VALUES ('La maceta');
INSERT INTO cartas(nombre) VALUES ('El arpa');
INSERT INTO cartas(nombre) VALUES ('La rana');