/*

    DML - DATA MANIPULATION LANGUAGE
    DDL - DATA DEFINITTION LANGUAGE
    DCL - DATA CONRTOL LANGUAGE
    TCL - TRANSACTION CONTROL LANGUAGE

*/

--DML É A MANIPULACAO DOS DADOS
/*INSERT */

insert into cliente values (null,'paula','m',null,'77437493');
insert into endereco values (null,'rua joaquim silva','alvorada','niteroi','rj',7);

/* FILTROS */

select * from cliente
where sexo = 'm';

/* UPDATE */

select * from cliente
where idcliente=7;

update cliente
set sexo = 'f'
where idcliente=7;

/* DELETE */

insert into cliente values (null,'XXX','m',null,'XXX')

select * from cliente
where idcliente=8

delete from cliente WHERE idcliente=8;