/* Ordenar cinemas por maior numero de venda */

SELECT Cinema.cinemaId, COUNT(Bilhete.bilheteId) AS NumBilhetes FROM Bilhete, Sessao, CinemaFilme, Filme, Cinema
        WHERE Bilhete.sessaoId = Sessao.sessaoId AND
                Sessao.filmeId = Filme.filmeId AND
		CinemaFilme.filmeId = Filme.filmeId AND
		Cinema.cinemaId = CinemaFilme.cinemaId 
        GROUP BY Cinema.cinemaId
	ORDER BY NumBilhetes DESC;