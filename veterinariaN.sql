DROP SCHEMA IF EXISTS veterinaria;
CREATE SCHEMA veterinaria;
USE veterinaria;

drop table if exists producto;
drop table if exists mascota;
drop table if exists cliente;
drop table if exists empleado;
drop table if exists servicio;

-- TABLA DE PRODUCTOS
Create table producto
(
	pro_id int auto_increment primary key,
	pro_tipo ENUM('Alimento','Aseo','Accesorio'),
	pro_nombre varchar(40) not null,
	pro_costo double(8,2) not null,
	pro_unid int not null,
	pro_pv  double(8,2) not null
);

-- INSERCIÓN EN LA TABLA DE PRODUCTOS
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Donkan carne y cereal 22kg',58200,10,66931);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Dogourmet carneparrilla adulto 22kg',93733,10,107794);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Dogourmet carneparrilla adulto 400g',2186,10,2515);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Italcan carne y verduras 25kg',60607,10,69699);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Medicina','Chunky cordero 12kg',87632,10,100777);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Ohmaigat caseros 500g',5330,10,6130);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Dog Chow Adultos 22,7kg',145292,10,167086);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Ocelatus 720gr',1630.50,10,1875);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Aseo','Arena fofijazmin 5kg',14000,10,16100);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Cabanos 1kg',8000,10,9200);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Monello cat 15kg',128108,10,147324);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Alimento','Incros14,2g',2021,10,2425);
insert into producto(pro_tipo,pro_nombre,pro_costo,pro_unid,pro_pv) values('Accesorio','Palas gato',2160,10,2592);

-- TABLA DE EMPLEADOS
create table empleado
(
	emp_id int auto_increment primary key,
	emp_nombre varchar(30) not null,
	emp_telefono bigint not null,
	emp_correo varchar(20) null,
    emp_estado ENUM('activo','inactivo') DEFAULT 'activo'
);

-- INSERCIÓN DE EMPLEADOS
insert into empleado(emp_nombre,emp_telefono) values('Angie Baños','3188645236');
insert into empleado(emp_nombre,emp_telefono) values('Nevardo Efrain Baños','3146782904');
insert into empleado(emp_nombre,emp_telefono) values('Catalina Anzola Pavon','3118970221');
insert into empleado(emp_nombre,emp_telefono) values('Valentina Rodriguez','3141592653');


-- TABLA DE CLIENTES
create table cliente
(
	cli_id int auto_increment primary key,
	cli_nombre varchar(30) not null,
	cli_celular BIGINT,
	cli_celular2 BIGINT
);
-- INSERCION DE CLIENTES
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Dumar Cendales',3133240933,3118634645);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Johanna Méndez',3123210933,3045489120);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Wilson Contreras',3102718281,3156879043);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Alejandra Pulido',3016751264,3164654954);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Hernán Sánchez',3135624231,3208082839);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Olga Pardo',3144378409,3109471214);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Maleja González',3227916509,3006213625);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Katherine Bastidas',3112496603,3212032553);
Insert into cliente(cli_nombre, cli_celular, cli_celular2) values('Camila Patiño',3138343323,3142102214);

-- TABLA DE MASCOTAS
create table mascota
(
	mas_id int auto_increment primary key,
	mas_nombre varchar(10) not null,
	mas_tipo ENUM('Perro','Gato','Hamster','Conejo','Loro','Pez') not null,
	mas_raza varchar(20) not null,
	mas_peso DOUBLE(5,2) not null,
	mas_sexo ENUM('m','h') not null, 
	mas_tamano double(5,2) not null,
	mas_des_social varchar(50) null,
	mas_edad double(5,2) null,
	mas_dueno int not null,
	foreign key (mas_dueno) references cliente(cli_id)
);

alter table mascota auto_increment=100;
-- INSERCIÓN DE MASCOTAS
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Max','Perro','Labrador',52.8,'m',52,'Juguetón excepto con los perros de su misma raza',5,1);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Lula','Perro','French poodle',13,'h',30,NULL,3,2);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Rufo','Perro','Pitbull',22.3,'m',49,NULL,2,3);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Rodolfo','Perro','Beagle',11.4,'m',37,'Territorial, es cazador. Ha atacado palomas',1.25,4);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Tony','Perro','Criollo',38888,'m',42,'Miedoso, fue recogido de la calle',NULL,7);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Toby','Perro','Criollo',32,'m',37,'Miedoso, fue recogido de la calle',NULL,7);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Princesa','Perro','Baset hound',null,'h',32,'Perezoso',3.25,7);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Pelusa','Gato','Ragdoll',7,'h',36,'Esquivo, tranquilo',4,5);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Manchas','Gato','Criollo',5.3,'h',23,NULL,NULL,5);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Tomas','Gato','Criollo',6.2,'m',27,NULL,NULL,5);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Terry','Perro','Pitbull',6,'m',13,'Juguetón',4/12,4);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Niña','Perro','Criollo',17,'h',32,'Juguetón',3,16);
insert into mascota(mas_nombre,mas_tipo,mas_raza,mas_peso,mas_sexo,mas_tamano,mas_des_social,mas_edad,mas_dueno) values('Lemus','Hamster','Ruso',30/1000,'m',7.4,NULL,7/12,8);

-- TABLA DE SERVICIOS
create table servicio
(
	ser_id char(1) not null primary key,
	ser_nombre varchar(20) not null
);
-- Inserción de servicios
insert into servicio(ser_id, ser_nombre) values('P','Peluqueria');
insert into servicio(ser_id, ser_nombre) values('G','Guarderia');
insert into servicio(ser_id, ser_nombre) values('C','Consulta');
insert into servicio(ser_id, ser_nombre) values('V','Venta');

-- TABAL DE FACTURA DE PRODUCTOS
create table factura
(
	fact_id int auto_increment primary key,
	fact_fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    mas_id int not null,
	emp_id int null,
    ser_id char(1) not null,
	fact_costo int not null,
	foreign key (emp_id) references empleado(emp_id),
	foreign key (mas_id) references mascota(mas_id),
	foreign key (ser_id) references servicio(ser_id)
);

insert into factura(mas_id,emp_id,ser_id, fact_costo) values(100, 4, 'P', 50000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(108, 3, 'G', 100000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(109, 3, 'G', 100000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(112, 4, 'C', 20000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(111, 1, 'P', 50000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(102, 2, 'V', 35000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(103, 4, 'P', 50000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(105, 4, 'P', 50000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(110, 2, 'V', 35000);
insert into factura(mas_id,emp_id,ser_id, fact_costo) values(100, 4, 'F', 50000);

create table factura_venta
(
	fact_vta_id int primary key,
	fact_vta_producto int not null,
	foreign key (fact_vta_id) references factura(fact_id),
    foreign key (fact_vta_producto) references producto(pro_id)
);

insert into factura_venta values(6, 3);
insert into factura_venta values(9, 9);
