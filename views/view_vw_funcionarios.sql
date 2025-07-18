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
  FROM Funcionarios
