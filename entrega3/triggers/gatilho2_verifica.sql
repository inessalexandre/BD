PRAGMA foreign_keys = ON;

-- Tem de lançar erro
INSERT INTO Bilhete(clienteId, sessaoId, preco, nAssento) values (1, 3, 10.5, 69);

-- Não tem de lançar erro
INSERT INTO Bilhete(clienteId, sessaoId, preco, nAssento) values (3, 4, 10.5, 69);




