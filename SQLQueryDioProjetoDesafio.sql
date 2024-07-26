SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano, Duracao 
FROM Filmes
ORDER BY Ano ASC

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao
FROM Filmes
Where Ano = 1997;

SELECT Nome, Ano, Duracao 
FROM Filmes
Where Ano > 2000;

SELECT Nome, Ano, Duracao
FROM Filmes
Where Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;

SELECT PrimeiroNome, UltimoNome, Genero 
From Atores 
Where Genero = 'M'

SELECT PrimeiroNome, UltimoNome, Genero 
From Atores 
Where Genero = 'F'
ORDER BY PrimeiroNome ASC

SELECT f.Nome , g.Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.ID = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.ID;

SELECT f.Nome , g.Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.ID
WHERE g.Genero = 'Mistério';

SELECT f.Nome , a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.ID = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.ID;
