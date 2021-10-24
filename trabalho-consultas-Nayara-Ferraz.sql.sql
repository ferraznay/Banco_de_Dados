-- tícket médio de todas as vendas no dia anterior
select
    avg(VALOR_TOTAL) as media,
    cast(DATA_EMISSAO as date) as dia
from NOTA_FISCAL NF 
WHERE DATA_EMISSAO = '2021.08.29' 
group by cast(DATA_EMISSAO as date ) ;

-- tícket médio de todas as vendas na semana corrente 
-- (sete dias para trás a partir do dia de ontem)

select
    avg(VALOR_TOTAL) as media,
    cast(DATA_EMISSAO as date) as dia
FROM NOTA_FISCAL NF 
where DATA_EMISSAO between '2021-08-22' and '2021.08.28' 
group by cast(DATA_EMISSAO as date );

-- tícket médio de todas as vendas no mês corrente 
-- (do dia 1 do mês corrente até o dia de ontem
SELECT  avg(VALOR_TOTAL) as media,
        cast(DATA_EMISSAO as date) as dia
FROM NOTA_FISCAL NF 
where DATA_EMISSAO between '2021-08-01' and '2021.08.29' 
group by cast(DATA_EMISSAO as date ) ;

-- tícket médio das vendas Web no dia anterior
select
    avg(VALOR_TOTAL) as media,
    cast(DATA_PEDIDO as date) as dia
from PEDIDO_CABECALHO PC 
WHERE DATA_PEDIDO = '2021.08.29' 
group by cast(DATA_PEDIDO as date ) ;


-- tícket médio das vendas Web na semana corrente
-- (sete dias para trás a partir do dia de ontem)
select
    avg(VALOR_TOTAL) as media,
    cast(DATA_PEDIDO as date) as dia
FROM PEDIDO_CABECALHO PC
where DATA_PEDIDO between '2021-08-22' and '2021.08.28' 
group by cast(DATA_PEDIDO as date ) 

-- tícket médio das vendas Web no mês corrente 
-- (do dia 1 do mês corrente até o dia de ontem)

SELECT  avg(VALOR_TOTAL) as media,
        cast(DATA_PEDIDO as date) as dia
FROM PEDIDO_CABECALHO PC 
where DATA_PEDIDO between '2021-08-01' and '2021.08.29' 
group by cast(DATA_PEDIDO as date ) ;

-- ranking dos produtos com quantidades mais vendidas no dia anterior

SELECT ID_PRODUTO,
    max(QUANTIDADE_PRODUTO) as qtd,
    cast(DATA_EMISSAO as date) as dia
from LISTA_PRODUTOS LP
inner join  NOTA_FISCAL NF on (LP.ID_NOTA = NF.ID_NOTA )
WHERE DATA_EMISSAO = '2021.08.29' 
group by cast(DATA_EMISSAO as date ) ;

-- ranking dos produtos com quantidades mais vendidas na semana corrente 
-- (sete dias para trás a partir do dia de ontem)

SELECT ID_PRODUTO,  
max(QUANTIDADE_PRODUTO) as qtd,
    cast(DATA_EMISSAO as date) as dia
FROM LISTA_PRODUTOS LP
inner join  NOTA_FISCAL NF on (LP.ID_NOTA = NF.ID_NOTA )
where DATA_EMISSAO between '2021-08-22' and '2021.08.28' 
group by cast(DATA_EMISSAO as date ) 
;

-- - ranking dos produtos com quantidades mais vendidas no mês corrente
-- (do dia 1 do mês corrente até o dia de ontem)

SELECT ID_PRODUTO,
    max(QUANTIDADE_PRODUTO) as qtd,
    cast(DATA_EMISSAO as date) as dia
FROM LISTA_PRODUTOS LP
inner join  NOTA_FISCAL NF on (LP.ID_NOTA = NF.ID_NOTA )
where DATA_EMISSAO between '2021-08-01' and '2021.08.29'  
group by cast(DATA_EMISSAO as date ) 
;

-- ranking dos produtos com valores mais vendidos no dia anterior
SELECT ID_PRODUTO ,
   max(SUB_TOTAL) as valor,
    cast(DATA_EMISSAO as date) as dia
from ITENS_PEDIDO IP 
inner join  NOTA_FISCAL NF on (NF.ID_PEDIDO = NF.ID_PEDIDO )
WHERE DATA_EMISSAO = '2021.08.29' 
group by cast(DATA_EMISSAO as date ) ;

-- ranking dos produtos com valores mais vendidos na semana corrente (sete dias para trás a partir do dia de ontem)
SELECT ID_PRODUTO ,
   max(SUB_TOTAL) as valor,
    cast(DATA_EMISSAO as date) as dia
from ITENS_PEDIDO IP 
inner join  NOTA_FISCAL NF on (NF.ID_PEDIDO = NF.ID_PEDIDO )
where DATA_EMISSAO between '2021-08-01' and '2021.08.29'  
group by cast(DATA_EMISSAO as date ) ;

-- ranking dos produtos com valores mais vendidos no mês corrente (do dia 1 do mês corrente até o dia de ontem)
SELECT ID_PRODUTO ,
   max(SUB_TOTAL) as valor,
    cast(DATA_EMISSAO as date) as dia
from ITENS_PEDIDO IP 
inner join  NOTA_FISCAL NF on (NF.ID_PEDIDO = NF.ID_PEDIDO )
where DATA_EMISSAO between '2021-08-22' and '2021.08.28' 
group by cast(DATA_EMISSAO as date );

-- ranking dos clientes que mais compram (valor) no dia anterior
SELECT ID_CLIENTE ,
   max(VALOR_TOTAL) as valor,
    cast(DATA_EMISSAO as date) as dia
from NOTA_FISCAL 
WHERE DATA_EMISSAO = '2021.08.29' 
group by cast(DATA_EMISSAO as date ) ;

-- ranking dos clientes que mais compram (valor) na semana corrente (sete dias para trás a partir do dia de ontem)
SELECT ID_CLIENTE ,
   max(VALOR_TOTAL) as valor,
       cast(DATA_EMISSAO as date) as dia
FROM NOTA_FISCAL NF 
where DATA_EMISSAO between '2021-08-22' and '2021.08.28' 
group by cast(DATA_EMISSAO as date ) ;

-- ranking dos clientes que mais compram (valor) no mês corrente (do dia 1 do mês corrente até o dia de ontem)
SELECT ID_CLIENTE ,
   max(VALOR_TOTAL) as valor,
           cast(DATA_EMISSAO as date) as dia
FROM NOTA_FISCAL NF 
where DATA_EMISSAO between '2021-08-01' and '2021.08.29' 
group by cast(DATA_EMISSAO as date) ;


