/*Cinema(cinemaId, horaAbertura, horaEncerramento, localizacao)*/

insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('09:00:00', '23:00:00', 'Rua Das Flores');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('09:00:00', '23:00:00', 'Rua sao pedro');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('09:30:00', '20:00:00', 'Yonge Street');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('08:00:00', '18:00:00', 'International Drive');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('10:00:00', '14:00:00', '5ª avenida');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('09:45:00', '12:00:00', 'Regent Street');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('09:00:00', '18:00:00', 'Rua do campo alegre');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('08:30:00', '19:30:00', 'Rua Sara Afonso');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('09:00:00', '21:00:00', 'Commercial Street');
insert into Cinema(horaAbertura, horaEncerramento, localizacao) values ('12:00:00', '20:45:00', 'Tampa Riverwalk');

/*Empresa(idEmpresa, nome, dono)*/

insert into Empresa (nome, dono) values ('Vodafone', 'Gerry Whent');
insert into Empresa (nome, dono) values ('NOS', 'Miguel Almeida');
insert into Empresa (nome, dono) values ('MEO', 'Lina Drahi');
insert into Empresa (nome, dono) values ('Altice', 'Patrick Drahi');
insert into Empresa (nome, dono) values ('Endecine', 'João Carlos');
insert into Empresa (nome, dono) values ('Warner', 'Harry Warner');
insert into Empresa (nome, dono) values ('Universal', 'Donna Langley');
insert into Empresa (nome, dono) values ('Walt Disney', 'Walt Disney');
insert into Empresa (nome, dono) values ('MIRAMAX', 'Bob Weinstein');
insert into Empresa (nome, dono) values ('Sony Pictures', 'Harry Cohn');


/*Cliente(idCliente, idSuscricao -> Suscricao, dataNascimento)*/

insert into Cliente (nome, dataDeNascimento) values ('Ines Oliveira', '2003-03-13');
insert into Cliente (nome, dataDeNascimento) values ('Sergio Carvalhais', '1978-12-29');
insert into Cliente (nome, dataDeNascimento) values ('Miguel Charchalis', '2015-05-18'); 
insert into Cliente (nome, dataDeNascimento) values ('Teresa Guilherme', '2011-09-01');
insert into Cliente (nome, dataDeNascimento) values ('Adolf Hitler', '1997-03-30'); 
insert into Cliente (nome, dataDeNascimento) values ('Katy Perry', '1965-12-21');
insert into Cliente (nome, dataDeNascimento) values ('Johnny Sins', '1956-09-24');
insert into Cliente (nome, dataDeNascimento) values ('Grzegorz Brzeczyszczykiewicz', '2016-11-02');
insert into Cliente (nome, dataDeNascimento) values ('Alpacino Ferreira' , '2001-06-07');
insert into Cliente (nome, dataDeNascimento) values ('Andreia Nicolau', '1989-10-09');


/*Categoria(nome)*/

insert into Categoria(nome) values ('ACAO');
insert into Categoria(nome) values ('COMEDIA');
insert into Categoria(nome) values ('DRAMA');
insert into Categoria(nome) values ('ROMANCE');
insert into Categoria(nome) values ('TERROR');

/*Ator(idAtor, nome, dataDeNascimento, papel)*/

insert into Ator(nome, dataDeNascimento, papel) values ('Leonardo Dicaprio', '1974-11-11', 'PRINCIPAL');
insert into Ator(nome, dataDeNascimento, papel) values ('Brad Pitt', '1963-12-18', 'PRINCIPAL');
insert into Ator(nome, dataDeNascimento, papel) values ('Johnny Depp', '1963-06-09', 'SECUNDARIO');
insert into Ator(nome, dataDeNascimento, papel) values ('Timothée Chalamet', '1995-12-27', 'PRINCIPAL');
insert into Ator(nome, dataDeNascimento, papel) values ('Zendaya', '1996-09-01', 'SECUNDARIO');
insert into Ator(nome, dataDeNascimento, papel) values ('Jennifer Aniston', '1969-02-11', 'PRINCIPAL');
insert into Ator(nome, dataDeNascimento, papel) values ('Arnold Schwarzenegger', '1947-08-30', 'PRINCIPAL');
insert into Ator(nome, dataDeNascimento, papel) values ('Tobey Maguire', '1975-06-27', 'PRINCIPAL');

