/* Quantos Filmes existem de cada categoria*/

SELECT Categoria.nome, COUNT(Filme.filmeId) as NumFilmes From Categoria, FilmeCategoria, Filme
	WHERE Categoria.nome = FilmeCategoria.categoriaId AND
		FilmeCategoria.filmeId = Filme.filmeId
	GROUP BY Categoria.nome
	ORDER BY numFilmes DESC;