-- Alimentação inicial
INSERT cinema (id_cinema, nome, endereco, telefone) VALUES
    (1, 'Cinemark', 'Av. Floriano Peixoto, 123', '83 99999-9999'),
    (2, 'Cinépolis', 'Av. Pres. Juscelino Kubitschek, 321', '83 99999-9990'),
    (3, 'CineCG', 'R. João Pessoa, 111', '83 99999-9991'),
    (4, 'CinePB', 'R. Maciel Pinheiro, 222', '83 99999-9992'),
    (5, 'CineCampina', 'R. Treze de Maio, 333', '83 99999-9993');

INSERT sala (id_sala, capacidade, id_cinema) VALUES
    (1, 100, 1),
    (2, 150, 1),
    (3, 120, 2),
    (4, 100, 2),
    (5, 200, 3),
    (6, 120, 3),
    (7, 50, 4);

INSERT filme (id_filme, titulo, duracao, genero, classificacao) VALUES
    (1, 'Matrix', 136, 'Ficção Cientifica', '14'),
    (2, 'Titanic', 195, 'Romance', '12'),
    (3, 'O Rei Leão', 118, 'Animação', 'L'),
    (4, 'Vingadores: Ultimato', 181, 'Ação', '12'),
    (5, 'Coringa', 122, 'Drama', '16'),
    (6, 'Avatar', 162, 'Ficção Cientifica', '12'),
    (7, 'Oppenheimer', 180, 'Drama', '16'),
    (8, 'Barbie', 114, 'Comédia', '12'),
    (9, 'Duna: Parte Dois', 165, 'Ficção Científica', '14'),
    (10, 'John Wick 4: Baba Yaga', 169, 'Ação', '16'),
    (11, 'Guardiões da Galáxia Vol. 3', 150, 'Ação', '12'),
    (12, 'Super Mario Bros. O Filme', 92, 'Animação', 'L'),
    (13, 'Homem-Aranha: Através do Aranhaverso', 140, 'Animação', '10'),
    (14, 'Elementos', 102, 'Animação', 'L'),
    (15, 'Missão: Impossível – Acerto de Contas Parte Um', 163, 'Ação', '14');

INSERT sessao (id_sessao, data_hora, id_filme, id_sala) VALUES
    (1, '2025-03-10 19:00:00', 1, 1),
    (2, '2025-03-10 21:30:00', 2, 2),
    (3, '2025-03-11 18:00:00', 3, 3),
    (4, '2025-03-12 20:00:00', 4, 4),
    (5, '2025-03-13 22:15:00', 5, 5),
    (6, '2025-03-14 19:30:00', 6, 1),
    (7, '2025-03-14 22:00:00', 6, 2),
    (8, '2025-03-14 19:00:00', 1, 3),
    (9, '2025-03-15 21:00:00', 2, 2),
    (10, '2025-03-15 18:30:00', 3, 4),
    (11, '2025-03-16 20:00:00', 7, 5),
    (12, '2025-03-17 21:30:00', 8, 3),
    (13, '2025-03-18 19:45:00', 9, 4),
    (14, '2025-03-19 18:00:00', 10, 5),
    (15, '2025-03-20 22:15:00', 11, 1),
    (16, '2025-03-21 19:00:00', 12, 2),
    (17, '2025-03-22 21:00:00', 13, 3),
    (18, '2025-03-23 19:30:00', 14, 4),
    (19, '2025-03-24 20:45:00', 15, 5);

INSERT cliente (id_cliente, nome, cpf, email, telefone) VALUES
    (1, 'João Silva', '111.111.111-11', 'joao@email.com', '83 98888-1111'),
    (2, 'Maria Santos', '222.222.222-22', 'maria@email.com', '83 98888-2222'),
    (3, 'Carlos Mendes', '333.333.333-33', 'carlos@email.com', '83 98888-3333'),
    (4, 'Ana Souza', '444.444.444-44', 'ana@email.com', '83 98888-4444'),
    (5, 'Fernando Lima', '555.555.555-55', 'fernando@email.com', '83 98888-5555'),
    (6, 'Lara Mendes', '777.777.777-77', NULL, '83 98888-7777'),
    (7, 'Carlos Oliveira', '123.456.789-03', 'carlos.oliveira@email.com', '83 98888-8888'),
    (8, 'Mariana Souza', '123.456.789-04', 'mariana.souza@email.com', '83 98888-9999');

