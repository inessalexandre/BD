/* Top3 de cinemas com as maiores salas (usar a lotaçao) */

SELECT Cinema.cinemaId, lotacao 
FROM Cinema, Sala
WHERE Sala.cinemaId = Cinema.CinemaId

ORDER BY lotacao DESC
LIMIT 3;