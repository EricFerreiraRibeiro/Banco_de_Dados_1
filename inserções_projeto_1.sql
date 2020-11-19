USE PROJETO;


INSERT INTO CIDADE(ID,NOME,UF) VALUES
	(1,"MAMBORE","PR"),(2,"CAMPO MOURAO","PR"),(3,"CASCAVEL","PR"),(4,"MARINGA","PR"),(5,"CAMPINA DA LAGOA","PR"),
    (6,"PEABIRU","PR"),(7,"JURANDA","PR"),(8,"UBIRATAN","PR"),(9,"LUIZIANA","PR"),(10,"BOA ESPERANCA","PR"),(11,"MARILHIA","SP"),(12,"CERQUILHO","SP");

INSERT INTO BAIRRO(ID_CIDADE,NOME) VALUES
	(1,"CENTRO"),(1,"GUARANI"),(1,"ALTO DA GLORIA"),(1,"PARQUE INDUSTRIAL"),(1,"CONJUNTO PARAGUAI"),(11,"JARDIM CAVALLARI"),
    (2,"CENTRO"),(3,"CENTRO"),(6,"CENTRO"),(5,"CENTRO"),(12,"CENTRO");
    

INSERT INTO ENDERECO(CEP,COMPLEMENTO,LOGRADOURO,NUMERO,ID_BAIRRO) VALUES
	(87340000,"","RUA GUADALAJARA",983,1),(17526160,"","AV. MARIA FERNANDES CAVALARI",203,6),(85812210,"","AV. PIQUIRI",419,8),
    (87300420,"","AV. GOIOERE",1129,7),(87340000,""," R. INTEVENTOR MANOEL RIBAS",122,1),(87340000,""," AV. MANOEL FRANCISCO DA SILVA",232,1),
    (87340000,""," R. INTEVENTOR MANOEL RIBAS",516,1),(87340000,""," R. RICARDO KAUFMAN",365,1),
    (87340000,""," AV. MANOEL FRANCISCO DA SILVA",254,1),(87340000,""," R. INTEVENTOR MANOEL RIBAS",203,1),(87340000,""," R. VER. SIDNEI BART",385,1),
    (87340000,""," R. ITACIL",285,1),(18520000,"", "AV. 1º DE  MAIO",1341,11),(87340000,"CHACRA","R. A",605,4),(87345000,"","TV. PAULINA L DA SILVA",132,10),
    (87250000,"","R. JOSE DIAS ARANHA",1230,9);

INSERT INTO PESSOAS(NOME,SOBRENOME,DATA_REGISTRO,ID_ENDERECO) VALUES 
	("CLAUDIO","GLOVIENKA RIBEIRO",'2000-05-25',1),("PONTO TAPECEIRO",NULL,'2000-05-25',4),("TRENTO BATERIAS",NULL,'2000-06-10',5),("CONTABILIDAE MARTINES",NULL,'2000-05-25',7),
    ("JAIR DESPACHANTE",NULL,'2000-06-15',10),("GUSTAVO","SOUZA PICCININI",'2000-06-15',11),("CIPATEX",NULL,'2000-06-25',13),("ESTRELA VERDE",NULL,'2000-08-27',3), 
    ("PADARIA SONHO MEU",NULL,'2000-09-29',9),("PAULO","SOUZA OLIVEIRA",'2010-03-15',14),("ERIC","FERREIRA RIBEIRO",'2014-07-16',1),("CRIS AVIAMENTO",NULL,'2015-11-19',12),
    ("COMIDA DE VO",NULL,'2016-03-16',8),("TARUGO CHURASCARIA",NULL,'2016-04-14',2),("MATHEUS","VON PICANHA",'2017-09-25',2),("LUCAS","ALEXANDRE O GRANDE",'2018-12-14',15),
    ("MATHEUS","KENJU NAKAR",'2018-12-20',16),("LUCCAS","DIADORIS DA SLVA",'2019-01-25',13), ("PEDRO","CORREIA ",'2019-02-02',1),("FELIPE","BLAZACK SILVA",'2019-02-15',1);
	 
INSERT INTO FORNECEDOR(CNPJ,NOME_FANTASIA,IE) VALUES 
	("63872612000194","PONTO TAPECEIRO",787393470),("35359105000116","CRIS AVIAMENTO",606018198),("90567644000159","ESTRELA VERDE",848077090),
	("47254461000154","CIPATEX",930288422),("14138536000182","TUDO PARA TAPECEIROS",241700212),("39505042000110","LUIS E EMILIA GRAFICA LTDA",145601908),
	("15079643000140","REI DOS TECIDOS",751933641),("56865763000150","TUDO EM ESTOFADOS LTDA",640645894),("36691724000176","AVIAMENTO FRABICIO",270885085),
	("29457942000185","ESTRELA DO NORTE",831586581);

