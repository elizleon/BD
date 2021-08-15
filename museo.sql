CREATE SCHEMA museo;
USE museo;
DROP TABLE IF  EXISTS museo;
DROP TABLE IF  EXISTS exposicion;
DROP TABLE IF  EXISTS obra;
DROP TABLE IF  EXISTS presentacion;
CREATE TABLE museo(
	mu_id int PRIMARY KEY,
	mu_nombre char(30)
);
CREATE TABLE exposicion(
	ex_id int PRIMARY KEY,
	ex_nombre char(30)
);
CREATE TABLE obra(
	ob_id int PRIMARY KEY,
	ob_nombre char(30),
   	ob_tipo char(30),
   	ob_costo float,
   	ob_ex_id int references exposicion(ex_id)
);
CREATE TABLE presentacion(
	pre_fechaincial char(30),
    pre_ob_id int references obra(ob_id),
	pre_mu_id int references museo(mu_id) 
);

INSERT INTO museo Values(101    , 'Louvre'); 
INSERT INTO museo Values(102    , 'Met');
INSERT INTO museo Values(205    , 'Shangai');
INSERT INTO museo Values(304    ,'Britanico');

INSERT INTO exposicion Values(1003 , 'Da Vinci');
INSERT INTO exposicion Values(1004 , 'Renacimiento');
INSERT INTO exposicion Values(1005 , 'Cubismo');
INSERT INTO exposicion Values(1006 , 'Impresionismo');

INSERT INTO obra Values(111, 'Mona lisa', 'pintura', 1000, 1003);
  INSERT INTO obra Values(112, 'Ultima cena', 'pintura', 800, 1003);
  INSERT INTO obra Values(113, 'Hombre vitruvio', 'boceto', 400, 1003);
  INSERT INTO obra Values(114, 'Planos', 'planos', 200, 1003);
  INSERT INTO obra Values(200, 'Fornarina', 'pintura', 400, 1004);
  INSERT INTO obra Values(201, 'David', 'escultura', 700, 1004);
  INSERT INTO obra Values(202, 'Nacimiento de Venus', 'pintura', 250, 1004);
  INSERT INTO obra Values(300, 'Violin and candless', 'pintura', 300, 1005);
  INSERT INTO obra Values(301, 'Les demoiselles', 'pintura', 350, 1005);
  INSERT INTO obra Values(302, 'Cabeza de mujer', 'escultura', 300, 1005);
  INSERT INTO obra Values(400, 'Autoretrato', 'pintura', 100, 1006);
  INSERT INTO obra Values(401, 'La parade', 'pintura', 300, 1006);
  INSERT INTO obra Values(402, 'Solei levant', 'pintura', 300, 1006);
  
  INSERT INTO presentacion Values('Ene-mar-2013', 111, 101);
  INSERT INTO presentacion Values('Oct-dic-2013', 111, 101);
  INSERT INTO presentacion Values('Ene-mar-2013', 112, 101);
  INSERT INTO presentacion Values('May-sept-2013', 200, 101);
  INSERT INTO presentacion Values('May-sept-2013', 201, 101);
  INSERT INTO presentacion Values('Oct-dic-2013', 113, 101);
  INSERT INTO presentacion Values('Ene-jul-2013', 300, 102);
 INSERT INTO presentacion Values( 'Ene-jul-2013', 301, 102);
 INSERT INTO presentacion Values( 'Abr-jun-2013', 113, 102);
  INSERT INTO presentacion Values('Sept-2013', 113, 102);
  INSERT INTO presentacion Values('Abr-jun-2013', 112, 102);
  INSERT INTO presentacion Values('Sept-2013', 112, 102);
  INSERT INTO presentacion Values('Ene-abr-2013', 202, 102);
  INSERT INTO presentacion Values('Ene-abr-2013', 201, 102);
  INSERT INTO presentacion Values('Julio 2013', 113, 205);
  INSERT INTO presentacion Values('Julio 2013', 114, 205);
  INSERT INTO presentacion Values('Marz-jun-2013', 401, 205);
  INSERT INTO presentacion Values('Marz-jun-2013', 402,205);
  INSERT INTO presentacion Values('Oct-dic-2013', 301, 205);
  INSERT INTO presentacion Values('Oct-dic-2013', 302, 205);
  INSERT INTO presentacion Values('Oct-dic-2013', 200, 205);
  INSERT INTO presentacion Values('Oct-dic-2013', 202, 205);
  INSERT INTO presentacion Values('Ago-nov-2013', 402, 304);
  INSERT INTO presentacion Values('Ago-nov-2013', 400, 304);
  INSERT INTO presentacion Values('Jul-ago-2013', 114, 304);
  INSERT INTO presentacion Values('Jul-ago-2013', 111, 304);