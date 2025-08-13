ALTER VIEW vw_funcionarios
AS
SELECT CodFuncionário               AS CodFuncionario
	 , Funcionario                  AS Funcionario
	 , CASE WHEN Sexo = 'M'
		    THEN 'Masculino'
			WHEN Sexo = 'F'
			THEN 'Feminino'
			ELSE 'NULL'
	   END                          AS Sexo
	 , CentroCusto                  AS CentroCusto
	 , EstadoCivil                  AS EstadoCivil
	 , Escolaridade                 AS Escolaridade
	 , DataNascimento               AS DataNascimento
	 , Nacionalidade                AS Nacionalidade
	 , Raca                         AS Raca
	 , CASE WHEN Situacao = 'Demitido'
		    THEN 'Demitido'
			ELSE 'Ativo'
	   END                          AS Status          
	 , CASE 
		WHEN DATEDIFF(year, DataNascimento, GETDATE()) <= 24 THEN '15 a 24 anos'
		WHEN DATEDIFF(year, DataNascimento, GETDATE()) <= 34 THEN '25 a 34 anos'
		WHEN DATEDIFF(year, DataNascimento, GETDATE()) <= 44 THEN '35 a 44 anos'
		WHEN DATEDIFF(year, DataNascimento, GETDATE()) <= 54 THEN '45 a 54 anos'
		ELSE '55 +'
	   END                          AS FaixaEtaria
  FROM Funcionarios