INSERT INTO CONTATO(TELEFONE,EMAIL,CELULAR) VALUES 
	("4436323360","casdfgdfgs@gat.com.br","44996064600"),("4429099858","fettesdnde@gat.com.br","44994891169"),(NULL,NULL,"4435235367"),
	(NULL,"cipatex@gat.com.br","4126144944"),(NULL,"tudotape@get.com.br","4336178938"),("43996773945",NULL,"4389178938"),
	(NULL,"martheusk@gat.com.br",NULL),("4435347869",NULL,"44982889838"),("4335027575","crisaviamento@gat.com.br","43992364306"),
	(NULL,"tudoestofado@gat.com.br","44987888123"),("4325780554","aviamentofabri",NULL),("4125689540","luis_emilia@gat.com.br","41991280556");

    
INSERT INTO JURIDICA(CNPJ,IE,ID_P) VALUES 
	("63872612000194",787393470,2),("13350516000108",772077517,3),("63872612000194",772077521,4),
    ("34096490000193",643741512,5),("88970787000165",465189959,7),("09341064000120",668170552,8),
    ("54233337000178",604010691,9),("24088397000183",472243748,10),("99255236000136",302111685,11),
    ("99255236000136",302111685,12);

INSERT INTO SERVICO(PRECO,DATA_INICIO_S,DATA_FIM_S,DESCRICAO) VALUES
	(1800.23,'2006-03-15 ','2006-03-25','REFORMA JOGO SOFA'),(50.00,'2006-03-16 ','2006-03-16','COSTURA ALMOFADA'),(1950.23,'2007-01-01 ','2007-01-13','REFORMA SOFA E CADEIRA'),
    (120.00,'2007-06-05 ','2007-06-17','REFORMA CADEIRA'),(1000.00,'2007-06-05 ','2007-06-07','REFORMA ESTOFADO DE CARRO'),(200.23,'2010-03-15 ','2010-03-17','REMENDO LONA'),
    (2000.00,'2010-03-15 ','2010-03-25','REFORMA JOGO SOFA'),(90.00,'2010-04-02 ','2010-04-02','VENDA 3MT DE CORVIN'),(1800.00,'2011-12-15 ','2011-12-25','REFORMA JOGO SOFA'),
    (600.00,'2014-11-20 ','2014-11-27','REFORMA SOFA 2 LUGARES');
       
INSERT INTO FUNCAO(AVALIACAO,FUNCAO) VALUES
    (0,"CLIENTE"),(1,"ASSISTENTE JR"),(2,"AUXILIAR DESMONTADOR"),(3,"DESMONTADOR"),
    (4,"ASSISTENTE MONTADOR"),(5,"MONTADOR"),(6,"ASSITENTE GERAL"),(7,"ASSISTENTE GERENTE"),(8,"GERAL"),
    (9,"GERENTE");
    
INSERT INTO DADOS(ID,SALARIO,CARGA_HORARIA) VALUES
	(1,NULL,0),(2,300.00,4),(3,450.00,4),
    (4,600.00,8),(5,450.00,4),(6,750.00,8),
    (7,750.00,0),(8,800.00,4),(9,1600.00,4),
    (10,1800.00,0);

#PANO TEM NOME SO QUE EU NAO ACHEI E VOU TER QUE CONFERIR NO MOSTRUAIRIO DA TAPECARIA
INSERT INTO CATEGORIA(ID,GRUPO,NOME,COR) VALUES
	(1,"TECIDOS","CORVIN","PRETO"),(2,"TECIDOS","CORVIN","AZUL"),(3,"TECIDOS","CORVIN","VERMELHO"),
    (4,"TECIDOS","CORVIN","BRANCO"),(5,"TECIDOS","PANO","PRETO"),(6,"TECIDO","PANO","MARROM"),
    (7,"TECIDO","PANO","MARROM ESCURO"),(8,"COURO","COURO SINTETICO","PRETO"),(9,"COURO","COURO SINTETICO","CINZA"),
    (10,"OUTROS","COLA","PRETO"),(11,"OUTROS","MADEIRA",NULL),(12,"TECIDO","CORVIN","VERDE");

INSERT  INTO PRODUTO(ID_CATEGORIA,QTD,VALOR_QTD,TIPO_MEDIDA_PRODUTO,DISPONIBILIDADE) VALUES 
	(1,20,30,"MT","SIM"),(2,18,30,"MT","SIM"),(3,25,30,"MT","SIM"),
    (4,5,30,"MT","NAO"),(5,15,35,"MT","SIM"),(6,13,35,"MT","SIM"),
    (7,25,35,"MT","SIM"),(8,22,47,"MT","SIM"),(9,16,47,"MT","SIM"),
    (10,6,40,"LT","NAO"),(11,35,25,"MT","NAO"),(12,13,30,"MT","SIM");

