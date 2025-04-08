-- Consultas
SELECT id_cinema, nome, endereco FROM cinema;

SELECT ci.nome AS cinema, f.titulo AS filme
FROM sessao s
JOIN filme f ON s.id_filme = f.id_filme
JOIN sala sa ON s.id_sala = sa.id_sala
JOIN cinema ci ON sa.id_cinema = ci.id_cinema
GROUP BY ci.nome, f.titulo
ORDER BY ci.nome, f.titulo;

SELECT id_sessao, COUNT(id_ingresso) AS total_ingressos
FROM ingresso
GROUP BY id_sessao;

SELECT f.nome, f.cargo, c.nome AS cinema
FROM funcionario f
JOIN cinema c ON f.id_cinema = c.id_cinema;

SELECT c.nome AS cinema, COUNT(f.id_funcionario) AS total_funcionarios
FROM funcionario f
JOIN cinema c ON f.id_cinema = c.id_cinema
GROUP BY c.nome
ORDER BY total_funcionarios DESC;

SELECT c.nome AS cinema, f.cargo, COUNT(f.id_funcionario) AS quantidade
FROM funcionario f
JOIN cinema c ON f.id_cinema = c.id_cinema
GROUP BY c.nome, f.cargo
ORDER BY c.nome, quantidade DESC;

SELECT c.nome AS cinema, SUM(s.capacidade) AS capacidade_total
FROM cinema c
JOIN sala s ON c.id_cinema = s.id_cinema
GROUP BY c.nome
ORDER BY capacidade_total DESC;

SELECT c.nome AS cinema, COUNT(s.id_sala) AS num_salas, SUM(s.capacidade) AS capacidade_total
FROM cinema c
JOIN sala s ON c.id_cinema = s.id_cinema
GROUP BY c.nome
ORDER BY capacidade_total DESC;

SELECT genero, COUNT(id_filme) AS total_filmes
FROM filme
GROUP BY genero;

SELECT genero, COUNT(id_filme) AS total_filmes, MAX(duracao) AS duracao_maxima, MIN(duracao) AS duracao_minima
FROM filme
GROUP BY genero
ORDER BY total_filmes DESC;

SELECT f.titulo AS filme, SUM(i.preco) AS Valor_Total_Da_Venda_INGRESSOS
FROM ingresso i
JOIN sessao s ON i.id_sessao = s.id_sessao
JOIN filme f ON s.id_filme = f.id_filme
GROUP BY f.titulo
HAVING SUM(i.preco) > 100
ORDER BY Valor_Total_Da_Venda_INGRESSOS DESC;
