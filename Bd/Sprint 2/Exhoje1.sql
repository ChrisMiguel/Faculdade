create database sprint2;
use sprint2;
Create table Musica(
IdMusica Int Primary Key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40) 
);

Create table Album(
idAlbum Int Primary Key auto_increment,
nome varchar(30),
tipo varchar(7),
dtLancamento Date
)auto_increment = 100;
Desc Album;
Insert Into album values 
(null, 'Sinistro', 'digital', '2023-04-10');
Select * From album;
Insert Into album Values 
(null, 'Shhh...', 'digital', '2021-09-1');
Select * From album;
ALTER TABLE musica ADD COLUMN fkmusica INT,
ADD CONSTRAINT fkmus FOREIGN KEY (fkmusica)
REFERENCES album(idAlbum);
Desc Album;

Desc musica;
Insert Into Musica Values 
(Null, 'Confissões', 'Sid', 'Rap', 100);
Select * From musica;
Insert Into Musica Values 
(null, 'Isso vale minha vida', 'Sid', 'Rap', 100),
(null, 'Chega de falar de ice', 'Leozin', 'Trap', 101);
Select * From Musica;

SELECT * FROM musica JOIN album
    ON idalbum = fkmusica;
    
    SELECT
musica.titulo,
album.nome
FROM musica JOIN album
	ON musica.fkmusica = album.idalbum;
    
   SELECT
musica.titulo,
album.nome
FROM musica JOIN album
	ON musica.fkmusica = album.idalbum
    Where tipo = 'digital';    

