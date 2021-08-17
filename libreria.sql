DROP SCHEMA IF EXISTS libreria;
CREATE SCHEMA libreria;
USE  libreria;

DROP TABLE IF EXISTS venta;
DROP TABLE IF EXISTS libro;
DROP TABLE IF EXISTS editorial;
DROP TABLE IF EXISTS autor;

CREATE TABLE autor(
    autId        integer   AUTO_INCREMENT  PRIMARY KEY,
    autNombre    varchar(30) NOT NULL,
    autEmail     char(25) NULL,
    autPais   ENUM( 'Argentina' , 'Alemania', 'Colombia', 'Italia', 'Mexico','España', 'Brasil', 'EUA') DEFAULT 'Colombia'
);

CREATE TABLE editorial(
    ediId       smallint AUTO_INCREMENT PRIMARY KEY,
    ediNombre   char(30) NOT NULL
);

CREATE  TABLE  libro(
    libId        integer PRIMARY KEY,
    libNombre    char(50) NOT NULL,
    libPub       smallint NULL,
    ediId        smallint NOT NULL,
    autId        integer NOT NULL,
    libPrecio    double(7,1) NOT NULL,
    FOREIGN  KEY(ediId)REFERENCES  editorial(ediId),
    FOREIGN  KEY(autId)REFERENCES  autor(autId)
);
                                          
CREATE  TABLE  venta(
    vtaId        integer   AUTO_INCREMENT  PRIMARY KEY,
    vtaFecha     date  NOT NULL,
    libId        integer  NOT NULL,
    vtaCantidad  smallint  NOT NULL,
    vtaTotal     double(10,1) NOT NULL,
    FOREIGN  KEY(libId)REFERENCES  libro(libId)
);

INSERT  INTO  editorial(ediNombre) VALUES('Sudamericana');
INSERT  INTO  editorial(ediNombre) VALUES('Cromos');
INSERT  INTO  editorial(ediNombre) VALUES('GEUP Colombia');
INSERT  INTO  editorial(ediNombre) VALUES('Samuel');
INSERT  INTO  editorial(ediNombre) VALUES('Planeta');
INSERT  INTO  editorial(ediNombre) VALUES('Panamericana');
INSERT  INTO  editorial(ediNombre) VALUES('Penguin Random House');

INSERT  INTO  autor(autNombre) VALUES('Gabriel García Márquez');
INSERT  INTO  autor(autNombre) VALUES('Rafael Pombo');
INSERT  INTO  autor(autNombre) VALUES('Jorge Isaacs');
INSERT  INTO  autor(autNombre) VALUES('José Eustasio Rivera');
INSERT  INTO  autor(autNombre) VALUES('Gustavo Álvarez Gardeazábal');
INSERT  INTO  autor(autNombre,autEmail,autPais) VALUES('Paulo Coelho','pcoelho@gmail.com','Brasil');
INSERT  INTO  autor(autNombre,autEmail) VALUES('Héctor Abad Faciolince','hAbad@gmail.com');

INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1001, 'Cien años de soledad',1967,1,1, 100000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1002, 'La Vorágine',1924,2,4, 110000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1003, 'María',1867,4,3, 80000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1004, 'Condores no entierran todos los días',1971,3,5,80000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1005, 'El renacuajo paseador',1867,5,2,60000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1006, 'El olvido que seremos',2005,6,7,150000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1007, 'El camino del arquero',2017,5,6,130000);
INSERT  INTO  libro(libId,libNombre,libPub,ediId,autId,libPrecio) VALUES(1008, 'El amor en los tiempos del cólera',1985,6,1,120000);

INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-04-17', 1005, 2,120000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-07-08', 1001, 2,200000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-09-23', 1001, 1,100000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-09-27', 1003, 1,80000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-11-07', 1003, 2,160000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-11-17', 1007, 2,260000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2020-12-18', 1007, 1,130000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-01-17', 1008, 1,120000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-02-17', 1002, 3,330000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-03-17', 1005, 1,60000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-03-17', 1006, 2,300000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-04-17', 1004, 1,80000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-04-17', 1001, 1,120000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-05-17', 1007, 1,130000);
INSERT INTO venta(vtaFecha, libId, vtaCantidad, vtaTotal) VALUES ('2021-06-09', 1006, 1,150000);




