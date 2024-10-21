CREATE TABLE produto (
	codprod int,
	descricao varchar(40) not null,
	valorprod real
);

ALTER TABLE produto
ADD COLUMN datacompra DATE;

ALTER TABLE produto
ADD CONSTRAINT pk_codprod PRIMARY KEY (codprod);

ALTER TABLE produto
ALTER COLUMN valorprod SET NOT NULL;

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (1, 'caneta preta', 5.00, '2023-09-23')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (2, 'caneta azul', 6.00, '2022-12-13')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (3, 'lápis', 4.00, '2023-05-05')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (4, 'caderno', 15.00, '2023-09-29')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (5, 'marca texto', 10.00, '2023-02-14')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (6, 'apontador', 3.00, '2023-04-02')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (7, 'grampeador', 8.00, '2022-10-27')

INSERT INTO produto (codprod, descricao, valorprod, datacompra)
VALUES (8, 'cola', 7.00, '2023-11-03')

UPDATE produto
SET descricao = 'caderno 10 materia'
WHERE codprod = 4;

UPDATE produto
SET valorprod = 9.00
WHERE codprod = 8;

DELETE FROM produto
WHERE codprod = 6;
