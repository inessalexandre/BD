/* Idioma mais escolhido pelos clientes */

SELECT linguagem AS idioma, MAX(counter) AS NumClientes FROM (
        SELECT Filme.linguagem as linguagem, COUNT(Bilhete.bilheteId) as counter FROM Filme, Bilhete, Sessao 
                WHERE Filme.filmeId = Sessao.filmeId AND
                        Sessao.sessaoId = Bilhete.sessaoId

                GROUP BY Filme.linguagem)
;