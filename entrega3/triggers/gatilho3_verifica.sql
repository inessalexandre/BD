PRAGMA foreign_keys = ON;

-- Tem de lançar a mensagem de erro 
INSERT INTO Bilhete(clienteId, sessaoId, preco, nAssento) values (4, 10, 10.5, 50);

-- Não tem de lançar a mensagem de erro 
INSERT INTO Bilhete(clienteId, sessaoId, preco, nAssento) values (6, 8, 10.5, 50);
