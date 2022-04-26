#criar banco de dados
create database db_servico_rh;

# inicializar o banco
use db_servico_rh;

# criar tabela
create table tb_funcionarios(
id bigint auto_increment,
nome char(255) not null,
idade int not null,
salario double not null,
funcao varchar(255) not null,
descricao varchar(255),
primary key(id)
);

select * from tb_funcionarios;

insert into tb_funcionarios (nome,idade,salario,funcao,descricao) 
values("Rute",18,40000,"DevJr","Proativa");
insert into tb_funcionarios (nome,idade,salario,funcao,descricao) 
values("Raíssa",19,20000,"DevJr","Ágil");
insert into tb_funcionarios (nome,idade,salario,funcao,descricao) 
values("César",28,10000,"DevJr","Destaque semanal pela 1° vez");
insert into tb_funcionarios (nome,idade,salario,funcao,descricao) 
values("Julio",30,30000,"DevJr","Funcionário do mês!");
insert into tb_funcionarios (nome,idade,salario,funcao,descricao) 
values("Lucas",25,15000,"DevJr","Habilidoso");
insert into tb_funcionarios (nome,idade,salario,funcao,descricao) 
values("Célia",30,30000,"DevJr","Liderança ativa!");

drop table tb_funcionarios;
#maior sálario que 20000
select * from tb_funcionarios where salario > 20000;
#menor salário menor que 20000
select * from tb_funcionarios where salario < 20000;


select * from tb_funcionarios where nome = "julio";

select nome, idade, salario from td_funcionarios where nome like "%ju%";

#atualizar variavel
update tb_funcionarios set nome = "Raquel" where id = 1;

#apagar
delete from 

#deleta tabela
drop table td_funcionarios;

alter table td_funcionarios add cpf int not null;

alter table td_funcionarios change nome nomeCompleto vachar(255);
