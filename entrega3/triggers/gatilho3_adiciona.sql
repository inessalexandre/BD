PRAGMA foreign_keys = ON;

-- Um cliente que não tenha idade mínima para ver o filme não pode comprar bilhete para este.

CREATE TRIGGER IF NOT EXISTS ErroIdade
BEFORE INSERT ON Bilhete
WHEN date('NOW')-(SELECT Cliente.dataDeNascimento FROM Cliente WHERE Cliente.clienteId=New.clienteId) < (SELECT Filme.idadeMinima FROM Sessao, Filme WHERE Sessao.sessaoId = New.sessaoId AND Sessao.filmeId = Filme.filmeId)
BEGIN
   SELECT RAISE(ABORT, "Não tem idade suficiente para ver este filme!");
END;