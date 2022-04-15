/*Provincies*/
INSERT INTO `pizzeria`.`provincia` (`nomprovincia`) VALUES ('Barcelona');
INSERT INTO `pizzeria`.`provincia` (`nomprovincia`) VALUES ('Girona');
INSERT INTO `pizzeria`.`provincia` (`nomprovincia`) VALUES ('Tarragona');
INSERT INTO `pizzeria`.`provincia` (`nomprovincia`) VALUES ('Lleida');
/* Localitats */
INSERT INTO `pizzeria`.`localitat` (`localitat`, `provincia_idprovincia`) VALUES('Salt', 2);
INSERT INTO `pizzeria`.`localitat` (`localitat`, `provincia_idprovincia`) VALUES('Emposta', 3);
INSERT INTO `pizzeria`.`localitat` (`localitat`, `provincia_idprovincia`) VALUES('Mollet', 1);
INSERT INTO `pizzeria`.`localitat` (`localitat`, `provincia_idprovincia`) VALUES('Barcelona', 1);
INSERT INTO `pizzeria`.`localitat` (`localitat`, `provincia_idprovincia`) VALUES('Alpicat', 4);

/*Client*/
INSERT INTO `pizzeria`.`client` (`nom`,`cognoms`,`adreça`,`cp`,`localitat_idlocalitat`) VALUES ('David','Rodri','Adreça1','069847',1); -- salt 1
INSERT INTO `pizzeria`.`client` (`nom`,`cognoms`,`adreça`,`cp`,`localitat_idlocalitat`) VALUES ('Mercel','messi','Adreça2','07454',3); -- mollet 3
INSERT INTO `pizzeria`.`client` (`nom`,`cognoms`,`adreça`,`cp`,`localitat_idlocalitat`) VALUES ('Joan','Mestre','Adreça2','09898',3); -- Mollet 3
INSERT INTO `pizzeria`.`client` (`nom`,`cognoms`,`adreça`,`cp`,`localitat_idlocalitat`) VALUES ('Anna','Figarola','Adreça3','02555',4); -- BCN 4
INSERT INTO `pizzeria`.`client` (`nom`,`cognoms`,`adreça`,`cp`,`localitat_idlocalitat`) VALUES ('Laura','fernandez','Adreça4','08544',5); -- Alpicat 5
INSERT INTO `pizzeria`.`client` (`nom`,`cognoms`,`adreça`,`cp`,`localitat_idlocalitat`) VALUES ('LLluis','salat','Adreça5','01235',5); -- alpicat 5

/*Categoria pizza*/
INSERT INTO `pizzeria`.`CategoriaPizza` (`Categoria`) VALUES ('CategoriaPizza1');
INSERT INTO `pizzeria`.`CategoriaPizza` (`Categoria`) VALUES ('CategoriaPizza2');
INSERT INTO `pizzeria`.`CategoriaPizza` (`Categoria`) VALUES ('CategoriaPizza3');

/*Botiga*/
INSERT INTO `pizzeria`.`Botiga` (`Nom`, `Adreça`, `codigPostal`, `localitat_idlocalitat`) VALUES ('Ciutadella', 'Pujades 10','08055',4); -- bcn
INSERT INTO `pizzeria`.`Botiga` (`Nom`, `Adreça`, `codigPostal`, `localitat_idlocalitat`) VALUES ('Montjuic', 'castell 110','08075',4);-- bcn
INSERT INTO `pizzeria`.`Botiga` (`Nom`, `Adreça`, `codigPostal`, `localitat_idlocalitat`) VALUES ('Abadesa', 'Passeig 10','02544',1); -- salt 1
INSERT INTO `pizzeria`.`Botiga` (`Nom`, `Adreça`, `codigPostal`, `localitat_idlocalitat`) VALUES ('Seu', 'laseu 110','52555',5); -- alpicat
INSERT INTO `pizzeria`.`Botiga` (`Nom`, `Adreça`, `codigPostal`, `localitat_idlocalitat`) VALUES ('M Centre', 'centric 1','25555',3); -- mollet
INSERT INTO `pizzeria`.`Botiga` (`Nom`, `Adreça`, `codigPostal`, `localitat_idlocalitat`) VALUES ('Ebre', 'riu gran 157','06989',2); -- emposta

