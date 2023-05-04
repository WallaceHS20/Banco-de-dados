REM   Script: atividades
REM   atividades

CREATE TABLE Pessoa ( 
pes_cod number PRIMARY KEY, 
pes_nome varchar2(40), 
cpf number(11), 
rg varchar2(20), 
email varchar2(30) 
);

CREATE TABLE Professor ( 
pes_cod number PRIMARY KEY, 
titulacao varchar2(20) 
);

ALTER TABLE Professor ADD FOREIGN KEY(pes_cod) REFERENCES Pessoa (pes_cod);

CREATE TABLE Aluno ( 
pes_cod number PRIMARY KEY, 
pes_nro_matricula number 
);

ALTER TABLE ALUNO ADD FOREIGN KEY(pes_cod) REFERENCES Pessoa (pes_cod);

CREATE TABLE Telefone ( 
tel_cod number PRIMARY KEY, 
tel_numero number(8), 
tip_descricao varchar2(20), 
tel_ddd number(2), 
pes_cod number 
);

ALTER TABLE Telefone ADD FOREIGN KEY(pes_cod) REFERENCES Pessoa (pes_cod);

CREATE TABLE Editora ( 
edi_cod number PRIMARY KEY, 
edi_descricao varchar2(30) 
);

CREATE TABLE Livro ( 
liv_cod number PRIMARY KEY, 
liv_titulo varchar2(20), 
edicao number, 
anopublicacao varchar(4), 
edi_cod number references editora(edi_cod) 
);

CREATE TABLE Exemplar ( 
exe_cod number PRIMARY KEY, 
exe_descricao number, 
liv_cod number references livro(liv_cod), 
ex_status number 
);

CREATE TABLE Emprestimo ( 
emp_cod number PRIMARY KEY, 
pes_cod number references pessoa(pes_cod), 
emp_data_emprestimo date, 
emp_data_PrevDev date 
);

CREATE TABLE ITEM_EMPRESTIMO ( 
emp_cod number, 
exe_cod number, 
PRIMARY KEY(emp_cod,exe_cod), 
FOREIGN KEY(emp_cod) REFERENCES Emprestimo (emp_cod), 
FOREIGN KEY(exe_cod) REFERENCES exemplar (exe_cod) 
 
);

CREATE TABLE Devolucao ( 
dev_cod number PRIMARY KEY, 
data_dev date, 
emp_cod number references emprestimo (emp_cod), 
exe_cod number references exemplar (exe_cod) 
);

insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(1,'Ana',11111111111,2894587,'ana@gmail.com');

insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(2,'Raul',22222222222,3894587,'raul@gmail.com');

insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(3,'Laura',33333333333,4894587,'laura@gmail.com');

insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(4,'Juliana',44444444444,5894587,'pasquini.juliana@gmail.com');

insert into pessoa (pes_cod,pes_nome,cpf,rg,email) values(5,'Adriana',55555555555,6894587,'adriana@gmail.com');

insert into professor (pes_cod,titulacao) values (4,'mestrado');

insert into professor (pes_cod,titulacao) values (5,'doutorado');

insert into aluno (pes_cod,pes_nro_matricula) values (1,34567890);

insert into aluno (pes_cod,pes_nro_matricula) values (2,34567891);

insert into aluno (pes_cod,pes_nro_matricula) values (3,34567892);

insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (1,39234444,'RESIDENCIAL',12,1);

insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (2,39244446,'PROFISSIONAL',12,2);

insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (3,39244447,'PROFISSIONAL',12,4);

insert into telefone (tel_cod,tel_numero,tip_descricao,tel_ddd,pes_cod) values (4,39244447,'PROFISSIONAL',12,5);

insert into editora (edi_cod,edi_descricao) values (1,'Campus');

insert into editora (edi_cod,edi_descricao) values (2,'Pearson');

insert into livro values (1,'Sistema de BD',3,'2008',2);

insert into livro  values (2,'Banco de Dados',1,'2006',1);

insert into livro  values (3,'LP',1,'2006',1);

insert into livro  values (4,'Projeto de BD',1,'2009',2);

insert into livro  values (5,'Eng.Software',2,'2008',1);

insert into livro values (6,'Marketing',2,'2008',1);

