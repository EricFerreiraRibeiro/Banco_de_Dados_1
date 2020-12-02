USE PROJETO;



# 1.Qual a quantidade de produtos por serviço 

SELECT S.ID AS Servico_id,count(P.ID) AS Qtd_produto
FROM SERVICO S, PRODUTO P ,  SERVICO_USA_PRODUTO SP
WHERE S.ID = SP.ID_S
AND  P.ID = SP.ID_P
GROUP BY S.ID;

# 2.Liste o nome e sobrenome das pessoas fisicas que não fizeram serviçor

SELECT P.NOME,P.SOBRENOME
FROM PESSOAS P,FISICA F
WHERE P.ID = F.ID_P
AND P.ID NOT IN(SELECT P1.ID 
					FROM PESSOAS P1,PESSOA_PEDE_SERVICO PS 
                    WHERE P1.ID = PS.ID_P);

# 3.Liste o nome das pessoas juridicas que não fizeram serviçor

SELECT P.NOME,J.CNPJ
FROM PESSOAS P,JURIDICA J 
WHERE P.ID = J.ID_P 
AND P.ID NOT IN(SELECT P1.ID 
					FROM PESSOAS P1,PESSOA_PEDE_SERVICO PS 
                    WHERE P1.ID = PS.ID_P);
                    
# 4.Qual o nome, funcao e salario dos funcionarios e quantidade de servico eles trabalharam 

SELECT  P.NOME,FUN.FUNCAO,D.SALARIO,count(S.ID) AS SERVICO_PRESTADO
FROM PESSOAS P,FISICA F,FUNCAO FUN,PF_E_F PF, DADOS D,SERVICO S, DADOS_FUNCIONARIO DF, FUNCIONARIO_FAZ_SERVICO FS
WHERE  P.ID = F.ID_P
AND   F.ID_P =  PF.ID_F
AND   PF.AVALIACAO_F = FUN.AVALIACAO
AND   FUN.AVALIACAO = DF.AVALIACAO_FUNCAO
AND   DF.ID_DADOS = D.ID
AND   P.ID = FS.ID_PF
AND   FS.ID_SERVICO = S.ID
GROUP BY P.ID;

# 5.Selecione pessoas que fizeram 2 servico ou mais

SELECT  P.NOME
FROM PESSOAS P, PESSOA_PEDE_SERVICO PS
WHERE P.ID = PS.ID_P
GROUP BY P.ID
HAVING COUNT(PS.ID_P) >= 2;

# 6.Liste a quantidade de boletos no caixa mensal por mes, no ano 2000

SELECT  CM.MES_ANO,COUNT(B.ID) AS Quantidade_boleto
FROM CAIXA_MENSAL CM, BOLETOS B
WHERE CM.MES_ANO = B.MES_ANOC
AND YEAR(B.DIA_VENCIMENTO) = 2000
GROUP BY CM.MES_ANO;

# 7.liste as caracteristicas do produtos que foram usados em servico e sua quantidade usada

SELECT C.NOME  AS nome_Produto ,C.COR,C.GRUPO,count(P.ID) AS Qtd_USADA
FROM SERVICO S, PRODUTO P ,  SERVICO_USA_PRODUTO SP, CATEGORIA C
WHERE S.ID = SP.ID_S
AND  P.ID = SP.ID_P
AND  P.ID_CATEGORIA = C.ID
GROUP BY C.NOME,C.COR,C.GRUPO;

# 8.Quantas pessoas que nao sao da cidade mambore estao registradas

SELECT COUNT(P.ID)
FROM PESSOAS P
WHERE P.ID  NOT IN(SELECT P2.ID
					FROM PESSOAS P2,ENDERECO E,BAIRRO B,CIDADE C
					WHERE P2.ID_ENDERECO = E.ID
                    AND E.ID_BAIRRO = B.ID
                    AND B.ID_CIDADE = C.ID
                    AND C.NOME = 'MAMBORE');
                    
# 9.Qual o nome das pessoas que nao sao da cidade mambore estao registradas e a quantidade de servico que elas pediram

SELECT P.NOME , COUNT(PS.ID_P)
FROM PESSOAS P , PESSOA_PEDE_SERVICO PS
WHERE P.ID = PS.ID_P
AND P.ID  NOT IN(SELECT P2.ID
					FROM PESSOAS P2,ENDERECO E,BAIRRO B,CIDADE C
					WHERE P2.ID_ENDERECO = E.ID
                    AND E.ID_BAIRRO = B.ID
                    AND B.ID_CIDADE = C.ID
                    AND C.NOME = 'MAMBORE')
GROUP BY P.NOME;

#10 Liste o nome e id pessoas fisicicas clientes sao de MAMBORE mas não pediram servico

SELECT DISTINCT P.NOME , P.ID
FROM PESSOAS P,FISICA F,FUNCAO FUN, PF_E_F PF
WHERE P.ID NOT IN(SELECT P2.ID FROM PESSOAS P2 , PESSOA_PEDE_SERVICO PS2
					WHERE P2.ID = PS2.ID_P)
AND P.ID    IN(SELECT P2.ID
					FROM PESSOAS P2,ENDERECO E,BAIRRO B,CIDADE C
					WHERE P2.ID_ENDERECO = E.ID
                    AND E.ID_BAIRRO = B.ID
                    AND B.ID_CIDADE = C.ID
                    AND C.NOME = 'MAMBORE')
AND  P.ID = F.ID_P
AND   F.ID_P =  PF.ID_F
AND   PF.AVALIACAO_F = 0;
