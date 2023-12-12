POPULANDO AS TABLAS COM DADOS EXEMPLOS

/* Populando a tabela Usuario com 10 registros */
INSERT INTO Usuario (nome, email, senha, data_cadastro) 
VALUES
    ('USUARIO 01', 'U01@email.com', 'senha123', '2023-01-01'),
    ('USUARIO 02', 'U02@email.com', 'senha456', '2023-02-05'),
    ('USUARIO 03', 'U03@email.com', 'senha789', '2023-03-10'),
    ('USUARIO 04', 'U04@email.com', 'senhaabc', '2023-03-15'),
    ('USUARIO 05', 'U05@email.com', 'senhaxyz', '2023-05-20'),
    ('USUARIO 06', 'U06@email.com', 'senha456', '2023-06-25'),
    ('USUARIO 07', 'U07@email.com', 'senha123', '2023-07-30'),
    ('USUARIO 08', 'U08@email.com', 'senhaxyz', '2023-07-04'),
    ('USUARIO 09', 'U09@email.com', 'senha789', '2023-02-09'),
    ('USUARIO 10', 'U10@email.com', 'senhaabc', '2023-01-14');

/* Populando a tabela Filme com 10 registros*/
INSERT INTO Filme (titulo, descricao, duracao, data_lancamento)
VALUES
    ('Filme 1', 'Descrição do Filme 1', 120, '2022-01-01'),
    ('Filme 2', 'Descrição do Filme 2', 90, '2022-02-05'),
    ('Filme 3', 'Descrição do Filme 3', 110, '2022-03-10'),
    ('Filme 4', 'Descrição do Filme 4', 105, '2022-04-15'),
    ('Filme 5', 'Descrição do Filme 5', 95, '2022-05-20'),
    ('Filme 6', 'Descrição do Filme 6', 130, '2022-06-25'),
    ('Filme 7', 'Descrição do Filme 7', 100, '2022-07-30'),
    ('Filme 8', 'Descrição do Filme 8', 115, '2022-08-04'),
    ('Filme 9', 'Descrição do Filme 9', 88, '2022-09-09'),
    ('Filme 10', 'Descrição do Filme 10', 125, '2022-10-14');

 /* Populando a tabela Avaliacao com 10 registros*/ 
INSERT INTO Avaliacao (estrelas, comentario, usuario_id, filme_id)
VALUES
    (5, 'Ótimo filme!', 1, 1),
    (4, 'Gostei, mas poderia ser melhor.', 2, 2),
    (5, 'Incrível!', 3, 3),
    (3, 'Não foi tão bom quanto esperava.', 4, 4),
    (5, 'Recomendo a todos!', 5, 5),
    (4, 'Interessante.', 6, 6),
    (5, 'Muito bom!', 7, 7),
    (4, 'Gostei da trama.', 8, 8),
    (3, 'Poderia ter mais ação.', 9, 9),
    (5, 'Adorei!', 10, 10);

/* Populando a tabela Categoria com 5 registros*/
INSERT INTO Categoria (nome)
VALUES
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficção Científica'),
    ('Romance');

/* Populando a tabela FilmeCategoria com 15 registros (muitos para muitos) */
INSERT INTO FilmeCategoria (filme_id, categoria_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
    (6, 1), (7, 2), (8, 3), (9, 4), (10, 5),
    (1, 2), (2, 3), (3, 4), (4, 5), (5, 1);

/* Populando a tabela Assinatura com 3 registros */
INSERT INTO Assinatura (tipo, preco_mensal, num_dispositivos)
VALUES
    ('Básico', 9.99, 1),
    ('Padrão', 14.99, 2),
    ('Premium', 19.99, 4);

/* Populando a tabela UsuarioAssinatura com 10 registros (um usuário pode ter muitas assinaturas ao longo do tempo) */ 
INSERT INTO UsuarioAssinatura (usuario_id, assinatura_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 1), (5, 2),
    (6, 3), (7, 1), (8, 2), (9, 3), (10, 1);

/*  Populando a tabela HistoricoAssistidos com 10 registros */ 
INSERT INTO HistoricoAssistidos (usuario_id, filme_id, data_assistido)
VALUES
    (1, 1, '2023-01-02'),
    (2, 2, '2023-02-06'),
    (3, 3, '2023-03-11'),
    (4, 4, '2023-04-16'),
    (5, 5, '2023-05-21'),
    (6, 6, '2023-06-26'),
    (7, 7, '2023-07-31'),
    (8, 8, '2023-08-05'),
    (9, 9, '2023-09-10'),
    (10, 10, '2023-10-15');

