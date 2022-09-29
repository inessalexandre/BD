/* numero de lugares disponiveis por sessao */

SELECT Sessao.sessaoId, (Sala.lotacao - Sessao.lugaresOcupados) as vagas
        FROM Sala, Sessao
        WHERE Sessao.salaId = Sala.salaId
        GROUP BY Sessao.sessaoId;