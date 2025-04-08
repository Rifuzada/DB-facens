-- DNK - linguagem de manipulacao de dados
-- seelct simples uma tabela
-- selecona colunas especificas 
-- condicoes de selecao 
--curingas do like
-- trabalhando com null
--funcoes basicas count sum min max
-- ordenacao de dados
-- agrupamento
select *
from Cliente


select nome,telefone, email
from Cliente

select *
from Cliente
where cidade = 'Sorocaba'

select *
from Cliente
where cidade = 'Sorocaba'
and sexo = 'F'

select *
from Cliente
where sexo = 'M'
and (cidade = 'Sorocaba'
or cidade = 'Votorantim')

select nome
from Cliente
where nome not like '[a-e]%'

select *
from cliente
where  cidade != 'Sorocaba'

select telefone
from cliente
where telefone is null
or telefone = ''

select cidade, nome
from cliente
order by cidade, nome

select count(*) as qtdDeClientes
from cliente

select nome as nomecompleto from cliente

select min(valor)
from Item_Pedido

select sexo, count(*)as qtd
from cliente 
group by sexo

select cidade, sexo, count(*) as qtd
from cliente
group by cidade, sexo
order by cidade