/*Lucro de cada cinema*/

SELECT Cinema.cinemaId as Cinema, SUM(Bilhete.preco) as Profit FROM Bilhete, Cinema, Sessao, Sala
		WHERE Bilhete.sessaoId = Sessao.sessaoId AND
			Sessao.salaId = Sala.salaId AND
			Sala.cinemaId = Cinema.cinemaId

		GROUP BY Cinema;