/*Realizador(idRealizador, nome, dataDeNascimento)*/

insert into Realizador(nome, dataDeNascimento) values ('Leonardo Dicaprio', '1974-11-11');
insert into Realizador(nome, dataDeNascimento) values ('Timothée Chalamet','1995-12-27');
insert into Realizador(nome, dataDeNascimento) values ('Ang Lee', '1954-10-23');
insert into Realizador(nome, dataDeNascimento) values ('George Lucas', '1944-05-14');
insert into Realizador(nome, dataDeNascimento) values ('Andrew Stanton', '1965-12-03');
insert into Realizador(nome, dataDeNascimento) values ('Paco Plaza', '1973-02-08');
insert into Realizador(nome, dataDeNascimento) values ('Brian De Palma', '1940-09-11');
insert into Realizador(nome, dataDeNascimento) values ('Thea Sharrock', '1976-02-28');

/*Filme(filmeId, nome, dataEstreia, linguagem, duracao, idadeMinima)*/

insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values ('A vida de pi', '2005-12-27', 'PORTUGUES', 2.30, 8);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('Love, Rosie', '2009-07-23', 'INGLES', 1.47 , 12);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('Homem aranha', '2002-09-27', 'INGLES', 2.12, 13);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values ('A Vida é bela', '1997-01-22', 'ITALIANO', 2.16, 14);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values ('À procura do Nemo', '2012-04-12', 'PORTUGUES', 1.19, 3);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('Os intocáveis', '2015-09-23', 'FRANCES', 2.51, 12);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('O intocável', '1987-10-02', 'INGLES', 1.28, 8);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('Star Wars', '2005-12-17', 'INGLES', 2.16, 8);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('Me before you', '2016-08-11', 'INGLES', 1.53, 13);
insert into Filme (nome, dataEstreia, linguagem, duracao, idadeMinima) values('Rec', '2008-04-10', 'ESPANHOL', 2.41, 18);

/*Sala(idSala, idCinema, nDaSala, lotação)*/

insert into Sala(cinemaId, nDaSala, lotacao) values (1, 2, 15);
insert into Sala(cinemaId, nDaSala, lotacao) values (2, 1, 55);
insert into Sala(cinemaId, nDaSala, lotacao) values (3, 3, 76);
insert into Sala(cinemaId, nDaSala, lotacao) values (4, 1, 8);
insert into Sala(cinemaId, nDaSala, lotacao) values (5, 2, 32);
insert into Sala(cinemaId, nDaSala, lotacao) values (6, 8, 100);
insert into Sala(cinemaId, nDaSala, lotacao) values (7, 4, 23);
insert into Sala(cinemaId, nDaSala, lotacao) values (8, 12, 209);
insert into Sala(cinemaId, nDaSala, lotacao) values (9, 1, 134);
insert into Sala(cinemaId, nDaSala, lotacao) values (10, 2 ,60);

/*Sessao(sessaoId, filmeId, salaId, horario, data, dimensao)*/

insert into Sessao(filmeId, salaId, horario, data, dimensao) values (1, 4, '15:00:00', '2022-01-12','3d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (2, 2, '14:20:00', '2022-01-02','3d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (3, 1, '19:30:00', '2022-01-27','3d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (4, 7, '10:20:00', '2022-01-23','3d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (5, 9, '19:30:00', '2022-01-21','3d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (6, 3, '10:20:00', '2022-01-24','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (7, 10, '18:00:00', '2022-01-26','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (8, 6, '15:00:00', '2022-01-29','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (9, 8, '14:20:00', '2022-01-17','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (10, 5, '09:20:00', '2022-01-12','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (10, 8, '09:20:00', '2022-01-19','3d');

insert into Sessao(filmeId, salaId, horario, data, dimensao) values (9, 1, '14:20:00', '2022-01-17','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (1, 1, '15:20:00', '2022-01-17','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (2, 1, '16:20:00', '2022-01-17','2d');
insert into Sessao(filmeId, salaId, horario, data, dimensao) values (3, 1, '17:20:00', '2022-01-17','2d');
/*Bilhete(clienteId, sessaoId, preco, nAssento)*/

insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (1,1, 17, 69);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,2, 15, 70);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (1,3, 10, 1);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,4, 1, 32);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (7,5, 14, 65);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (4,6, 7, 23);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (5,7, 15, 64);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (9,8, 9, 89);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (1,9, 5, 76);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (1,10, 12, 9);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,10, 8, 6);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,10, 8, 6);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,10, 8, 6);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,10, 8, 6);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,10, 8, 6);
insert into Bilhete(clienteId, sessaoId, preco, nAssento) values (2,10, 8, 6);

