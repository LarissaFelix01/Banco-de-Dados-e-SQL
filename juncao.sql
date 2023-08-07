/* JUNCAO --> JOIN */

select nome, email, idcliente
from cliente;

select id_cliente, bairro, cidade
from endereco;

/* EXEMPLO 1 (APENAS 2 TABELAS):

QUERO PROJETAR  NOME, SEXO, BAIRRO , CIDADE QUE SAO INFORMACOES DE TABELAS DIFERENTES */

--NAO USAR

select nome, sexo, bairro, cidade /* PROJECAO */
from cliente /* ORIGEM */
WHERE idcliente = id_cliente; /* JUNCAO */

--FORMA CORRETA

select nome, sexo, bairro, cidade
from cliente 
inner join endereco
on idcliente = id_cliente;

--PARA FILTRAR

select nome, sexo, bairro, cidade /* PROJECAO */
from cliente /* ORIGEM */
    inner join endereco /* JUNCAO */
    on idcliente = id_cliente
where sexo = 'f'; /* SELECAO */

--DICA SEMPRE ESCREVER POR PARTES POR QUESTAO DE ORGANIZACAO


/* EXEMPLO 2 (APENAS 2 TABELAS):

QUERO PROJETAR  NOME, SEXO, EMAIL , TIPO, NUMERO */

select nome, sexo, email, tipo, numero
from cliente
    inner join telefone
    on idcliente = id_cliente;

--RELACIONAMENTO DE 1,N

/* EXEMPLO 3 (APENAS 3 TABELAS):

QUERO PROJETAR NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO */

select nome, sexo, bairro, cidade, tipo, numero
from cliente
    inner join endereco
    on idcliente = id_cliente
    inner join telefone
    on idcliente = id_cliente;

--COMO TEMOS COLUNAS COM OS MESMO NOMES E TABELAS COM NOMES DIFERENTES PODEMOS INDICAR DE ONDE ESSA TABELAS VEM, ESCREVENDO O NOME DA TABELA.NOME DA COLUNA

select cliente.nome, cliente.sexo, endereco.bairro, endereco.cidade, telefone.tipo, telefone.numero
from cliente
    inner join endereco
    on cliente.idcliente = endereco.id_cliente
    inner join telefone
    on cliente.idcliente = telefone.id_cliente;

/*NO APP SUBLIME CTRL + CLICAR O MOUSE EM ALGUM TERNO QUE DESEJA APAGAR SIMULTANEAMENTE*/

-- OUTRA FORMA É DA APELIDO AS TABELAS (CHAMADO DE PONTERAMENTO)

select c.nome, c.sexo, e.bairro, e.cidade, t.tipo, t.numero
from cliente c
    inner join endereco e
    on c.idcliente = e.id_cliente
    inner join telefone t
    on c.idcliente = e.id_cliente;
