
CREATE TABLE Categoria_Leitor (
    cod INT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    dias_emprestados_max INT
);


CREATE TABLE Leitor (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    cidade VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    nascimento DATE,
    cod_categoria INT NOT NULL,
    FOREIGN KEY (cod_categoria) REFERENCES Categoria_Leitor(cod)
);


CREATE TABLE Funcionario (
    nome_login VARCHAR(50) PRIMARY KEY, 
    endereco VARCHAR(200),
    cidade VARCHAR(100),
    lugar VARCHAR(100),
    telefone VARCHAR(20)
);


CREATE TABLE Obras_Literarias (
    codigo INT PRIMARY KEY,
    isbn VARCHAR(20) UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    editora VARCHAR(100),
    n_edicao INT,
    cod_categoria_obra INT 
);


CREATE TABLE Reserva (
    cod_obra INT,
    id_leitor INT,
    funcionario_login VARCHAR(50),
    data_reserva DATE NOT NULL,
    data_retirada DATE,
    data_devolucao_prevista DATE,
    PRIMARY KEY (cod_obra, id_leitor, data_reserva),
    FOREIGN KEY (cod_obra) REFERENCES Obras_Literarias(codigo),
    FOREIGN KEY (id_leitor) REFERENCES Leitor(id),
    FOREIGN KEY (funcionario_login) REFERENCES Funcionario(nome_login)
);


CREATE TABLE Emprestimo (
    codigo_emprestimo INT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao_real DATE,
    id_leitor INT NOT NULL,
    cod_obra INT NOT NULL,
    funcionario_resp_login VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_leitor) REFERENCES Leitor(id),
    FOREIGN KEY (cod_obra) REFERENCES Obras_Literarias(codigo),
    FOREIGN KEY (funcionario_resp_login) REFERENCES Funcionario(nome_login)
);