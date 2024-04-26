SELECT Pessoa.idPessoa, Pessoa.nome, Pessoa.logradouro, Pessoa.cidade,
Pessoa.estado, Pessoa.telefone, Pessoa.email, PF.cpf
FROM Pessoa
JOIN PessoaFisica PF ON Pessoa.idPessoa = PF.idPessoaFisica;
SELECT Pessoa.idPessoa, Pessoa.nome, Pessoa.logradouro, Pessoa.cidade,
Pessoa.estado, Pessoa.telefone, Pessoa.email, PJ.cnpj
FROM Pessoa
JOIN PessoaJuridica PJ ON Pessoa.idPessoa = PJ.idPessoaJuridica;
SELECT
P.nome AS Fornecedor,
Prod.nome AS Produto,
Mov.quantidade,
Mov.precoUnitario AS PrecoUnitario,
Mov.quantidade * Mov.precoUnitario AS ValorTotal
FROM Movimento Mov
JOIN Produto Prod ON Mov.idProduto = Prod.idProduto
JOIN Pessoa P ON Mov.idPessoa = P.idPessoa
WHERE Mov.tipo = 'E';
SELECT
P.nome AS Comprador,
Prod.nome AS Produto,
Mov.quantidade,
Mov.precoUnitario AS PrecoUnitario,
Mov.quantidade * Mov.precoUnitario AS ValorTotal
FROM Movimento Mov
JOIN Produto Prod ON Mov.idProduto = Prod.idProduto
JOIN Pessoa P ON Mov.idPessoa = P.idPessoa
WHERE Mov.tipo = 'S';
SELECT Mov.idProduto, SUM(Mov.quantidade * Mov.precoUnitario) AS TotalEntradas
FROM Movimento Mov
WHERE Mov.tipo = 'E'
GROUP BY Mov.idProduto;
SELECT Mov.idProduto, SUM(Mov.quantidade * Mov.precoUnitario) AS TotalSaidas
FROM Movimento Mov
WHERE Mov.tipo = 'S'
GROUP BY Mov.idProduto;
SELECT DISTINCT U.*
FROM Usuario U
LEFT JOIN Movimento M ON U.idUsuario = M.idUsuario AND M.tipo = 'E'
WHERE M.idUsuario IS NULL;
SELECT M.idUsuario, SUM(M.quantidade * M.precoUnitario) AS TotalEntradas
FROM Movimento M
WHERE M.tipo = 'E'
GROUP BY M.idUsuario;
SELECT M.idUsuario, SUM(M.quantidade * M.precoUnitario) AS TotalSaidas
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.idUsuario;
SELECT
Prod.nome AS Produto,
Mov.idProduto,
SUM(Mov.quantidade * Mov.precoUnitario) / SUM(Mov.quantidade) AS
MediaPonderada
FROM Movimento Mov
JOIN Produto Prod ON Mov.idProduto = Prod.idProduto
WHERE Mov.tipo = 'S'
GROUP BY Mov.idProduto, Prod.nome;