/*Subscricao (idBilhete -> Bilhete, idCliente -> Cliente, desconto)*/

insert into Subscricao(empresaId, desconto) values (1,5);
insert into Subscricao(empresaId, desconto) values (1,10);
insert into Subscricao(empresaId, desconto) values (1,15);
insert into Subscricao(empresaId, desconto) values (1,20);
insert into Subscricao(empresaId, desconto) values (2,30);
insert into Subscricao(empresaId, desconto) values (2,25);
insert into Subscricao(empresaId, desconto) values (3,10);
insert into Subscricao(empresaId, desconto) values (3,10);
insert into Subscricao(empresaId, desconto) values (4,50);
insert into Subscricao(empresaId, desconto) values (5,90);


/*FilmeCategoria --> para ligar categorias a filmes*/

insert into FilmeCategoria values (1,'ACAO');
insert into FilmeCategoria values (1,'COMEDIA');
insert into FilmeCategoria values (1,'DRAMA');
insert into FilmeCategoria values (2,'ROMANCE');
insert into FilmeCategoria values (2,'TERROR');
insert into FilmeCategoria values (3,'ACAO');
insert into FilmeCategoria values (4,'COMEDIA');
insert into FilmeCategoria values (5,'COMEDIA');
insert into FilmeCategoria values (5,'ACAO');
insert into FilmeCategoria values (6,'DRAMA');
insert into FilmeCategoria values (7,'TERROR');
insert into FilmeCategoria values (7,'DRAMA');
insert into FilmeCategoria values (8,'DRAMA');
insert into FilmeCategoria values (9,'DRAMA');
insert into FilmeCategoria values (10,'DRAMA');
insert into FilmeCategoria values (10,'TERROR');

/*CinemaFilme --> para ligar os cinemas e filmes*/

insert into CinemaFilme values (1,1);
insert into CinemaFilme values (1,2);
insert into CinemaFilme values (2,3);
insert into CinemaFilme values (2,4);
insert into CinemaFilme values (3,4);
insert into CinemaFilme values (4,1);
insert into CinemaFilme values (5,7);
insert into CinemaFilme values (5,8);
insert into CinemaFilme values (6,6);
insert into CinemaFilme values (6,9);
insert into CinemaFilme values (7,5);
insert into CinemaFilme values (8,3);
insert into CinemaFilme values (9,2);

/*FilmeAtor --> para ligar os filmes e atores*/

insert into FilmeAtor values (1,1);
insert into FilmeAtor values (1,2);
insert into FilmeAtor values (1,3);
insert into FilmeAtor values (3,1);
insert into FilmeAtor values (3,2);
insert into FilmeAtor values (4,6);
insert into FilmeAtor values (4,7);
insert into FilmeAtor values (7,1);
insert into FilmeAtor values (7,6);
insert into FilmeAtor values (7,7);

/*FilmeRealizador --> para ligar os filmes e realizadores*/

insert into FilmeRealizador values (1,1);
insert into FilmeRealizador values (2,2);
insert into FilmeRealizador values (3,3);
insert into FilmeRealizador values (4,4);
insert into FilmeRealizador values (5,5);
insert into FilmeRealizador values (6,6);
insert into FilmeRealizador values (7,7);
insert into FilmeRealizador values (8,8);
insert into FilmeRealizador values (9,1);


insert into Cliente (nome, dataDeNascimento, subscricaoId) values ('Andraeia aNicolau', '1889-10-09', 1);
