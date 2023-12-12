Criação do Banco:

CREATE DATABASE netflix_senac;

Criando tabelas do banco

/* CRIAÇÃO DAS TABELAS DA NETFLIX_SENAC */


/* Criação da tabela Usuario */
CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL
);

/* Criação da tabela Filme */
CREATE TABLE Filme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT,
    duracao INT,
    data_lancamento DATE
);

/* Criação da tabela Avaliacao */
CREATE TABLE Avaliacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estrelas INT,
    comentario TEXT,
    usuario_id INT,
    filme_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (filme_id) REFERENCES Filme(id)
);

/* Criação da tabela Categoria */
CREATE TABLE Categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

/* Criação da tabela FilmeCategoria (tabela de junção) */
CREATE TABLE FilmeCategoria (
    filme_id INT,
    categoria_id INT,
    PRIMARY KEY (filme_id, categoria_id),
    FOREIGN KEY (filme_id) REFERENCES Filme(id),
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

 /* Criação da tabela Assinatura */
CREATE TABLE Assinatura (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    preco_mensal DECIMAL(10, 2) NOT NULL,
    num_dispositivos INT
);

/* Criação da tabela UsuarioAssinatura */
CREATE TABLE UsuarioAssinatura (
    usuario_id INT,
    assinatura_id INT,
    PRIMARY KEY (usuario_id, assinatura_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (assinatura_id) REFERENCES Assinatura(id)
);

/* Criação da tabela HistoricoAssistidos */
CREATE TABLE HistoricoAssistidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    filme_id INT,
    data_assistido DATE,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (filme_id) REFERENCES Filme(id)
);
