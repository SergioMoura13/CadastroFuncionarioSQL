create database pFinal;
use pFinal;

	create table funcionario(
	id_funcionarios int NOT NULL auto_increment,
    primeiroNome varchar (15) NOT NULL,
    segundoNome varchar (15),
    ultimoNome varchar (15) NOT NULL,
    dataNasci date NOT NULL,
    cpf int(10) NOT NULL,
    rg int(8) NOT NULL,
    endereco varchar(30) NOT NULL,
    cep int (9) NOT NULL,
    cidade varchar (15) NOT NULL,
    fone int (9) NOT NULL,
    idDepartamentos int,
    funcao varchar (10) NOT NULL,
    salario int(10) NOT NULL,
    primary key (id_funcionarios)
    ); 
    
    insert into funcionario values ('0', 'Sergio', 'Henrique', 'Moura', '2000-08-28', '0843431334', '3211515','sha conjunto 5', '71995270', 
    'Brasilia', '998443045', '0', 'Estagiario', '45250');
    insert into funcionario values ('0', 'Matheus', 'Henrique', 'Ribeiro', '2000-02-26', '0753431334', '2211515','sha conjunto 5', '71995370', 
    'Brasilia', '998444538', '0', 'Estagiario', '15050');
    insert into funcionario values ('0', 'Gabriel', null, 'Soares', '1999-06-29', '0753421534', '2211616','sha conjunto 4', '71885370', 
    'Brasilia', '998422538', '0', 'Estagiario', '35050');
    insert into funcionario values ('0', 'Ana', 'Maria', 'Soares', '1999-01-04', '0753225534', '2255216','qng conjunto 4', '71888970', 
    'Brasilia', '998892538', '0', 'Estagiario', '13250');
    insert into funcionario values ('0', 'Ivina', null, 'Oliveira', '1997-02-28', '0753455634', '2288916','sha conjunto 9', '71995370', 
    'Brasilia', '986422538', '0', 'Estagiario', '11250');
    insert into funcionario values ('0', 'Gabriel', 'Oliveira', 'Soares', '1996-06-03', '0753665534', '2211916','taguatinga 4', '8855370', 
    'Brasilia', '998428898', '0', 'Tecnico', '3350');
    insert into funcionario values ('0', 'Maria', 'Eduarda', 'Reis', '1992-05-20', '0953889534', '2255916','taguatinga 9', '9985370', 
    'Brasilia', '998773045', '0', 'Tecnico', '3380');
    insert into funcionario values ('0', 'Gabriel', 'Henrique', 'Moura', '2003-06-19', '0753665534', '2669916','Park way 4', '8888970', 
    'Brasilia', '998889898', '0', 'Tecnico', '5650');
    insert into funcionario values ('0', 'Julia', 'Oliveira', 'Pacheco', '1888-01-02', '0753889534', '3311916','Paranoa 4', '8889370', 
    'Brasilia', '998428898', '0', 'TecnicoGer', '5000');
    insert into funcionario values ('0', 'Sergio', 'Moura', 'Fernandes', '2000-08-27', '0753779534', '2111916','Vicente pires 4', '1259370', 
    'Brasilia', '998878898', '0', 'Progr', '12000');
    
    select * from funcionario;
    
    create table departamentos(
		id_Departamento int NOT null auto_increment primary key,
        nome varchar(10) NOT NULL,
        localizacao varchar(20) NOT NULL,
        fk_id_funcionarios int not null,
        constraint FK_codDepartamento foreign key (fk_id_funcionarios) references funcionario (id_funcionarios)
		
    );
    
    insert into departamentos values ('0', 'Logistica', 'JardimB', 'id_funcionarios' );
    insert into departamentos values ('0', 'Comercio', 'JardimF', 'id_funcionarios' );
    
    
    
-- 1    
 SELECT primeiroNome, ultimoNome FROM funcionario ORDER BY ultimoNome;
-- 2 
SELECT * FROM funcionario WHERE salario > 1000 ORDER BY primeiroNome, segundoNome, ultimoNome;
-- 3
SELECT dataNasci, primeiroNome FROM funcionario ORDER BY dataNasci DESC, primeiroNome;
-- 4
SELECT primeiroNome, ultimoNome, segundoNome, fone, endereco, cidade FROM funcionario ORDER BY ultimoNome, primeiroNome, segundoNome;

-- 5
SELECT SUM(salario) AS TOTAL FROM funcionario;

-- 7
SELECT COUNT(*) AS TotalFuncionarios FROM funcionario;

-- 9
SELECT min(salario) FROM funcionario;

-- 10
SELECT primeiroNome, segundoNome, ultimoNome FROM funcionario WHERE segundoNome IS NULL ORDER BY primeiroNome, ultimoNome;
