CREATE TABLE IF NOT EXISTS funcionarios(id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
										 nome TEXTO,
										 sexo CHAR(1),
										 nascimento DATE,
										 telefone NUMÉRICO);
										
INSERT INTO funcionarios(nome, sexo, nascimento, telefone)
						 VALUES("Carlos", "M", "10/11/1980", 86985642568);

INSERT INTO funcionarios (nome, sexo, nascimento, telefone)
					      VALUES("Pedro", "M", "01/08/1988", 11985625866);

SELECT* FROM funcionarios;




CREATE TABLE IF NOT EXISTS clientes(id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
									 nome TEXTO,
									 sexo CHAR(1),
									 telefone NUMÉRICO);

INSERT INTO clientes(nome, sexo, telefone)
					  VALUES("Maria", "F", 86955862324);
					  
INSERT INTO clientes(nome, sexo, telefone)
					  VALUES("Carla", "F", 21985474522);					  

SELECT* FROM clientes;




CREATE TABLE IF NOT EXISTS produtos(id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
									nome TEXTO,
									valor DECIMAL(10,2),
									quantidade INT,
									idcliente INT,
									FOREIGN KEY(idcliente) REFERENCES clientes(id_cliente));

INSERT INTO produtos(nome, valor, quantidade, idcliente)
					 VALUES("sabão", 15.25, 5, 2);

INSERT INTO produtos (nome, valor, quantidade, idcliente)
					  VALUES("leite", 30.55, 20, 1);
					  
SELECT* FROM produtos;