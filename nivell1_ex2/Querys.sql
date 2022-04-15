
-- Llista quants productes de categoria 'Begudas' s'han venut en una determinada localitat
use pizzeria;

SELECT SUM(pc.quantitat) as quanitat from Productes p
inner join ProductesComandes pc on pc.Productes_idProductes = p.idProductes
inner join Comandes c on c.idcomandes = pc.comandes_idcomandes
-- entenc que bolem saber la localitat de la botiga (on es ven... no d'on es el client, tot i que tambe es podria treure fen el inner join a la taula client)
inner join Botiga b on b.idBotiga = c.Botiga_idBotiga
inner join localitat l on l.idlocalitat = b.localitat_idlocalitat
where p.tipusProducte = 'beguda' and l.localitat = 'Barcelona'; -- o BCN o Alpicat



-- Llista quantes comandes ha efectuat un determinat empleat
use pizzeria;
SELECT count(idcomandes) from Comandes c
inner join Empleats e on e.idEmpleats =c.idEmpleats
where e.Nom = 'Xavi'; -- Xavi, Albert o Josep;