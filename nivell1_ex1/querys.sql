/*Inserta dades a taules*/
INSERT INTO `culAmpolla`.`clients`
(`NIF`, `nom`, `adreça`, `telefon`, `email`, `dataRegistre`, `idReferencia`) VALUES 
(12345678, 'A', 'AA', 123456789, 'a@a.com', now(), null),
(87654321, 'B', 'BB', 0123456, 'b@b.com', now(), 123456789), 
(12348765, 'C', 'CC', 6543210, 'c@c.com', now(), 87654321);

INSERT INTO `culAmpolla`.`empleats`
(`nomEmpleat`) VALUES ('Empleat1'),('Empleat2'), ('Empleat3') ;

INSERT INTO `culAmpolla`.`proveidor`
(`NIF`, `Nom`, `carrer`, `numero`, `pis`, `porta`, `codiPostal`, `pais`, `telefono`) VALUES 
(1111111, 'Proveidor1', 'carrer', 1, 1, 2, 08465, 'Italia', 3945678998),
(22222222, 'Proveidor2', 'carrer', 1, 1, 2, 08465, 'España', 3145678998),
(33333333, 'Proveidor3', 'carrer', 1, 1, 2, 08465, 'França', 335245646);

INSERT INTO `culAmpolla`.`ulleres`
(`marca`, `gaduacio`, `TipusMuntura`, `colorVidre`, `proveidor_NIF`)VALUES 
('Rayban', 2, 'pasta', 'verd', 1111111),
('Rayban', 1, 'metàl·lica', 'negre', 1111111),
('HugoBoss', 2, 'flotant', 'blau', 22222222),
('Arnette', 3, 'metàl·lica', 'clar', 22222222),
('GUESS', 2, 'pasta', 'verd', 33333333),
('Tom Ford', 3, 'pasta', 'negre', 1111111);


INSERT INTO `culAmpolla`.`compra`
(`clients_NIF`, `ulleres_idUlleres`, `idEmpleat`, `data`) VALUES
(12345678, 1, 1, now() - INTERVAL 60 DAY),
(87654321, 2, 1, now()  - INTERVAL 30 DAY),
(12348765, 3, 1, now()  - INTERVAL 50 DAY),
(87654321, 3, 1, now() - INTERVAL 45 DAY),
(12348765, 1, 1, now()),
(12345678, 2, 1, now() + INTERVAL 1 HOUR);

/*Query*/
-- Llista el total de factures d'un client en un període determinat
USE culAmpolla;
select clients_NIF as NIFClient, ulleres_IdUlleres as IDUlleres, idEmpleat as IDEmpleat, data as DataCompra from 
compra where
clients_NIF = 87654321 
and
(data between now() - interval 100 day and now());
-- —s’han de alistar idUllers 2 i 3


-- Llista els diferents models d'ulleres que ha venut un empleat durant un any
USE culAmpolla;
select u.IdUlleres, u.marca,u.gaduacio, u.TipusMuntura, u.colorVidre, u.proveidor_NIF, e.nomEmpleat from 
empleats e
inner join compra c on c.idEmpleat = e.idEmpleat
inner join ulleres u on u.idUlleres = c.ulleres_idUlleres
where e.idEmpleat = 1
and (c.data between now() - interval 365 day and now())
group by u.IdUlleres;
-- s’han de llistar idUllers 1, 2 i 3

-- Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica
USE culAmpolla;
select u.proveidor_NIF, p.Nom from 
ulleres u
inner join compra c on u.idUlleres = c.ulleres_idUlleres
inner join proveidor p on p.NIF = u.proveidor_NIF
group by u.proveidor_NIF;
-- — no s’ha de alistar el proveedor3