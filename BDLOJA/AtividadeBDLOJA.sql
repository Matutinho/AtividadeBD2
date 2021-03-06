CREATE DATABASE LOJA;

SHOW DATABASE;

USE LOJA;

CREATE TABLE CLIENTE(
	CODIGO INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	NOME VARCHAR(10) NOT NULL,
	SOBRENOME VARCHAR(20) NULL,
	DATA DATE NOT NULL,
	IDADE INT NULL,
	CPF INT NOT NULL,
	SEXO VARCHAR(10) NOT NULL,
);

ALTER TABLE CLIENTE ADD SALARIO DECIMAL(5,2);

ALTER TABLE CLIENTE MODIFY DATA DTNASCTO;

INSERT INTO CLIENTE (NOME,SOBRENOME,DATA,IDADE,CPF,SEXO, SALARIO) VALUE ('LEO','PIRES',10/10/1980,34,123456789,'M',540.00);

INSERT INTO CLIENTE (NOME,SOBRENOME,DATA,IDADE,CPF,SEXO,SALARIO) VALUE (1,'LEONCIO','SILVA',01/05/1982,32,987654321,'M',1.500.0);

INSERT INTO CLIENTE (NOME,SOBRENOME,DATA,IDADE,CPF,SEXO,SALARIO) VALUE (1,'LEANDRO','SOUZA',30/12/1960,54,654987321,'M',2.000.00);

INSERT INTO CLIENTE (NOME,SOBRENOME,DATA,IDADE,CPF,SEXO,SALARIO) VALUE (1,'ANA','FELIX',25/11/1962,52,321456789,'F',2.300.00);

DESC TABLE CLIENTE;

SELECT CODIGO,NOME,IDADE FROM CLIENTE;

SELECT SALARIO,IDADE FROM CLIENTE WHERE NOME = "LEO";

DROP IDADE FROM CLIENTE;

ALTER TABLE CPF MODIFY CPF VARCHAR(11);

SELECT * FROM CLIENTE WHEN SALARIO >= 1.000 ORDER BY SALARIO;

ALTER TABLE CLIENTE ADD BAIRRO CHAR(20) NOT NULL;

INSERT INTO CLIENTE (NOME,SOBRENOME,DTNASCTO,CPF,SEXO,SALARIO,BAIRRO) VALUE ("PAULA","CASTRO",30/11/1963,221456789,"F",680,00,"INGÁ");

ALTER TABLE CLIENTE MODIFY SEXO CHAR(1);

INSERT INTO CLIENTE (BAIRRO) VALUE ("CENTRO"),("CENTRO"),("ICARAÍ");

SELECT DISTINCT BAIRRO FROM CLIENTE;

SELECT NOME,SOBRENOME,CPF WHERE NOME = "LEO";

SELECT MAX(SALARIO) AS SALARIO FROM CLIENTE;

SELECT MIN(IDADE) AS BAIRRO FROM CLIENTE;

SELECT COUNT(NOME) FROM CLIENTE LIKE "%LE%";