INSERT ingresso (id_ingresso, preco, id_sessao, id_cliente) VALUES
    (1, 25.00, 1, 1),
    (2, 30.00, 2, 2),
    (3, 22.50, 3, 3),
    (4, 28.00, 4, 4),
    (5, 20.00, 5, 5),
    (6, 25.00, 6, 1),
    (7, 30.00, 7, 2),
    (8, 25.00, 1, 3),
    (9, 25.00, 1, 3),
    (10, 30.00, 3, 4),
    (11, 30.00, 3, 4),
    (12, 20.00, 5, 1),
    (13, 20.00, 9, 2),
    (14, 20.00, 9, 3),
    (15, 20.00, 3, 4),
    (16, 25.00, 1, 8),
    (17, 25.00, 1, 8),
    (18, 30.00, 8, 7),
    (19, 30.00, 2, 6),
    (20, 30.00, 7, 6),
    (21, 28.00, 11, 1),
    (22, 25.00, 12, 2),
    (23, 30.00, 13, 3),
    (24, 22.50, 14, 4),
    (25, 28.00, 15, 5),
    (26, 20.00, 16, 1),
    (27, 25.00, 17, 2),
    (28, 30.00, 18, 3),
    (29, 25.00, 19, 4),
    (30, 25.00, 11, NULL),
    (31, 25.00, 12, 7),
    (32, 30.00, 13, 8),
    (33, 22.50, 14, NULL),
    (34, 28.00, 15, 6),
    (35, 20.00, 16, NULL),
    (36, 25.00, 17, 7),
    (37, 30.00, 18, 6),
    (38, 25.00, 19, 7);

INSERT funcionario (id_funcionario, nome, cpf, cargo, id_cinema) VALUES
    (1, 'Carlos Santos', '000-000-000-01', 'Gerente', 1),
    (2, 'Luciana Alves', '000-000-000-02', 'Atendente', 1),
    (3, 'Rafael Souza', '000-000-000-03', 'Bilheteiro', 1),
    (4, 'Beatriz Mendes', '000-000-000-04', 'Projecionista', 1),
    (5, 'Carlos Pereira', '000-000-000-05', 'Gerente', 2),
    (6, 'Juliana Costa', '000-000-000-06', 'Atendente', 2),
    (7, 'Gustavo Souza', '000-000-000-07', 'Bilheteiro', 2),
    (8, 'Fernanda Silva', '000-000-000-08', 'Projecionista', 2),
    (9, 'Lucas Mendes', '000-000-000-09', 'Gerente', 3),
    (10, 'Camila Lima', '000-000-000-10', 'Atendente', 3),
    (11, 'Felipe Santos', '000-000-000-11', 'Bilheteiro', 3),
    (12, 'Roberto Souza', '000-000-000-12', 'Projecionista', 3),
    (13, 'Marcos Silva', '000-000-000-13', 'Gerente', 4),
    (14, 'Luana Alves', '000-000-000-14', 'Atendente', 4),
    (15, 'Beatriz Oliveira', '000-000-000-15', 'Bilheteiro', 4),
    (16, 'Joana Costa', '000-000-000-16', 'Projecionista', 4),
    (17, 'Eduardo Lima', '000-000-000-17', 'Gerente', 5),
    (18, 'Patrícia Gomes', '000-000-000-18', 'Atendente', 5),
    (19, 'Robson Silva', '000-000-000-19', 'Bilheteiro', 5),
    (20, 'Marcelo Pereira', '000-000-000-20', 'Projecionista', 5);

-- Atualizações
UPDATE cliente SET telefone = '83 98888-0000' WHERE id_cliente = 1;
UPDATE sessao SET data_hora = '2025-03-11 20:00:00' WHERE id_sessao = 2;
UPDATE ingresso SET preco = preco * 1.10 WHERE id_sessao IN (
    SELECT id_sessao FROM sessao WHERE id_filme = 6
);

-- Remoções
DELETE FROM funcionario WHERE id_funcionario = 8;
DELETE FROM ingresso WHERE id_sessao = 4;
DELETE FROM sessao WHERE id_filme = 4;
