PRAGMA foreign_keys = ON;

-- Verificamos quantos lugares ocupados tem

Select lugaresOcupados FROM Sessao WHERE sessaoId=1;

-- Criamos um novo Bilhete 

INSERT INTO Bilhete(clienteId, sessaoId, preco, nAssento) values (2, 1, 14, 13);

-- Verificamos que os lugaresOcupados passarram de 0 para 1

Select lugaresOcupados FROM Sessao WHERE sessaoId=1;


