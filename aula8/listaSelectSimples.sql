--1. Selecione todos os clientes do banco de dados VendasEd. 
select *
from cliente

--2. Selecione todos os clientes da cidade de Votorantim.
select *
from cliente 
where cidade = 'Votorantim'

--3. Mostre todos os clientes do sexo masculino da cidade de sorocaba.
select *
from cliente
where cidade = 'Sorocaba'
and sexo = 'M'

--4. Mostre todos os clientes do sexo feminino que não possui e-mail cadastrado.
select *
from cliente
where sexo = 'F'
and email is null
or email = ''

--5. Mostre o nome, rg, cpf e o telefone de todos os clientes que não possui telefone cadastrado.
select nome, rg, cpf, telefone
from cliente
where telefone is null
or telefone = ''

--6. Mostre a quantidade de clientes mulheres cadastradas no sistema. 
select count(*) as qtdDeMulheres
from cliente
where sexo = 'F'

--7. Mostre o nome dos clientes em ordem alfabética
select *
from cliente 
order by nome

--8. Mostre o nome, telefone, email e endereço de todos os clientes que moram na rua Orlando Alvagenga do sexo feminino
select nome, telefone, email, endereco
from cliente
where endereco like 'Rua Orlando Alvagenga%'
and sexo = 'F'

--9. Mostre o maior cod_cliente cadastrado
select max(cod_cliente) as CodigoCliente
from cliente 

--10. Mostre o menor cod_cliente cadastrado
select min(cod_cliente) as CodigoCliente
from cliente

--11. Mostre o nome da cidade e a quantidade de clientes de cada cidade cadastrada
select cidade, count(*)
from cliente
where cidade is not null
and cidade != ''
group by cidade
--12. Mostre a quantidade de clientes por cidade, sexo e estado, desconsiderando valores nulos com o nome da cidade em ordem alfabética
select cidade,sexo,estado, count(*)
from cliente
where cidade is not null
and cidade != ''
group by cidade, sexo, estado
order by cidade asc
