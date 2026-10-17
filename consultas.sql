USE mydb;

-- Relatorio: quantidade de locacoes por cliente
SELECT
    pessoas.Nome AS Cliente,
    COUNT(locacao.IDLOC) AS Total_Locacoes
FROM pessoas
INNER JOIN locacao
    ON pessoas.CPF = locacao.PESSOAS_CPF
GROUP BY pessoas.CPF, pessoas.Nome
ORDER BY Total_Locacoes DESC;
