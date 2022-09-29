PRAGMA foreign_keys = ON;

-- Um cliente não pode comprar dois bilhetes para a mesma sessão.

CREATE TRIGGER IF NOT EXISTS ErroCompra
BEFORE INSERT ON Bilhete
WHEN EXISTS (Select * FROM Bilhete WHERE ClienteId = New.ClienteId AND sessaoId = New.sessaoId)
BEGIN
   SELECT RAISE(ABORT, "Já comprou um bilhete para esta sessão!");
END;