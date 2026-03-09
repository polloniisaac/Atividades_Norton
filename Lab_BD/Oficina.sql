
CREATE TABLE Fabricante (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    responsavel VARCHAR(100)
);

CREATE TABLE Modelo (
    codigo_modelo INT PRIMARY KEY,
    tipo VARCHAR(50),
    peso FLOAT,
    horaTeste INT,
    codigo_fabricante INT,
    FOREIGN KEY (codigo_fabricante) REFERENCES Fabricante(codigo)
);


CREATE TABLE Maquina (
    num_registro INT PRIMARY KEY,
    ano_fabricacao INT,
    horas_uso INT,
    codigo_modelo INT,
    FOREIGN KEY (codigo_modelo) REFERENCES Modelo(codigo_modelo)
);


CREATE TABLE Oficina (
    codigo INT PRIMARY KEY,
    cnpj VARCHAR(18) UNIQUE,
    nome VARCHAR(100),
    responsavel VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);


CREATE TABLE Tecnico (
    codigo_funcional INT PRIMARY KEY,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    salario DECIMAL(10,2),
    qualificacao VARCHAR(100),
    codigo_oficina INT,
    FOREIGN KEY (codigo_oficina) REFERENCES Oficina(codigo)
);


CREATE TABLE Teste (
    codigo INT PRIMARY KEY,
    pontuacao INT,
    resultado VARCHAR(100),
    recomendacoes TEXT,
    codigo_oficina INT,
    codigo_tecnico INT,
    FOREIGN KEY (codigo_oficina) REFERENCES Oficina(codigo),
    FOREIGN KEY (codigo_tecnico) REFERENCES Tecnico(codigo_funcional)
);



CREATE TABLE Oficina_Modelo (
    codigo_oficina INT,
    codigo_modelo INT,
    PRIMARY KEY (codigo_oficina, codigo_modelo),
    FOREIGN KEY (codigo_oficina) REFERENCES Oficina(codigo),
    FOREIGN KEY (codigo_modelo) REFERENCES Modelo(codigo_modelo)
);

CREATE TABLE Tecnico_Perito_Modelo (
    codigo_tecnico INT,
    codigo_modelo INT,
    PRIMARY KEY (codigo_tecnico, codigo_modelo),
    FOREIGN KEY (codigo_tecnico) REFERENCES Tecnico(codigo_funcional),
    FOREIGN KEY (codigo_modelo) REFERENCES Modelo(codigo_modelo)
);