/*Empleats*/
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Albert', 'Cognom1', '11111111A', '111111', 'cuiner',1);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Xavi', 'Cognom2', '2222222B', '222222', 'repartidor',1);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Dolors', 'Cognom3', '333333C', '333333', 'cuiner',2);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Jaume', 'Cognom4', '444444444D', '444444', 'repartidor',2);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Montse', 'Cognom5', '5555555E', '55555555', 'cuiner',3);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Jordi', 'Cognom6', '6666666F', '666666', 'repartidor',3);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Maria', 'Cognom7', '7777777G', '77777777', 'cuiner',4);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Josep', 'Cognom8', '8888888H', '8888888', 'repartidor',4);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Ana', 'Cognom9', '999999999I', '999999999', 'cuiner',5);
INSERT INTO `pizzeria`.`Empleats` (`Nom`, `Cognoms`, `nif`, `Telf`, `tipusTreballador`, `Botiga_idBotiga`) VALUES ('Laia', 'Cognom10', '123456789P', '1234564', 'repartidor',5);

/*Productes*/
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Pizza Carbonara', 11.34, 'pizza',1);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Pizza Margarita', 10, 'pizza',2);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Pizza Calzone', 14.85, 'pizza',3);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Pizza 4 estacions', 9.58, 'pizza',1);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Cervesa Voll-Damm', 5.50, 'beguda',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Coca Cola', 3.50, 'beguda',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Cervesa Turia', 4.30, 'beguda',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Aqurius', 3, 'beguda',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Hamburguesa completa', 9.50, 'hamburguesa',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Hamburguesa Americana patates', 12.50, 'hamburguesa',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Hamburguesa amb formatge', 5.95, 'hamburguesa',null);
INSERT INTO `pizzeria`.`Productes` (`NomProducte`, `Preu`, `tipusProducte`, `CategoriaPizza_idCategoriaPizza`) VALUES ('Hamburguesa vegeteriana', 15.50, 'hamburguesa',null);

/*Comandes*/
INSERT INTO `pizzeria`.`comandes` (`tipusComanda`, `detallComanda`, `preuTotal`, `client_idclient`, `Botiga_idBotiga`, `idEmpleats`, `horaEntrega`) VALUES ('local', '2 pizzes, 1 beguda', 35.50, 1, 1, 1, null);

INSERT INTO `pizzeria`.`comandes` (`tipusComanda`, `detallComanda`, `preuTotal`, `client_idclient`, `Botiga_idBotiga`, `idEmpleats`, `horaEntrega`) VALUES ('domicili', '4 pizzes, 1 hamburguesa, 5 beguda', 59.34, 2, 1, 2, now());

INSERT INTO `pizzeria`.`comandes` (`tipusComanda`, `detallComanda`, `preuTotal`, `client_idclient`, `Botiga_idBotiga`, `idEmpleats`, `horaEntrega`) VALUES ('domicili', '1 pizzes, 1 beguda', 14.30, 2, 1, 2, now());

INSERT INTO `pizzeria`.`comandes` (`tipusComanda`, `detallComanda`, `preuTotal`, `client_idclient`, `Botiga_idBotiga`, `idEmpleats`, `horaEntrega`) VALUES ('domicili', '1 pizzes, 1 beguda', 17.85, 6, 4, 8, now());

/*ProductesComandes*/

INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (1, 1, 1); -- p carbonara
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (1, 2, 1); -- p margarita
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (1, 5, 1); -- volldam

INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (2, 1, 1); -- p carbonara
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (2, 2, 3); -- p margarita
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (2, 10, 1); -- Hamburguesa Americana patates
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (2, 5, 2); -- Cervesa Voll-Damm
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (2, 6, 2); -- Coca Cola
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (2, 7, 1); -- Cervesa Turia

INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (3, 1, 1); -- p carbonara
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (3, 7, 1); -- Cervesa Turia

INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (4, 3, 1); -- p calzone
INSERT INTO `pizzeria`.`ProductesComandes` (`comandes_idcomandes`, `Productes_idProductes`,`quantitat`) VALUES (4, 8, 1); -- aquarius