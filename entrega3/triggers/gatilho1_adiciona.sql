PRAGMA foreign_keys = ON;

-- Quando um Cliente compra um bilhete o número de lugares ocupados aumenta.

CREATE TRIGGER IF NOT EXISTS VerificarLugares
BEFORE INSERT ON Bilhete
FOR EACH ROW
WHEN(Select lugaresOcupados FROM Sessao WHERE sessaoId = new.sessaoId) < (Select lotacao FROM Sala, Sessao WHERE Sessao.salaId = Sala.salaId)
BEGIN
  UPDATE Sessao
  SET lugaresOcupados = lugaresOcupados + 1
  WHERE sessaoId = New.sessaoId;
END;

-- Quando o número de lugares ocupados atinge a lotação da sala.

CREATE TRIGGER IF NOT EXISTS SemLugares
BEFORE INSERT ON Bilhete
FOR EACH ROW
WHEN(Select lugaresOcupados FROM Sessao WHERE sessaoId = new.sessaoId) = (Select lotacao FROM Sala, Sessao WHERE Sessao.salaId = Sala.salaId)
BEGIN
  SELECT RAISE(ABORT, 'A sessão que escolheu já não tem lugares disponíveis!');
END;