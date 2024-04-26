INSERT INTO [Pessoa] (idPessoa, nome, logradouro, cidade, estado, telefone, email)
VALUES
(1, 'João Silva', 'Rua das Árvores 456', 'São Paulo', 'SP', '1122334455', 'joao@email.com'),
(2, 'Maria Souza', 'Avenida Central 789', 'Rio de Janeiro', 'RJ', '2123456789', 'maria@email.com'),
(3, 'Carlos Santos', 'Travessa Exemplo 123', 'Belo Horizonte', 'MG', '3134567890', 'carlos@email.com'),
(4, 'Ana Pereira', 'Rua Principal 789', 'Porto Alegre', 'RS', '5143219876', 'ana@email.com');

INSERT INTO [Usuario] (idUsuario, login, senha)
VALUES
(1, 'usuario1', 'senha123'),
(2, 'usuario2', 'senha456'),
(3, 'usuario3', 'senha789');

INSERT INTO [PessoaFisica] (idPessoaFisica, cpf)
VALUES
(1, '12345678901'),
(2, '98765432109');

INSERT INTO [PessoaJuridica] (idPessoaJuridica, cnpj)
VALUES
(1, '01234567890123'),
(2, '90123456789012');

INSERT INTO [Produto] (idProduto, nome, quantidade, precoVenda)
VALUES
(1, 'Banana', 180, 2.75),
(2, 'Morango', 120, 3.50),
(3, 'Laranja', 150, 2.25),
(4, 'Melancia', 200, 5.00);

INSERT INTO [Movimento] (idMovimento, idProduto, idPessoa, idUsuario, tipo, quantidade, precoUnitario)
VALUES
(1, 1, 1, 1, 'E', 30, 2.75),
(2, 2, 2, 2, 'E', 20, 3.50),
(3, 3, 3, 3, 'S', 15, 2.25),
(4, 4, 4, 1, 'E', 35, 5.00),
(5, 1, 2, 2, 'S', 10, 2.75);
