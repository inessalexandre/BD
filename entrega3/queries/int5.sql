/* Listar os atores e a sua data de nascimento, com papel principal, que tambem sao realizadores e teham nascido entre 01-01-1990 e 20-12-2005. */


SELECT nome, dataDeNascimento
FROM Ator
WHERE papel='PRINCIPAL'

INTERSECT

SELECT nome, dataDeNascimento
FROM Realizador
WHERE dataDeNascimento BETWEEN ('1990-01-01') AND ('2005-12-20')
