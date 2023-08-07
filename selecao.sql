/*BANCO DE DADOS --> É COMO UMA TEORIA DOS CONJUNTOS*/

/*SELECAO = FILTRAGEM*/

/*É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA A CALÚSULA DE SELECÃO É O WHERE*/

select nome, sexo, email /* PROJECAO */
from cliente /* ORIGEM */
where sexo = 'f'; /* SELECAO */

select numero /* PROJECAO */
from telefone /* ORIGEM */
where tipo = 'cel'; /* SELECAO */