--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME = 'De Volta para o Futuro', Ano, Duracao FROM Filmes

--4 - Buscar os filmes lançados em 1997
SELECT * FROM filmes WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes Where Ano Between 2000 AND 2024
 
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes Where Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano,
    COUNT(*) AS Duracao
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    Duracao DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
     Where Genero ='M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
     Where Genero ='F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero

SELECT
     Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT
     Nome, Genero 
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
     Nome, PrimeiroNome,UltimoNome,Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id 
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.Id

