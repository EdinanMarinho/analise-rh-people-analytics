-- Atualizada VIEW para trazer o Tipo Afastamento
ALTER VIEW vw_contratos
AS
SELECT CodFuncionário                      AS CodFuncionario
	 , DataAdmissao                        AS DataAdmissao
	 , CodCargo                            AS CodCargo
	 , Cargo			                   AS Cargo
	 , CASE
	     WHEN CHARINDEX( ' ', Cargo) > 0
			THEN SUBSTRING(Cargo, 1, CHARINDEX(' ', Cargo) - 1 ) 
		 ELSE Cargo 
	   END                                 AS GrupoCargo
	 , DataCargo		                   AS DataCargo
	 , CodEscala		                   AS CodEscala
	 , Escala			                   AS Escala
	 , CodCentroCusto	                   AS CodCentroCusto
	 , CentroCusto		                   AS CentroCusto
	 , CodTipoContrato	                   AS CodTipoContrato
	 , TipoContrato		                   AS TipoContrato
	 , ValorSalario		                   AS ValorSalario
	 , DataSalario		                   AS DataSalario
	 , CodSituacao		                   AS CodSituacao
	 , Situacao			                   AS Situacao
	 , DataAfastamento	                   AS DataAfastamento
	 , CodCausaAfastamento                 AS CodCausaAfastamento
	 , CASE
	     WHEN CodCausaAfastamento = 0   THEN 'null'
		 WHEN CodCausaAfastamento = 3   THEN 'Ativo'
		 WHEN CodCausaAfastamento = 4   THEN 'Ativo'
		 WHEN CodCausaAfastamento = 14  THEN 'Ativo'
		 WHEN CodCausaAfastamento = 1   THEN 'Passivo'
		 WHEN CodCausaAfastamento = 2   THEN 'Passivo'
		 WHEN CodCausaAfastamento = 3   THEN 'Passivo'
		 ELSE 'Espontâneo'
	  END                                  AS TipoAfastamento
	 , CausaAfastamento                    AS CausaAfastamento
	 , [MotivoAfastamento(Gestor)]         AS [MotivoAfastamento(Gestor)]
  FROM Funcionarios