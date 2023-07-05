CREATE DATABASE PerfectPlace;

USE PerfectPlace;

CREATE TABLE Empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (45),
    cnpj CHAR (14)
);

INSERT INTO Empresa VALUES
(null, 'SPTech', '12345678901234'),
(null, 'Safra', '11223344556677'),
(null, 'Safra', '22334455667788');

CREATE TABLE Usuario(
	idUsuario INT AUTO_INCREMENT,
    nome VARCHAR (20),
    sobrenome VARCHAR (20),
    email VARCHAR(60),
    senha CHAR (8),
    fkEmpresa INT,
    CONSTRAINT fkUsuarioEmpresa FOREIGN KEY (fkEmpresa) REFERENCES Empresa (idEmpresa),
    CONSTRAINT pkCompostaUsuarioEmpresa PRIMARY KEY (idUsuario, fkEmpresa)
);

SELECT * FROM Usuario;

CREATE TABLE LocalSensor(
	idLocal INT PRIMARY KEY AUTO_INCREMENT,
    bairro VARCHAR (25),
    rua VARCHAR (25),
    numero VARCHAR (5)
);

INSERT INTO LocalSensor VALUES
(null, 'Consolação', 'Rua haddock lobo', '595');


CREATE TABLE Sensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (20),
    funcionalidade VARCHAR (30),
    fkLocal INT,
    CONSTRAINT fkSensorLocal FOREIGN KEY (fkLocal) REFERENCES LocalSensor (idLocal)
);

INSERT INTO Sensor VALUES
(null, 'lm35', 'Temperatura', 1),
(null, 'dht11', 'Chave', 1);

CREATE TABLE Leitura(	
	idLeitura INT AUTO_INCREMENT,
    dado VARCHAR (10),
    fkSensor INT,
    DtLeitura DATETIME,
    CONSTRAINT fkLeituraSensor FOREIGN KEY (fkSensor) REFERENCES Sensor (idSensor),
    CONSTRAINT pkCompostaLeituraSensor PRIMARY KEY (idLeitura, fkSensor)
);

ALTER TABLE Leitura MODIFY COLUMN DtLeitura DATETIME default current_timestamp;

SELECT * FROM Leitura;
