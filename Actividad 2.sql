------------------ACTIVIDAD 2 ----------------------
/*1.- Eliminamos la base de datos db_SalesClothes */
DROP DATABASE IF EXISTS db_SalesClothes
GO

/*2.- Creamos la base de datos Sales Clothes */
CREATE DATABASE db_SalesClothes
GO

/* 3.- Poner en uso la base de datos */
USE db_SalesClothes
GO

/* 4.- Configurar idioma español en el servidor */
SET LANGUAGE Español
GO
SELECT @@language AS 'Idioma'
GO

/* 5.- Configurar el formato de fecha */
SET DATEFORMAT dmy
GO


/* 6.- Insertar los  8 registros */
INSERT INTO client 
(type_document, number_document, names, last_name, email, cell_phone, birthdate,active)
VALUES
('DNI', '78451233', 'Fabiola', 'Perales Campos', 'fabiolaperales@gmail.com', '991692597', '19/01/2005','1'),
('DNI', '14782536', 'Marcos', 'Dávila Palomino', 'marcosdavila@gmail.com', '982514752', '03/03/1990','1'),
('DNI', '78451236', 'Luis Alberto', 'Barrios Paredes', 'luisbarrios@outlook.com', '985414752', '03/10/1995','1'),
('CNE', '352514789', 'Claudia María', 'Martínez Rodríguez', 'claudiamartinez@yahoo.com', '995522147', '23/09/1992','1'),
('CNE', '142536792', 'Mario Tadeo', 'Farfán Castillo', 'mariotadeo@outlook.com', '973125478', '25/11/1997','1'),
('DNI', '58251433', 'Ana Lucrecia', 'Chumpitaz Prada', 'anachumpitaz@gmail.com', '982514361', '17/10/1992','1'),
('DNI', '15223369', 'Humberto', 'Cabrera Tadeo', 'humbertocabrera@yahoo.com', '977112234', '27/05/1990','1'),
('CNE', '442233698', 'Rosario', 'Prada Velasquez', 'rosarioprada@outlook.com', '971144782', '11/05/1990','1')
GO



/*7.- Insertar los siguientes registros en la tabla seller*/
INSERT INTO seller 
(type_document, numer_document, names, last_name,salary, cell_phone, email, active)
VALUES
('DNI', '11224578', 'Oscar', 'Paredes Flores', '1025', '985566251', 'oparedes@miempresa.com','1'),
('CNE', '889922365', 'Azucena', 'Valle Alcazar', '1025', '966338874', 'avalle@miempresa.com','1'),
('DNI', '44771123', 'Rosario', 'Huarca Tarazona', '1025', '933665521', 'rhuaraca@miempresa.com','1')
GO

/*8.- Insertar los siguientes registros en la tabla clothes*/
INSERT INTO clothes
(descriptions, brand, amount, size,price, active )
VALUES
('Polo camisero', 'Adidas', '20', 'Medium', '40.25','1'),
('Short playero', 'Nike', '30', 'Medium', '55.50','1'),
('Camisa sport', 'Adams', '60', 'Large', '60.80','1'),
('Camisa sport', 'Adams', '70', 'Medium', '58.75','1'),
('Buzo de verano', 'Reebok', '45', 'Small', '62.90','1'),
('Pantalon Jean', 'Lewis', '35', 'Large', '73.60','1')
GO


/*9.- Listar todos los datos de los clientes (client) cuyo tipo de documento sea DNI*/
select * from client where type_document = 'DNI';

/*10.- Listar todos los datos de los clientes (client) cuyo servidor de correo electrónico sea outlook.com.*/
select * from client where email= '@@outlook.com';

/*11.- Listar todos los datos de los vendedores (seller) cuyo tipo de documento sea CNE*/
select * from client where type_document = 'CNE';

/*12.- Listar todas las prendas de ropa (clothes) cuyo costo sea menor e igual que S/. 55.00*/
select * from clothes where price <= 55;

/*13.- Listar todas las prendas de ropa (clothes) cuya marca sea Adams*/
select * from clothes where brand = 'Adams';

/*14.- Eliminar lógicamente los datos de un cliente client de acuerdo a un determinado id*/            -- 
delete from client;                                                                               --
                                                                                                  --
/*15.- Eliminar lógicamente los datos de un cliente seller de acuerdo a un determinado id*/            --
delete from seller;

/*16.- Eliminar lógicamente los datos de un cliente clothes de acuerdo a un determinado id.*/          -- 
delete from clothes;

----------------------------------------------------------------------------------------------------