insert into livro  values (7,'Projeto de Redes',2,'2008',1);

insert into exemplar values (5,1,1,null);

insert into exemplar values (6,2,1,null);

insert into exemplar values(7,3,1,null);

insert into exemplar values(8,4,1,null);

insert into exemplar values(1,1,2,null);

insert into exemplar values(2,2,2,null);

insert into exemplar values(3,3,2,null);

insert into exemplar values(4,4,2,null);

insert into exemplar values(9,1,3,null);

insert into exemplar values(10,2,3,null);

insert into exemplar values(11,3,3,null);

insert into exemplar values(12,4,3,null);

insert into exemplar values(13,1,4,null);

insert into exemplar values(14,2,4,null);

insert into exemplar values(15,3,4,null);

insert into exemplar values(16,4,4,null);

insert into exemplar values(17,1,5,null);

insert into exemplar values(18,2,5,null);

insert into exemplar values(19,3,5,null);

insert into exemplar values(20,4,5,null);

insert into emprestimo values(1,1,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(2,1,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(3,2,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(4,2,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(5,3,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(6,3,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(7,4,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(8,4,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(9,5,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(10,5,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(11,5,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(12,5,to_date('03/11/2015','dd/mm/yyyy'),to_date('18/11/2015','dd/mm/yyyy'));

insert into emprestimo values(13,5,to_date('10/10/2015','dd/mm/yyyy'),to_date('25/10/2015','dd/mm/yyyy'));

insert into item_emprestimo values(1,1);

insert into item_emprestimo values(1,2);

insert into item_emprestimo values(2,4);

insert into item_emprestimo values(3,1);

insert into item_emprestimo values(4,2);

insert into item_emprestimo values(5,2);

insert into item_emprestimo values(6,1);

insert into item_emprestimo values(7,2);

insert into item_emprestimo values(8,2);

insert into item_emprestimo values(9,2);

insert into item_emprestimo values(10,3);

insert into item_emprestimo values(11,6);

insert into item_emprestimo values(12,6);

insert into item_emprestimo values(13,7);

insert into item_emprestimo values(7,4);

insert into devolucao values(1,sysdate,1,1);

insert into devolucao values(2,sysdate,3,1);

insert into devolucao values(3,sysdate,10,3);

insert into devolucao values(4,sysdate,9,5);

insert into devolucao values(5,sysdate,7,4);

----------------------------------------------------------------------------

1 - select p.pes_nome, p.pes_cod, e.emp_cod 
from pessoa p, emprestimo e
where p.pes_cod = 1 and e.emp_cod = 1;

2 - select edi_descricao from editora order by edi_descricao asc;

3 - select liv_titulo from livro where liv_titulo like 'A%';

4 - select liv_titulo from livro where liv_titulo like 'A%' and anopublicacao > 2013;

5 - select count (tel_ddd) from telefone where tel_ddd = 12;

6 - SELECT p.pes_nome, COUNT(e.pes_cod) AS quantidade_emprestimos
FROM Pessoa p
LEFT JOIN Emprestimo e ON p.pes_cod = e.pes_cod
GROUP BY p.pes_nome;

7 - select e.edi_cod, e.edi_descricao, l.liv_cod, l.liv_titulo 
from editora e 
left join livro l
on e.edi_cod = l.edi_cod
order by e.edi_descricao asc;

9 - select l.liv_titulo, l.liv_cod, count(e.exe_cod) as Quantidade
from livro l
left join exemplar e
on l.liv_cod = e.liv_cod
group by l.liv_titulo, l.liv_cod
having count(e.exe_cod) > 3;

10 - select p.pes_nome, f.titulacao, t.tel_numero
from telefone t right outer join pessoa p
on p.pes_cod = t.pes_cod
inner join professor f 
on p.pes_cod = f.pes_cod;

11 - select liv_titulo, anopublicacao from livro order by anopublicacao asc
FETCH FIRST 1 ROWS ONLY;

12 - select p.pes_nome
from pessoa p
inner join emprestimo e on p.pes_cod = e.pes_cod
group by p.pes_nome
order by count(*) desc
fetch first 1 rows only;

14 - select liv_titulo from livro where liv_titulo like 'A%' and anopublicacao > 2011;

