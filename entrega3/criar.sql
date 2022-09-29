PRAGMA foreign_keys=on;

.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS Empresa;
DROP TABLE IF EXISTS Cinema;
DROP TABLE IF EXISTS Sala;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Filme;
DROP TABLE IF EXISTS Sessao;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Ator;
DROP TABLE IF EXISTS Realizador;
DROP TABLE IF EXISTS Bilhete;
DROP TABLE IF EXISTS Subscricao;
DROP TABLE IF EXISTS Categoria;
DROP TABLE IF EXISTS FilmeCategoria;
DROP TABLE IF EXISTS CinemaFilme;
DROP TABLE IF EXISTS FilmeAtor;
DROP TABLE IF EXISTS FilmeRealizador;

CREATE TABLE Empresa (
	empresaId		INTEGER PRIMARY KEY AUTOINCREMENT,
	nome 			VARCHAR(30) NOT NULL,
	dono 			VARCHAR(30)
);

CREATE TABLE Cinema (
	cinemaId 		INTEGER PRIMARY KEY AUTOINCREMENT,
	horaAbertura 		TIME, 
	horaEncerramento	TIME, 
	localizacao		VARCHAR(30)

);

CREATE TABLE Sala (

	salaId			INTEGER PRIMARY KEY AUTOINCREMENT,

	cinemaId		REFERENCES Cinema, 

	nDaSala 		INTEGER NOT NULL,
	lotacao 		INTEGER CHECK (lotacao >= 0),


	CONSTRAINT sala_uc UNIQUE(cinemaId,nDaSala)
);


CREATE TABLE Cliente (
	clienteId		INTEGER PRIMARY KEY AUTOINCREMENT,
	nome 			VARCHAR(30) NOT NULL,
	dataDeNascimento 	DATE CHECK (dataDeNascimento < '2022-01-30'), 
	
	subscricaoId		REFERENCES Subscricao

);

CREATE TABLE Filme (
	filmeId			INTEGER PRIMARY KEY AUTOINCREMENT,
	nome			VARCHAR(30) NOT NULL,
	dataEstreia		DATE,
	linguagem		VARCHAR(30),

	duracao			REAL CHECK (duracao > 0),
	idadeMinima		INTEGER CHECK (idadeMinima >= 3),

	CONSTRAINT linguagem_check CHECK (
 		linguagem = 'PORTUGUES' OR
           	linguagem = 'FRANCES' OR
 	        linguagem = 'INGLES' OR 
		linguagem = 'ESPANHOL' OR 
 		linguagem = 'ITALIANO'
	)
);

CREATE TABLE Sessao (
	
	sessaoId			INTEGER PRIMARY KEY AUTOINCREMENT,

	filmeId			REFERENCES Filme,
	salaId 			REFERENCES Sala,

	horario			VARCHAR(30) NOT NULL,

	data			DATE CHECK (data < '2022-01-30'),

	dimensao		VARCHAR(2) CHECK(dimensao = '2d' OR dimensao = '3d'),

	lugaresOcupados		INTEGER DEFAULT 0,

	CONSTRAINT sessao_uc UNIQUE(filmeId,salaId,horario,data)
	
);


CREATE TABLE Ator (
	atorId			INTEGER PRIMARY KEY AUTOINCREMENT,
	nome                    VARCHAR(30) NOT NULL,
        dataDeNascimento        DATE CHECK (dataDeNascimento < '2022-01-30' ),

	papel			VARCHAR(30) NOT NULL --primario ou secundario

);

CREATE TABLE Realizador (
	realizadorId			INTEGER PRIMARY KEY AUTOINCREMENT,
	nome                    VARCHAR(30) NOT NULL,
        dataDeNascimento        DATE CHECK (dataDeNascimento < '2022-01-30')
	
);

CREATE TABLE Bilhete (
	bilheteId		INTEGER PRIMARY KEY AUTOINCREMENT,
	
	clienteId 		REFERENCES Cliente,
	sessaoId 		REFERENCES Sessao,

	preco 			REAL CHECK(preco >= 0),
	nAssento		INTEGER NOT NULL

);

CREATE TABLE Subscricao (
	subscricaoId 		INTEGER PRIMARY KEY AUTOINCREMENT,

	empresaId REFERENCES Empresa,

	desconto		INTEGER CHECK ( desconto >= 0 AND desconto <= 100) 

);

CREATE TABLE Categoria (
	nome			VARCHAR(30) PRIMARY KEY,

	CONSTRAINT categoria_check CHECK (
		nome = 'ACAO' OR 
    		nome = 'COMEDIA' OR 
    		nome = 'DRAMA' OR
    		nome = 'ROMANCE' OR 
    		nome = 'TERROR')

);

CREATE TABLE FilmeCategoria (
	filmeId			REFERENCES Filme,
	categoriaId		REFERENCES Categoria,

	CONSTRAINT filmeCategoria_pk PRIMARY KEY (filmeId, categoriaId)
);

CREATE TABLE CinemaFilme (
	cinemaId		REFERENCES Cinema,
	filmeId			REFERENCES Filme,

	CONSTRAINT cinemaFilme_pk PRIMARY KEY (cinemaId, filmeId)
);

CREATE TABLE FilmeAtor (
	filmeId 		REFERENCES Cinema,
	atorId			REFERENCES Ator,

	CONSTRAINT filmeAtor_pk PRIMARY KEY (filmeId, atorId)
);


CREATE TABLE FilmeRealizador (
	filmeId 		REFERENCES Cinema,
	realizadorId		REFERENCES Realizador,

	CONSTRAINT filmeRealizador_pk PRIMARY KEY (filmeId, realizadorId)
);
