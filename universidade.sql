<<<<<<< HEAD
CREATE DATABASE  IF NOT EXISTS `universidade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universidade`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade
-- ------------------------------------------------------
-- Server version	8.0.27

=======

CREATE DATABASE  IF NOT EXISTS `universidade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universidade`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade
-- ------------------------------------------------------
-- Server version	8.0.27

>>>>>>> 4f860215176ec60d6c0d5130f32a5d7025fb992d
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `CPF` varchar(14) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereço` varchar(150) DEFAULT NULL,
  `Ativo` varchar(1) DEFAULT NULL,
  `cod_curso` int NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `cod_curso` (`cod_curso`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES ('061.118.187-83','Alexandre Mário Felipe Assunção','+55 (21)97678-4588','Rua Silvana , Nº 83 ','N',987654),('068.866.847-01','Felipe Cauê Gonçalves','+55 (24)97567-6534','Rua Carpi, Nº 345','S',321098),('095.840.827-01','Yuri Danilo Nogueira','+55 (21)97867-2435','Rua Felicia, Nº 353','S',987654),('102.069.917-54','Eliane Agatha Nair Teixeira','+55 (24)98787-5656','Rua Alex do Mar, Nº 346','S',678912),('120.155.217-63','Patrícia Rita Oliveira','+55 (24)98769-4567','Rua Araras, Nº 34','S',678912),('123.627.567-50','César Pietro Costa','+55 (21)98765-4545','Rua Padre Antonio , Nº 98 ','S',678912),('156.596.568-96','Mário Santos Alvares','+55 (21)9856-8578','Rua Alvez','',123456),('165.987.876-96','Antônio Guedes Silva','+55 (24)98787-7898','Rua Caitano , Nº 352','S',678912),('167.989.878-95','Maria Eduarda Quirino Figueiredo','+55 (21)97151-1562','Rua Vinte e Três, Nº 226','S',123456),('186.457.147-01','Mário Luís Figueiredo','+55 (21)98075-4657','Rua Brigadeiro, Nº 246','S',987654),('197.786.747-28','Bianca Daiane da Conceição','+55 (24)93476-0976','Rua Souza, Nº 837','S',123456),('201.141.357-54','Raimundo Daniel da Conceição','+55 (21)98789-8967','Rua Trezentos, Nº 972','N',123456),('209.166.787-09','Enzo Juan Souza','+55 (21)97372-5543','Rua Maracanã, Nº 432','S',321098),('234.756.457-93','Matheus Lorenzo Pietro da Paz','+55 (21)93456-5767','Rua Rio de Janeiro, Nº 53','S',321098),('235.722.217-49','Brenda Mirella Souza','+55 (21)98789-6755','Rua Maria das Dores, Nº 31','S',987654),('386.603.477-65','Isis Analu da Cruz','+55 (24)97654-2356','Rua Conceição, Nº 76','S',678912),('388.600.617-41','Victor Pedrosa Souza da Silva','+55 (24)9891-1862','Rua Antonela, Nº 26','S',123456),('400.196.787-11','Anderson Noah Pinto','+55 (21)98457-7975','Rua Prata Azul, Nº 249','S',987654),('407.446.127-72','Marli Luna Bernardes','+55 (21)98777-4643','Rua São Felipe, Nº 45','S',321098),('453.953.887-02','Raimunda Nina Yasmin Monteiro','+55 (21)98456-3432','Rua Wellerson Monte, Nº 45','S',987654),('506.560.157-72','Julia Marlene Sandra Barros','+55 (21)97851-1065','Rua Santa Dalila, Nº 87','S',123456),('521.207.677-34','Manuel Cauê Freitas','+55 (21)9566-8776','Rua Amazonas, Nº 34','S',321098),('542.676.137-02','Milena Elaine Alice Mendes','+55 (21)98567-7568','Rua Aninhas, Nº 34','S',678912),('549.010.437-65','Bruno José Viana','+55 (21)95678-2345','Rua Aipi , Nº 86 ','S',678912),('552.548.307-60','Ester Renata Ferreira','+55 (24)95678-6790','Rua Ponte Branca, Nº 123','S',123456),('633.468.257-10','Yuri Caleb da Luz','+55 (21)97676-3455','Rua Comandante , Nº 863','S',678912),('647.411.557-22','Bianca Raquel Alícia Souza','+55 (21)97878-3545','Rua Washington, Nº 456','S',987654),('652.837.017-60','Renata Sara Moura','+55 (21)97654-8756','Rua Quirino, Nº 87 ','S',123456),('654.603.367-40','Luzia Rosângela Brito','+55 (21)98456-5434','Rua Sergipe, Nº 87','S',321098),('654.946.647-40','Sônia Adriana Novaes','+55 (21)98654-1268','Rua Ipiranga, Nº 753','N',123456),('677.796.247-65','Lavínia Alana Manuela Gomes','+55 (21)97564-2435','Rua Airton Mender, Nº 542','S',987654),('691.389.927-01','Antônia Ayla Mirella Pires','+55 (21)97654-4678','Rua Sergio Lopes, Nº 35','S',987654),('726.662.477-08','Raquel Stefany Helena Nogueira','+55 (24)98362-6866','Rua Fá de Além, Nº 645','S',321098),('820.005.107-28','Mirella Emily Teixeira','+55 (21)98291-4323','Rua Dão Casmurro, Nº 345','S',321098),('881.813.487-61','Daniel Samuel Cauê Oliveira','+55 (21)94567-2354','Rua Alecrim, Nº 54','S',321098),('914.024.137-85','Milena Rayssa Galvão','+55 (21)98789-5645','Rua Sitroen , Nº 42','S',987654),('926.086.937-41','Melissa Tereza Viana','+55 (21)99999-9999','Rua Pedrosa , Nº 873 ','S',123456),('929.159.547-04','Hadassa Tatiane Novaes','+55 (21)98555-6756','Rua Esperança , Nº 87 ','S',678912),('954.581.377-60','Jorge Victor Melo','+55 (24)97695-8765','Rua Andorinhas, Nº 765','S',123456);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `cod_curso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `inicio` date DEFAULT NULL,
  PRIMARY KEY (`cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (123456,'Engenharia de Computação','2014-02-05'),(321098,'Matemática','2020-02-03'),(678912,'Turismo','2015-02-10'),(987654,'Física','2008-06-08');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinas` (
  `cod_disc` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `CPF_prof` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`cod_disc`),
  KEY `CPF_prof` (`CPF_prof`),
  CONSTRAINT `disciplinas_ibfk_1` FOREIGN KEY (`CPF_prof`) REFERENCES `professores` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (1055874,'Modelagem de dados','393.904.767-80'),(1167179,'História da Física','840.920.065-19'),(1177179,'Física Moderna','946.153.760-30'),(1284678,'Destinos Turísticos Internacionais','531.246.372-83'),(1495666,'Projeto de interação','297.345.457-36'),(1611863,'Fundamentos de Administração','531.246.372-83'),(1638160,'Equações diferenciais ordinárias I','745.300.527-29'),(2102084,'Sinais e sistemas','627.711.197-30'),(2162478,'Gestão de Negócios Hoteleiros','044.720.670-21'),(2287266,'Cálculo Diferencial e Integral II','565.068.540-14'),(2470042,'Algoritimos e estrutura de dados','393.904.767-80'),(2491978,'Segurança de redes','627.711.197-30'),(2854863,'Administração','081.944.787-07'),(3103795,'Geografia e Cartografia','701.293.929-01'),(3103841,'Fundamentos do Turismo e da Hospitalidade','044.720.670-21'),(3110751,'Cálculo Diferencial e Integral III','565.068.540-14'),(3161015,'Circuitos lineares','051.313.027-65'),(3240296,'Algoritimos e estrutura de dados II','282.612.657-14'),(3321321,'Introdução ao Cálculo','168.658.790-23'),(3455503,'Álgebra linear','745.300.527-29'),(3491669,'Gestão Pública Aplicada ao Turismo','575.322.979-42'),(3493024,'Probabilidade e estatísticas','451.852.817-40'),(3746692,'Servidores de redes','627.711.197-30'),(3750580,'Física Básica Experimental','840.920.065-19'),(3897620,'Cálculo numérico','869.684.177-82'),(3988690,'Sistemas operacionais','785.355.157-63'),(4122681,'Agência de Viagens e Turismo','531.246.372-83'),(4448281,'Didática','604.513.503-24'),(4687979,'Geometria analítica','455.824.527-02'),(4691944,'Humanidades e ciências sociais','000.890.117-16'),(4720150,'Lógica para computação','071.153.147-13'),(4833077,'Cálculo Diferencial e Integral','565.068.540-14'),(4883765,'Pré-cálculo','745.300.527-29'),(4913059,'Inglês Operacional','701.293.929-01'),(4975071,'Magnetismo','598.535.548-95'),(4975081,'Física, Tecnologia e Sociedade','946.153.760-30'),(5150928,'Cálculo a uma variável','730.938.627-28'),(5446395,'termodinâmica','214.370.477-18'),(5465611,'História da Matemática','198.546.185-44'),(5483700,'Redes de computadores I','268.965.947-64'),(5674909,'Álgebra Linear','084.286.895-04'),(5730784,'Cálculo Diferencial e Integral','467.313.766-39'),(5874175,'Programação orientada a objetos','051.313.027-65'),(5990876,'Laboratório de Física Moderna','840.920.065-19'),(5997876,'Mecânica Geral','467.313.766-39'),(6068324,'Química Geral','281.099.317-31'),(6342460,'Física Básica Teórica','598.535.548-95'),(6506709,'Imtrodução à engenharia','051.313.027-65'),(6628174,'Fundamentos da Hotelaria','044.720.670-21'),(6629037,'Álgebra Linear e Vetorial','198.546.185-44'),(6923509,'Cálculo a várias variáveis','730.938.627-28'),(6996131,'Arquitetura, Urbanismo e Turismo','044.720.670-21'),(7144207,'Tópicos especiais em computação móvel','071.153.147-13'),(7149209,'Gestão de Custos','575.322.979-42'),(7161996,'Eletrônica analógica','752.407.267-87'),(7176538,'Linguagens formais e autômatos','889.709.597-69'),(7428885,'Fundamentos de Contabilidade','575.322.979-42'),(7466751,'Legislação Aplicada ao Turismo','575.322.979-42'),(7487597,'Estruturas discretas','889.709.597-69'),(7513384,'Introdução a programação','889.709.597-69'),(7566658,'Software básico','869.684.177-82'),(7708840,'Libras','541.939.467-70'),(7730258,'Fundamentos de Economia','575.322.979-42'),(7829296,'Produção de texto','680.367.667-60'),(7834579,'Gestão de Risco no Turismo','701.293.929-01'),(7865171,'Consultoria em Turismo e Hotelaria','531.246.372-83'),(7993670,'Meios de Hospedagem','044.720.670-21'),(8011759,'Lazer e Entretenimento no Turismo','044.720.670-21'),(8316866,'Introdução a eng. ambiental','281.099.317-31'),(8346239,'Arquiteturas e computadores','785.355.157-63'),(8389645,'Geometria com Construções Geométricas','168.658.790-23'),(8595763,'Análise de algoritmos','785.355.157-63'),(8632621,'Banco de dados','393.904.767-80'),(9033609,'Mecânica clássica','627.711.197-30'),(9058636,'Cálculo','278.645.553-73'),(9122061,'Lógica Matemática','168.658.790-23'),(9263394,'Introdução a ciência da computação','297.345.457-36'),(9269407,'Fundamentos Históricos e Filosóficos da Educação','641.260.579-78'),(9367465,'Engenharia de software','297.345.457-36'),(9418950,'Análise Vetorial em Física','214.370.477-18'),(9467697,'Introdução a economia','451.852.817-40'),(9562154,'Redes de computadores II','541.939.467-70'),(9632042,'Ondulatória e física','627.711.197-30'),(9674399,'Iniciação científica','785.355.157-63'),(9707252,'Estruturas Algébricas','604.513.503-24'),(9804731,'Eletromagnetismo','900.286.377-20'),(9819592,'Psicologia da Educação','641.260.579-78'),(9903935,'Marketing Turístico','575.322.979-42'),(9981911,'Termodinâmica','278.645.553-73'),(9982210,'Ética profissional','596.432.577-70');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `folhapagamentosetores`
--

DROP TABLE IF EXISTS `folhapagamentosetores`;
/*!50001 DROP VIEW IF EXISTS `folhapagamentosetores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `folhapagamentosetores` AS SELECT 
 1 AS `cod_setor`,
 1 AS `somasalario`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `funcionários`
--

DROP TABLE IF EXISTS `funcionários`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionários` (
  `CPF` varchar(14) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereço` varchar(150) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `cod_setor` int NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `cod_setor` (`cod_setor`),
  CONSTRAINT `funcionários_ibfk_1` FOREIGN KEY (`cod_setor`) REFERENCES `setores` (`cod_setor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionários`
--

LOCK TABLES `funcionários` WRITE;
/*!40000 ALTER TABLE `funcionários` DISABLE KEYS */;
INSERT INTO `funcionários` VALUES ('030.807.947-70','Thales Kaique André Costa','Rua Dona Ormelinda, Nº 196',7000.00,7179),('037.796.017-96','Benedito Eduardo Raimundo Santos','Rua Santa Catarina, Nº 54',4000.00,3038),('076.463.657-00','Fernanda Bruna Fabiana Porto','Estrada Flamengo, Nº 88',2000.00,8918),('090.642.207-86','Benício Benjamin Thiago Nogueira','Travessa Professor José Maria Mello, Nº 669',5000.00,7179),('092.429.767-09','Cristiane Jennifer Nair da Costa','Rua Figueiredo, Nº 987',3000.00,5131),('152.171.907-10','Murilo Isaac dos Santos','Rua Venceslau Braz, Nº 998',5000.00,3038),('279.974.617-95','Rafael Rodrigo Sales','Avenida Duque de Caxias, Nº 663',5000.00,8918),('296.527.897-47','Ana Patrícia Corte Real','Rua Visconde de Barbacena, N 232',4000.00,1859),('318.698.787-36','Antônia Louise Bernardes','Rua Ana Beatriz, Nº 977',5000.00,5131),('332.949.647-90','Raimundo Felipe Rodrigo Barbosa','Rua Antonio José Rodrigues, Nº 990',4000.00,1005),('377.291.237-03','Jéssica Aurora Fabiana da Cunha','Rua João Alice, Nº 999',8000.00,7927),('440.343.287-54','Danilo Renan Novaes','Rua Sete, Nº 98',6000.00,3949),('667.237.707-73','Isabela Patrícia Monteiro','Travessa Final, Nº 88',3000.00,3949),('742.527.657-73','Elisa Alana da Luz','Rua Mayer, Nº 98',3000.00,7927),('756.176.367-07','Theo Igor Novaes','Rua Itu Nº 877',5000.00,3949),('779.911.857-10','Allana Cristiane Barros','Rua Sergio Lopes, Nº 52',3000.00,5131),('785.986.767-21','Sarah Milena Dias','Estrada Real, Nº 99',5000.00,7927),('870.708.207-04','Noah Kaique da Luz','Rua Abel, Nº 789',5000.00,7179),('900.218.747-51','Elza Ana Cardoso','Rua Cisneiros, Nº 602',7000.00,1005),('926.328.217-03','Tomás Iago Monteiro','Rua Alenxadre, Nº 13',6000.00,1005),('928.790.547-96','Francisca Luzia Caldeira','Rua Elvina de Chaves, Nº 98',5000.00,1859),('963.162.167-77','Victor André Ribeiro','Rua Vinte e dois, Nº87',7000.00,1859),('972.732.347-29','Lúcia Isis Assis','Rua Aninhas, Nº 23',4000.00,8918),('977.852.287-10','Sueli Melissa Márcia Castro','Rua Antônio Nunnes, Nº 77',5900.00,3038);
/*!40000 ALTER TABLE `funcionários` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `usuário` varchar(20) NOT NULL,
  `senha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`usuário`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('alinesantoss','526lala'),('amandapo','amanda123'),('dudafig','olaola1'),('luisaop','jjj88');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `CPF_aluno` varchar(14) DEFAULT NULL,
  `cod_disc` int DEFAULT NULL,
<<<<<<< HEAD
  `P1` decimal(4,0) DEFAULT NULL,
  `P2` decimal(4,0) DEFAULT NULL,
  `media` decimal(4,0) DEFAULT NULL,
=======
  `P1` decimal(4,2) DEFAULT NULL,
  `P2` decimal(4,2) DEFAULT NULL,
  `media` decimal(4,2) DEFAULT NULL,
>>>>>>> 4f860215176ec60d6c0d5130f32a5d7025fb992d
  `situação` varchar(10) DEFAULT NULL,
  `reprovações` int DEFAULT NULL,
  KEY `CPF_aluno` (`CPF_aluno`),
  KEY `cod_disc` (`cod_disc`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`CPF_aluno`) REFERENCES `alunos` (`CPF`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`cod_disc`) REFERENCES `disciplinas` (`cod_disc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES ('061.118.187-83',3103795,2,5,4,'Reprovado',3),('061.118.187-83',1177179,5,10,8,'Aprovado',0),('061.118.187-83',3750580,4,3,4,'Reprovado',2),('061.118.187-83',4975081,NULL,NULL,NULL,'cursando',0),('061.118.187-83',5990876,7,9,8,'Aprovado',0),('095.840.827-01',6342460,NULL,NULL,NULL,'cursando',0),('095.840.827-01',9418950,9,8,9,'Aprovado',0),('095.840.827-01',9632042,5,3,4,'Reprovado',1),('095.840.827-01',9982210,NULL,NULL,NULL,'cursando',0),('095.840.827-01',5990876,NULL,NULL,NULL,'cursando',0),('095.840.827-01',4975081,5,10,8,'Aprovado',0),('186.457.147-01',1167179,9,8,9,'Aprovado',0),('186.457.147-01',3750580,9,8,9,'Aprovado',0),('186.457.147-01',1177179,NULL,NULL,NULL,'cursando',0),('186.457.147-01',3750580,9,8,9,'Aprovado',0),('235.722.217-49',5990876,7,10,9,'Aprovado',2),('235.722.217-49',6342460,NULL,NULL,NULL,'cursando',0),('235.722.217-49',9418950,NULL,NULL,NULL,'cursando',0),('235.722.217-49',9632042,NULL,NULL,NULL,'cursando',0),('235.722.217-49',9982210,7,7,7,'Aprovado',2),('400.196.787-11',1167179,7,7,7,'Aprovado',0),('453.953.887-02',1177179,NULL,NULL,NULL,'cursando',0),('647.411.557-22',3750580,3,2,3,'Reprovado',1),('677.796.247-65',4975081,5,10,8,'Aprovado',0),('691.389.927-01',6342460,NULL,NULL,NULL,'cursando',0),('914.024.137-85',5990876,8,10,9,'Aprovado',0),('186.457.147-01',1055874,NULL,NULL,NULL,'cursando',0),('167.989.878-95',1055874,8,10,9,'Aprovado',0),('167.989.878-95',1495666,NULL,NULL,NULL,'cursando',0),('167.989.878-95',1638160,8,9,9,'Aprovado',2),('197.786.747-28',1055874,NULL,NULL,NULL,'cursando',0),('197.786.747-28',1495666,NULL,NULL,NULL,'cursando',0),('197.786.747-28',1638160,8,9,9,'Aprovado',0),('197.786.747-28',2470042,NULL,NULL,NULL,'cursando',0),('197.786.747-28',2491978,NULL,NULL,NULL,'cursando',0),('201.141.357-54',1055874,4,3,4,'Reprovado',3),('201.141.357-54',1495666,NULL,NULL,NULL,'cursando',0),('388.600.617-41',1055874,NULL,NULL,NULL,'cursando',0),('388.600.617-41',1495666,9,8,9,'Aprovado',1),('388.600.617-41',1638160,NULL,NULL,NULL,'cursando',0),('388.600.617-41',2470042,NULL,NULL,NULL,'cursando',0),('506.560.157-72',1055874,9,8,9,'Aprovado',0),('506.560.157-72',1495666,NULL,NULL,NULL,'cursando',0),('506.560.157-72',1638160,5,10,8,'Aprovado',1),('552.548.307-60',1055874,NULL,NULL,NULL,'cursando',0),('552.548.307-60',1495666,5,10,8,'Aprovado',0),('652.837.017-60',1055874,NULL,NULL,NULL,'cursando',0),('652.837.017-60',2470042,10,10,10,'Aprovado',0),('652.837.017-60',1638160,7,10,9,'Aprovado',0),('652.837.017-60',2470042,10,10,10,'Aprovado',0),('654.946.647-40',1055874,NULL,NULL,NULL,'cursando',0),('654.946.647-40',1495666,3,4,4,'Reprovado',3),('654.946.647-40',1638160,7,10,9,'Aprovado',0),('926.086.937-41',2470042,7,10,9,'Aprovado',1),('926.086.937-41',1495666,NULL,NULL,NULL,'cursando',0),('954.581.377-60',1495666,NULL,NULL,NULL,'cursando',0);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `matricula_BEFORE_UPDATE` BEFORE UPDATE ON `matricula` FOR EACH ROW begin
set new.media = (new.P1+new.P2)/2;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `matricula_BEFORE_UPDATE_1` BEFORE UPDATE ON `matricula` FOR EACH ROW BEGIN
if (new.media >= 7) then 
set new.situação = 'Aprovado';
elseif new.media < 7 then 
set new.situação = 'Reprovado';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `matricula_BEFORE_UPDATE_2` BEFORE UPDATE ON `matricula` FOR EACH ROW BEGIN
if (new.situação = 'Reprovado') then 
set new.reprovações = new.reprovações + 1; 
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `matricula_BEFORE_UPDATE_3` AFTER UPDATE ON `matricula` FOR EACH ROW BEGIN
update universidade.alunos set Ativo = 'N' where CPF in (select CPF_aluno from matricula where reprovações = 3);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `media`
--

DROP TABLE IF EXISTS `media`;
/*!50001 DROP VIEW IF EXISTS `media`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media` AS SELECT 
 1 AS `numero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mediadisciplinas`
--

DROP TABLE IF EXISTS `mediadisciplinas`;
/*!50001 DROP VIEW IF EXISTS `mediadisciplinas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mediadisciplinas` AS SELECT 
 1 AS `cod_disc`,
 1 AS `media`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mediasalario`
--

DROP TABLE IF EXISTS `mediasalario`;
/*!50001 DROP VIEW IF EXISTS `mediasalario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mediasalario` AS SELECT 
 1 AS `cod_curso`,
 1 AS `mediasalarial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `professorantigo`
--

DROP TABLE IF EXISTS `professorantigo`;
/*!50001 DROP VIEW IF EXISTS `professorantigo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `professorantigo` AS SELECT 
 1 AS `DataInicio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `CPF` varchar(14) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereço` varchar(150) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `Ativo` varchar(1) DEFAULT NULL,
  `cod_curso` int NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `cod_curso` (`cod_curso`),
  CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`cod_curso`) REFERENCES `cursos` (`cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES ('000.890.117-16','Renan Ribeiro','+55 (24)97520-1469','Rua Pedro Bonifácio de Oliveira, nº 445, apt 34','2015-07-24',10000.00,'S',123456),('044.720.670-21','Stefany Melissa Bruna Rezende','+55 (24)98060-4586','Rua Isabel Cardoso Miranda, nº 377','2020-02-20',12000.00,'S',678912),('051.313.027-65','Cláudio Maia','+55 (24)90870-6569','Travessa Jorge Amado, nº 445, apt 34','2015-07-24',10000.00,'S',123456),('071.153.147-13','André Santos','+55 (24)90432-7716','Travessa do Campo, nº34, apt 45','2018-06-14',10000.00,'S',123456),('081.944.787-07','Roberta Dalvo','+55 (24)93306-8225','Rua Antônio Vieira, nº 828','2016-06-24',8000.00,'S',123456),('084.286.895-04','Márcia Vera Maitê Gomes','+55 (24)91958-6251','Rua João Botoso Neto, nº 377','2020-02-20',12000.00,'S',987654),('168.658.790-23','Cecília Helena Beatriz da Rocha','+55 (21)96743-3802','Rua dos Crisântemos','2015-05-09',9000.00,'S',321098),('198.546.185-44','Lorenzo Victor Jesus','+55 (24)97717-7239','Travessa Dois de Julho 58, nº34, apt 45','2018-06-14',10000.00,'S',321098),('214.370.477-18','Wanderson Amaral','+55 (24)94805-1242','Rua Airton Santana, nº34, apt 45','2018-06-14',10000.00,'S',987654),('268.965.947-64','Ana Elisa','+55 (21)94040-9717','Rua Araguaia, nº 481','2017-03-04',12000.00,'S',123456),('278.645.553-73','Benedita Débora Alves','+55 (21)97528-6644','Rua Distrito Industrial dos Imborés, nº 481','2017-03-04',12000.00,'S',987654),('281.099.317-31','Renata Mariano','+55 (24)98060-4586','Rua Isabel Cardoso Miranda, nº 377','2020-02-20',12000.00,'S',123456),('282.612.657-14','Laura Assis','+55 (24)91489-7408','Rua Osvaldo Cruz, nº22, casa 1','2016-06-24',8000.00,'S',123456),('297.345.457-36','Luis Retondaro','+55 (24)95407-8236','Rua Dezesseis, nº 377','2020-02-20',12000.00,'S',123456),('393.904.767-80','Jurair Rosa','+55 (21)99876-5543','Rua Osvaldo Cruz, nº22, casa 1','2015-02-05',10000.00,'S',123456),('451.852.817-40','Guilherme de Oliveira','+55 (21)95133-1315','Travessa Alegria, nº 481','2017-03-04',12000.00,'S',123456),('455.824.527-02','Cristiano Cardoso','+55 (24)96206-8097','Rua Cruzeta, nº34, apt 45','2017-04-24',11000.00,'S',123456),('467.313.766-39','Ana Elza Rocha','+55 (24)96637-3156','Rua S-29, nº 445, apt 34','2015-07-24',10000.00,'S',987654),('531.246.372-83','Elza Clarice Gomes','+55 (24)93779-5164','Avenida Professor Valter Alencar, nº 445, apt 34','2015-07-24',10000.00,'S',678912),('541.939.467-70','Soraia','+55 (24)93779-5164','Avenida Professor Valter Alencar, nº 445, apt 34','2015-07-24',10000.00,'S',123456),('565.068.540-14','Carlos Guilherme Pinto','+55 (24)96402-2706','Rua Osvaldo Cruz, nº22, casa 1','2016-06-24',8000.00,'S',321098),('575.322.979-42','Carolina Elaine Moura','+55 (24)96206-8097','Rua Cruzeta, nº34, apt 45','2017-04-24',11000.00,'S',678912),('596.432.577-70','Carolina','+55 (21)90097-6014','Rua Lions Clube, nº 247','2015-05-09',9000.00,'S',123456),('598.535.548-95','Letícia Gabriela','+55 (24)93731-4271','Rua Jatoba, nº34, apt 45','2017-04-24',11000.00,'S',987654),('604.513.503-24','Benjamin Thiago da Conceição','+55 (24)93162-0473','Rua 13, nº34, apt 45','2017-04-24',11000.00,'S',321098),('627.711.197-30','Felipe Mondaini','+55 (24)97693-8669','Rua Antônio do Nascimento Rodrigues, nº34, apt 45','2017-04-24',11000.00,'S',123456),('641.260.579-78','Julio Edson Mário Silva','+55 (21)94040-9717','Rua Araguaia, nº 481','2017-03-04',12000.00,'S',321098),('680.367.667-60','Fábio Sampaio','+55 (21)90250-8036','Rua Manoel Marques, nº 481','2017-03-04',12000.00,'S',123456),('701.293.929-01','Enrico Thiago André Ramos','+55 (24)94204-8534','Rua Rio Javarí, nº 828','2016-06-24',8000.00,'S',678912),('730.938.627-28','Saraiva Campos','+55 (24)96406-8337','Rua Amaral Peixoto, nº34, apt 45','2017-04-24',11000.00,'S',123456),('745.300.527-29','Carlos Eduardo','+55 (21)90035-5715','Rua Coronel Ismael de Góis Lima nº 247','2015-05-09',9000.00,'S',123456),('752.407.267-87','Diego Haddad','+55 (24)94204-8534','Rua Rio Javarí, nº 828','2016-06-24',8000.00,'S',123456),('785.355.157-63','Luis Tarrataca','+55 (21)96743-3802','Rua dos Crisântemos','2015-05-09',9000.00,'S',123456),('840.920.065-19','Helena Raquel Assis','+55 (24)96404-9845','Rua Eugênio Moreira, nº 828','2016-06-24',8000.00,'S',987654),('869.684.177-82','Pedro Lara','+55 (24)90591-2345','Travessa São Pedro, nº 377','2020-02-20',12000.00,'S',123456),('889.709.597-69','Douglas Cardoso','+55 (24)97693-8669','Rua das Orquídeas, nº 828','2016-06-24',8000.00,'S',123456),('900.286.377-20','Luis Colatto','+55 (24)93162-0473','Avenida Doutor Reinaldo Amarante, nº34, apt 45','2017-04-24',11000.00,'S',123456),('946.153.760-30','Rafael Bruno Ferreira','+55 (21)98843-3237','Avenida Coronel Teixeira, nº 247','2015-05-09',9000.00,'S',987654);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `professoresedisciplinas`
--

DROP TABLE IF EXISTS `professoresedisciplinas`;
/*!50001 DROP VIEW IF EXISTS `professoresedisciplinas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `professoresedisciplinas` AS SELECT 
 1 AS `cod_disc`,
 1 AS `disciplina`,
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quantidade`
--

DROP TABLE IF EXISTS `quantidade`;
/*!50001 DROP VIEW IF EXISTS `quantidade`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quantidade` AS SELECT 
 1 AS `cod_disc`,
 1 AS `valor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quantidadeprofessores`
--

DROP TABLE IF EXISTS `quantidadeprofessores`;
/*!50001 DROP VIEW IF EXISTS `quantidadeprofessores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quantidadeprofessores` AS SELECT 
 1 AS `cod_curso`,
 1 AS `quantidade`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `setores`
--

DROP TABLE IF EXISTS `setores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setores` (
  `cod_setor` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_setor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setores`
--

LOCK TABLES `setores` WRITE;
/*!40000 ALTER TABLE `setores` DISABLE KEYS */;
INSERT INTO `setores` VALUES (1005,'Direçao'),(1859,'Limpeza'),(3038,'Alimentação'),(3949,'Biblioteca'),(5131,'Recursos Humanos'),(7179,'Segurança'),(7927,'Secretária'),(8918,'Assistência Estudantil');
/*!40000 ALTER TABLE `setores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'universidade'
--

--
-- Dumping routines for database 'universidade'
--

--
-- Final view structure for view `folhapagamentosetores`
--

/*!50001 DROP VIEW IF EXISTS `folhapagamentosetores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `folhapagamentosetores` AS select `funcionários`.`cod_setor` AS `cod_setor`,sum(`funcionários`.`salario`) AS `somasalario` from `funcionários` group by `funcionários`.`cod_setor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media`
--

/*!50001 DROP VIEW IF EXISTS `media`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media` AS select avg(`quantidade`.`valor`) AS `numero` from `quantidade` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mediadisciplinas`
--

/*!50001 DROP VIEW IF EXISTS `mediadisciplinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mediadisciplinas` AS select `matricula`.`cod_disc` AS `cod_disc`,avg(`matricula`.`media`) AS `media` from `matricula` group by `matricula`.`cod_disc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mediasalario`
--

/*!50001 DROP VIEW IF EXISTS `mediasalario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mediasalario` AS select `professores`.`cod_curso` AS `cod_curso`,round(avg(`professores`.`salario`),2) AS `mediasalarial` from `professores` group by `professores`.`cod_curso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `professorantigo`
--

/*!50001 DROP VIEW IF EXISTS `professorantigo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `professorantigo` AS select min(`professores`.`inicio`) AS `DataInicio` from `professores` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `professoresedisciplinas`
--

/*!50001 DROP VIEW IF EXISTS `professoresedisciplinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `professoresedisciplinas` AS select `disciplinas`.`cod_disc` AS `cod_disc`,`disciplinas`.`nome` AS `disciplina`,`professores`.`nome` AS `nome` from (`disciplinas` join `professores` on((`disciplinas`.`CPF_prof` = `professores`.`CPF`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quantidade`
--

/*!50001 DROP VIEW IF EXISTS `quantidade`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quantidade` AS select `matricula`.`cod_disc` AS `cod_disc`,count(`matricula`.`CPF_aluno`) AS `valor` from `matricula` group by `matricula`.`cod_disc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quantidadeprofessores`
--

/*!50001 DROP VIEW IF EXISTS `quantidadeprofessores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quantidadeprofessores` AS select `professores`.`cod_curso` AS `cod_curso`,count(`professores`.`nome`) AS `quantidade` from `professores` where (`professores`.`Ativo` like 'S') group by `professores`.`cod_curso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2021-11-01 11:01:47
=======
-- Dump completed on 2021-11-01  0:54:42
>>>>>>> 4f860215176ec60d6c0d5130f32a5d7025fb992d
