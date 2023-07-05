Create database sprint1;
Use sprint1;
Create Table Musica(
idmusica Int Primary Key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

Select * From Musica;

Insert Into musica (titulo, artista, genero) Values
('Chega de falar de ice', 'Leozin', 'Trap'),
('Lembra de mim pai?', 'Krawk', 'Trap'),
('Poesia Acústica 13', 'Pineapple Storm Tv', 'Rap'),
('Cool for the Summer', 'Demi Lovato', 'Pop'),
('Find Me', 'Marshmello', 'Eletrônica'),
('Rockstar', 'Post Malone', 'Pop'),
('Lua', 'Costa Gold', 'trap');
DELETE FROM musica WHERE idmusica > '7';
 Select * From Musica;
 
Describe Musica; 
Select titulo, artista, genero From Musica;
Select * From musica Where genero = 'Trap';
Select * From musica Where artista = 'Krawk';
Select * From musica Where titulo = 'Poesia Acústica 13';
Select * From musica Order By artista Desc;
SELECT * FROM musica WHERE titulo LIKE 'P%';
SELECT * FROM musica WHERE artista LIKE '%K';
SELECT * FROM musica WHERE genero LIKE '_O%';
SELECT * FROM musica WHERE titulo LIKE 'I_';

Select * From Musica;
DROP TABLE Musica;

 







