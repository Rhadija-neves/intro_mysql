- - Rhadija Neves

- - crud para seguintes entidades:

- - cliente(id, nome, email, telefone)
- - veiculo(id, placa, ano, marca, id_cliente)
- - funcionario(id, nome, funcao, salario, matricula, status_funcionario)

- - professor@profadevairvitorio



- - criar uma base de dados
	CREATE DATABASE empresa_localicao;

- - Conectar na base dados
	USE empresa_localicao;

-- Criar as tabelas e adicionar o id automático
a. clientes:
	CREATE TABLE clientes(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	telefone VARCHAR(12)
	);

b. veiculos:
	CREATE TABLE veiculos(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	placa VARCHAR(8) NOT NULL,
	ano INTEGER NOT NULL,
	marca VARCHAR(30),
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id)
	);

c. funcionarios:
	CREATE TABLE funcionarios(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	funcao VARCHAR(8) NOT NULL,
	salario DOUBLE NOT NULL,
	matricula INTEGER,
	status_funcionario INTEGER NOT NULL
	);

- - Inserir dados na base de dados usando o comando INSERT
a. Clientes:
	INSERT INTO clientes (nome, email, telefone) VALUES ("Joãozinho", "joao@uol.com", 		"27999885586");
	INSERT INTO clientes (nome, email, telefone) VALUES ("Adevair", 				"adevair@mysql.com.br", "2799997965");
	INSERT INTO clientes (nome, email, telefone) VALUES ("Odeio Bando de dados da 			silva", "mysql@mysql.com.br", "27999969965");

b. Veiculos: 
	INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("OKP-5558", 2022, 			"Gol", 1);
	INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("JKL-5569", 2022, 			"Honda", 2);
	INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("ADE-1234", 2022, 			"Gol", 3);		

c. Funcionarios :
   LEGENDA PARA status_funcionario: 0 - Inativo | 1 - Ativo
	INSERT INTO funcionarios(nome, funcao, salario, matricula, status_funcionario) 			VALUES("Katatina", "Gerente", "2.012", 2, 1);
	INSERT INTO funcionarios(nome, funcao, salario, matricula, status_funcionario) 			VALUES("Enrique", "Vendedor", "1.212", 4, 0);
	INSERT INTO funcionarios(nome, funcao, salario, matricula, status_funcionario) 			VALUE("Estefany","Vendedora", "1.212", 3, 0);

- - Criar Consultas Usando o comando SELECT
Clientes:
   a. Todos os campos de todos os clientes:
	SELECT * FROM clientes;

   b. Todos os nomes dos clientes:
	SELECT nome FROM clientes;

   c. Todos os emails e telefones dos clientes:
	SELECT email,telefone FROM clientes;

   d.  Lista telefônica:
	SELECT nome,telefone FROM clientes;

Veiculos:
   a. Todos os campos de todos os veículos:
	SELECT * FROM veiculos;

   b. Placa do veículo de id = 3:
	SELECT placa FROM veiculos WHERE id = 3;

   c. Todas as placas dos veículos:
	SELECT placa FROM veiculos;

   d. Todos os veículos do cliente com id=1:
	SELECT * FROM veiculos WHERE id_cliente = 1;

Funcionarios:
   a. Todos os funcionários:
	SELECT * FROM funcionarios;

   b. Todos os funcionários ativos:
	SELECT * FROM funcionarios WHERE status_funcionario = 1;

   c. Matricula de todos os funcionários:
	SELECT matricula FROM funcionarios;

   d. Função e salário de todos os funcionários:
	SELECT funcao, salario FROM funcionarios;

   e. Função, salário e status de todos os funcionários ativos:
	SELECT funcao, salario, status_funcionario FROM funcionarios WHERE status_funcionario = 1;

- - Atualizar os registro existentes usando o comando UPDATE
Clientes:
   Atualize o nome do cliente de id = 6 para “Cliente Atualizado de Oliveira”
	UPDATE clientes SET nome = "Cliente Atualizado de Oliveira" WHERE id = 6;

Veiculos:
   Atualize o ano do veículo do cliente de id = 6 para 1997:
	UPDATE veiculos SET ano = 1997 WHERE id_cliente = 6;

Funcionarios:
   Atualize o nome do funcionário de id = 3 para “Amo Crud”:
	UPDATE funcionarios SET nome = "Amp Crud" WHERE id = 3;

- - Deletar alguns registros usando o Comando DELETE
Clientes:
   a. Apagar o cliente de id = 1:
	DELETE FROM clientes WHERE id=1 ;

   b. Apagar todos os clientes com nome = “Adevair”:
	DELETE FROM clientes WHERE nome = "Adevair";

   c. Apagar todos os clientes:
	DELETE FROM clientes WHERE TRUE;

Veiculos:
   a. Apagar o veículo de id = 2;
	DELETE FROM veiculos WHERE id = 2;

   b. Apagar todos os veículos do cliente com id = 1;
	DELETE FROM veiculos WHERE id_cliente = 1;

   c. Apagar todos os veículos:
	DELETE FROM veiculos WHERE TRUE;

Funcionarios: 
   a. Apague o funcionário de id = 1:
	DELETE FROM funcionarios WHERE id = 1;

   b. Apague todos os funcionários inativos:
	DELETE FROM funcionarios WHERE status_funcionario = 0;