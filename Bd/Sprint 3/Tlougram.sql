CREATE DATABASE tlougram;

USE tlougram;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

CREATE TABLE personagens (
id Int primary key auto_increment,
Joel Int,
Ellie Int,
Bill Int,
Infectados Int,
Tess Int,
fkusuario int,
FOREIGN KEY (fkusuario) REFERENCES usuario(id)
);

Create table mensagem(
id Int Primary key auto_increment,
comentario varchar(300)
);

SELECT * FROM personagens;
SELECT * FROM usuario;
SELECT * FROM aviso;

select count(joel) as Joel, count(ellie) as Ellie, count(bill) as Bill, count(infectados) as Infectados, count(tess) as Tess from personagens join usuario on usuario.id = fkusuario;

truncate table personagens;