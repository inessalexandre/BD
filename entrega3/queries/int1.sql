/* O número de bilhetes vendidos de cada filme */

SELECT Filme.nome, COUNT(Bilhete.bilheteId) AS NumBilhetes FROM Bilhete, Sessao, Filme
	WHERE Bilhete.sessaoId = Sessao.sessaoId AND
		Sessao.filmeId = Filme.filmeId
	GROUP BY Filme.nome;