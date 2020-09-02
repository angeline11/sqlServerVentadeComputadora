CREATE DATABASE CentroDeVentaDeComputadoras;
DROP TABLE VENTAS
CREATE TABLE VENTAS 
   (IdVenta int PRIMARY KEY NOT NULL,
   IdCliente int NOT NULL,
   Fecha date NOT NULL,
   Cliente varchar(30) NOT NULL,
   IdProducto int,
   NombreProducto varchar(45) NOT NULL, 
   DescripcionProducto varchar(max) NULL,
   Cantidad int NOT NULL,
   Descuento double precision,
   Total double precision NOT NULL);
CREATE TABLE CLIENTE(
	IdCliente int PRIMARY KEY NOT NULL,
	NombresCliente varchar(50),
	ApellidosCliete varchar(50),
	CedulaIdentificacion int,
	Direccion varchar (40),
	Telefono int,
	Emailcliente varchar(30))
;
DROP TABLE COMPUTADORA;
CREATE TABLE COMPUTADORA(
	Id_Producto int PRIMARY KEY NOT NULL,
	NombreProducto varchar(25),
	DescripcionProducto varchar(max),
	Marca varchar(15),
	Procesador varchar(15),
	RAM varchar (15),
	Almacenamiento varchar(15),
	Precio double precision
)
SELECT * FROM COMPUTADORA
DROP TABLE COMPUTADORA
INSERT INTO COMPUTADORA(Id_Producto,NombreProducto,DescripcionProducto,Marca,Procesador,RAM,Almacenamiento,Precio)VALUES
(1,'Computadora de escritorio','Color negro, septima generación','Dell','Intel Core i5','8GB','1tb',598),
(2,'Laptop','Pantalla 14 pulgadas, color blanco, septima generación','Dell','Intel Core i7','4GB','1tb',648),
(3,'NoteBook','Pantalla 14 pulgadas,color blanco, sexta generación','Dell','Intel Core i7','8GB','1tb',648),
(4,'Laptop','Pantalla 15 pulgadas, color negro, quinta generación','Toshiba','Intel Dual core','4GB','500GB',410),
(5,'Notebook','Pantalla 14 pulgadas, color roja, septima generación','Dell','Intel Core i7','4GB','500GB',450),
(6,'Laptop','Pantalla 15 pulgadas, color roja, sexta generación','Dell','intel Core i7','16GB','1tb',790),
(7,'Computadora de escritorio','Color blanco, septima generación','Toshiba','Intel Celeron','16GB','1tb',850),
(8,'Laptop','Pantalla 14 pulgadas, color roja, quinta generación','Hp','AMD Ryzen 5 ','16GB','1tb',650),
(9,'Laptop','Pantalla 15 pulgadas, color blanco, sexta generación','Dell','intel Core i7','16GB','500GB',670),
(10,'Computadora de escritorio','Color negro, septima generación','Dell','Intel Celeron','8GB','500 GB',455)
INSERT INTO VENTAS(IdVenta,IdCliente,Fecha,Cliente,IdProducto,NombreProducto,DescripcionProducto,Cantidad,Descuento,Total)VALUES
(1,5,'23-02-2020','Eduardo Pico',2,'Laptop Dell','Color blanco,septima generación Intel Core i7 4GB',2,0,1296),
(2,4,'14-05-2019','Angie Pilligua',4,'Laptop Toshiba','Color negro, quinta generación Intel Core i7 4GB',1,0,410),
(3,5,'03-06-2020','Eduardo Pico',5,'Notebook Dell','Color roja,septima generación Intel Core i7 4GB',2,0,900),
(4,3,'29-07-2020','Justin Macías',1,'Computadora de escritorio Dell','Color negro,septima generación Intel Core i5 8GB',2,0,1196),
(5,9,'22-04-2020','Kenny Muñiz',9,'Laptop Dell','Color blanco,sexta generación Intel Core i7 16GB',1,0,1340),
(6,6,'12-06-2019','Melany Lema',8,'Laptop HP','Color roja,quinta generación AMD Ryzen 5 16GB',3,0,1950),
(7,6,'18-03-2010','Melany Lema',7,'Computadora de escritorio Toshiba','Color blanco, septima generación Intel Celeron 16GB',1,0,850),
(8,1,'05-06-2020','Mariela Pilligua',3,'Notebook Dell','Color blanco, sexta generación Intel Core i7 8GB',1,0,648),
(9,8,'20-07-2020','Vanessa Macías',7,'Computadora de escritorio Toshiba','Color blanco, septima generación Intel Celeron 16GB',2,0,1700),
(10,7,'21-04-2020','Melissa Alay',6,'Laptop Dell','Color roja, sexta generación Intel Core i7 16GB',1,0,790),

INSERT CLIENTE(IdCliente,NombresCliente,ApellidosCliete,CedulaIdentificacion,Direccion,Telefono,Emailcliente)VALUES
(1,'Audrey Mariela','Pilligua Carrillo',1300870345,'Santa Mónica',0962894531,'Audrey_p01@gmail.com'),
(2,'Angie Belén','Pilligua Patiño',1350120457,'Santa Marianita',0984537829,'pilligua03@gmail.com'),
(3,'Justin Abel','Macías Velez',1306789032,'San Mateo',0982349851,'maciasjustin5@gmail.com'),
(4,'Angel Dionicio','Pilligua Lúcas',1306527892,'Santa Martha',0996672345,'angelpl02@gmail.com'),
(5,'Juan Eduardo','Pico Franco',1351267845,'Barbasquillo',0996783452,'juanpicof2@gmail.com'),
(6,'Melany Roxana','Lema Indacochea',1309824562,'Manta 2000',0985647823,'melIndacochea5@gmail.com'),
(7,'Melissa Viviana','Alay Rodriguez',1387534719,'Santa Marianita',0996672355,'rodriguezmel@gmail.com'),
(8,'Vanessa Nicole','Macías Mera',1357623411,'San Mateo',0988872312,'vanemacias01@gmail.com'),
(9,'Kenny Reinaldo','Muñiz Figueroa',1354426713,'Santa Martha',0985567342,'reykenny00@gmail.com'),
(10,'Jean Carlos','Quiñonez Marin',1353325621,'Barbasquillo',0991928346,'jeanmarin03@gmail.com')

select *from COMPUTADORA
create login administrador with password='123456'
create user reportes for login administrador
create role reporte1
alter role reporte1 add member[reportes]
grant select to reporte1
