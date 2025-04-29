--DML 
	-- STRING 
		-- charindex, substring
	-- DATAS
		-- year month day datediff
	--SQL INTERMEDIARIO

--charindex
select nome, CHARINDEX('n', nome) as posicao
from Cliente

--substring 
select nome, SUBSTRING(nome, 0 ,6)
from Cliente


-- reverse	
select nome, REVERSE(NOME)
from cliente

--replace
select nome , REPLACE(nome, 'martin', 'legal')
from cliente

-- alterar todos os email para o padrao primeiro nome . ultimo nome@facens.br

SELECT 
  email,
  CASE 
    WHEN CHARINDEX(' ', nome) > 0 THEN
      SUBSTRING(nome, 1, CHARINDEX(' ', nome) - 1)
      + '.'
      + REVERSE(SUBSTRING(REVERSE(nome), 1, CHARINDEX(' ', REVERSE(nome)) - 1))
      + '@facens.br'
    ELSE
      nome + '@facens.br' -- Se o nome não tem espaço, usa ele inteiro
  END AS email_consertado
FROM cliente
WHERE email IS NOT NULL;

-- datas

select getdate()

select * from Pedido

--datediff
select DATEDIFF(day, '2005-12-01',getdate()) / 365

select data, year(data) ano, month(data) mes, day(data) dia from Pedido

-- mostre todos os clientes que realizaram pedidos
select c.* from Cliente c inner join pedido p on c.cod_cliente = p.cod_cliente


-- mostre os que nao realizaram pedidos

select c.* from Cliente c  left join pedido p on c.cod_cliente = p.cod_cliente
where p.cod_cliente is null

-- teoria dos conjuntos
--uniao
select cod_vendedor cod, nome
from Vendedor
union
select cod_cliente cod, nome
from Cliente
--intersccao 
select  * from cliente where cidade in ('Sorocaba', 'Votorantim')
intersect
select* from cliente where sexo = 'F'

--excecao
select* from cliente
except
select c.* from cliente  c inner join pedido p on  c.cod_cliente = p.cod_cliente
