create database consultoriomedico
go
use consultoriomedico
go
CREATE TABLE Especialidade (
    cod_especialidade INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
go
CREATE TABLE Medico (
    CRM INT PRIMARY KEY,
    cod_especialidade INT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    CPF VARCHAR(14) NOT NULL,
    CEP VARCHAR(9),
    RG VARCHAR(20),
    FOREIGN KEY (cod_especialidade) REFERENCES Especialidade(cod_especialidade)
);

go
CREATE TABLE Paciente (
    cod_paciente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    CPF VARCHAR(14) NOT NULL,
    CEP VARCHAR(9),
    RG VARCHAR(20)
);

go
CREATE TABLE Exame (
    cod_exame INT PRIMARY KEY,
    cod_paciente INT,
    nome VARCHAR(100) NOT NULL,
    resultado TEXT,
    FOREIGN KEY (cod_paciente) REFERENCES Paciente(cod_paciente)
);

go
CREATE TABLE Consulta (
    cod_consulta INT PRIMARY KEY,
    cod_paciente INT,
    CRM INT,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (cod_paciente) REFERENCES Paciente(cod_paciente),
    FOREIGN KEY (CRM) REFERENCES Medico(CRM)
);