INSERT INTO CAIXA_MENSAL(MES_ANO,ID_PF,VALOR_ENTRADA,VALOR_SAIDA,LUCRO,DESCRICAO_GASTO,DESCRICAO_ENTRADA) VALUES
	("01/2000",20,15000.00,10000.00,5000.00,"PRODUTOS E FUNCIONARIO","SERVICO EM GERAL"),("02/2000",20,25050.00,23000.00,2050.00,"PRODUTOS , FUNCIONARIO  E NOVAS FERAMENTAS","SERVICO EM GERAL"),
    ("03/2000",20,10000.00,10000.00,0,"PRODUTOS E FUNCIONARIO","SERVICO EM GERAL"),("04/2000",20,5000.00,10000.00,0,"PRODUTOS , FUNCIONARIO E FERRAMENTAS","SERVICO EM GERAL"),
    ("05/2000",20,10000.00,5000.00,5000.00,"PRODUTOS E FUNCIONARIO","SERVICO EM GERAL"),("06/2000",20,17800.00,10000.00,7800.00,"PRODUTOS E FUNCIONARIO","SERVICO EM GERAL"),
    ("07/2000",20,15000.00,10000.00,5000.00,"PRODUTOS E FUNCIONARIO","SERVICO EM GERAL"),("08/2000",20,16000.00,9000.00,7000.00,"PRODUTOS E FUNCIONARIO","SERVICO EM GERAL"),
    ("09/2000",20,15000.00,3000.00,0,"PRODUTOS , FUNCIONARIO E REFORMA","SERVICO EM GERAL"),("10/2000",20,15000.00,1500.00,5000.00,"PRODUTOS , FUNCIONARIO REFORMA","SERVICO EM GERAL");
   
INSERT INTO BOLETOS(MES_ANOC,NOME_FATURA,VALOR,DIA_VENCIMENTO,DIA_PAGO) VALUES
	("01/2000","CAIXA",500.00,"2000-01-14","2000-01-15"),("01/2000","CAIXA",550.00,"2000-01-15","2000-01-15"),("01/2000","CAIXA",300.00,"2000-01-20","2000-01-20"),
    ("01/2000","SICREDI",700.00,"2000-01-20","2000-01-20"),("01/2000","CAIXA",500.00,"2000-01-20","2000-01-20"),("02/2000","CAIXA",500.00,"2000-02-10","2000-02-5"),
    ("02/2000","CAIXA",350.00,"2000-02-15","2000-02-25"),("02/2000","CAIXA",500.00,"2000-01-10","2000-01-15"),("02/2000","BRADESCO",900.00,"2000-02-27","2000-02-27"),
    ("03/2000","CAIXA",500.00,"2000-03-5","2000-03-6"),("03/2000","CAIXA",500.00,"2000-03-5","2000-03-06"),("03/2000","CAIXA",500.00,"2000-03-29","2000-04-02");

INSERT INTO PF_E_F(ID_F,AVALIACAO_F) VALUES
	(1,9),(6,0),(10,8),
    (11,7),(15,0),(16,0),
    (17,0),(18,0),(19,2),
    (20,1); 

INSERT INTO FORNCEDOR_TEM_CONTATO(CNPJ_FORNECEDOR,ID_CONTATO) VALUES 
	("63872612000194",3),("35359105000116",9),("90567644000159",NULL),
    ("47254461000154",4),("14138536000182",5),("39505042000110",12),
    ("15079643000140",NULL),("56865763000150",10),("36691724000176",11),
    ("29457942000185",NULL);

INSERT INTO PESSOA_TEM_CONTATO(ID_PESSOAS,ID_CONTATO) VALUES
	(1,1),(2,3),(7,4),
    (6,2),(12,9),(17,7),
    (3,6),(11,1),(9,8),
    (10,1);
    
INSERT INTO DADOS_FUNCIONARIO(ID_DADOS,AVALIACAO_FUNCAO) VALUES
	(1,0),(2,1),(3,2),
    (4,3),(5,4),(6,5),
    (7,6),(8,7),(9,8),
    (10,9);

INSERT INTO FORNECEDOR_FORNECE_PRODUTO(CNPJ_F,ID_P) VALUES
("63872612000194",1),("63872612000194",2),("63872612000194",3),
("36691724000176",4),("56865763000150",5),("36691724000176",6),
("56865763000150",7),("56865763000150",8),("29457942000185",9),
("63872612000194",12); 

INSERT INTO SERVICO_USA_PRODUTO(ID_S,ID_P) VALUES
	(1,1),(1,11),(1,10),
    (2,5),(2,11),(2,2),
    (4,3),(7,11),(7,12),
    (8,1),(9,12),(9,11)
    ,(10,6);

INSERT INTO FUNCIONARIO_FAZ_SERVICO(ID_SERVICO,ID_PF) VALUES 
	(1,10),(1,11),(1,20),
    (2,10),(3,11),(3,10),
    (4,11),(5,1),(5,11),
    (6,11),(7,19),(7,20),
    (7,10),(8,1),(9,1),
    (10,11);

INSERT INTO PESSOA_PEDE_SERVICO(ID_P,ID_S) VALUES
	(3,1),(9,2),(16,3),
    (13,4),(18,5),(18,6),
    (6,7),(14,8),(20,9),
    (15,10);