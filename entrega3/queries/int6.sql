/* Quantos filmes dão por cinema num certo intervalo de horas. */

SELECT Cinema.cinemaId, COUNT(Sessao.sessaoId) as NumSessoes From Cinema, Sessao, Sala
	WHERE Sala.cinemaId = Cinema.cinemaId AND
		Sala.salaId = Sessao.salaId AND
		Sessao.data = '2022-01-17' AND
		Sessao.horario BETWEEN '14:00:00' AND '22:00:00'
	GROUP BY Cinema.cinemaId;