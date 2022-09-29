/*staff dos filmes*/

SELECT Filme.nome as Filme, Realizador.nome as Realizador, Ator.nome as Ator FROM FilmeAtor, Filme, Realizador, Ator NATURAL JOIN FilmeRealizador
	WHERE Filme.filmeId = FilmeAtor.filmeId AND
		Ator.atorId = FilmeAtor.atorId AND
		Realizador.realizadorId = FilmeRealizador.realizadorId
	ORDER BY FilmeAtor.filmeId;


