-- comentario no SQL

-- SQL  linguagem de consulta estruturada
	-- DDL LING definicao de dados
		-- Create | Drop | Alter
			-- Database | Table
	-- DML ling de manipulacao de dados
		-- Select | Update | Insert
	--DCL Ling de controle de dados
		--Grant | Revoke
		 

create database transporteJoao

create table veiculo
(
	placa varchar(7) primary key,
	modelo varchar(100) null,
	ano int null,
	cor varchar(100) null,
)

create table motorista
(
	cod_motorista int identity(1,1) primary key,
	nome varchar(300) not null,
	email varchar(350) not null,
	telefone varchar(15) not null,
	cnh varchar(200),
)

create table passageiro
(
	cod_passageiro int identity(1,1) primary key,
	nome varchar(150) not null,
	rg varchar(20) null,
	email varchar(30) not null,
	telefone varchar(15) not null,
)

create table manutencao
(
	cod_manutencao int identity(1,1) not null primary key,
	valor numeric(10,2) not null,
	nome varchar(200) not null,
	placa varchar(7) not null references veiculo(placa),

)