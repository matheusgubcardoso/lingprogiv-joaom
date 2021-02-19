/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `areaestcursos`;
CREATE TABLE IF NOT EXISTS `areaestcursos` (
  `cpareaestudocurso` int(5) NOT NULL,
  `cecurso` int(5) NOT NULL,
  `ceareaestudo` int(3) NOT NULL,
  `dtcadareaestudocurso` date NOT NULL,
  PRIMARY KEY (`cpareaestudocurso`),
  KEY `icursos` (`cecurso`) USING BTREE,
  KEY `iareaestudos` (`ceareaestudo`) USING BTREE,
  CONSTRAINT `areaestudocursosce1` FOREIGN KEY (`ceareaestudo`) REFERENCES `areaestudos` (`cpareaestudo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `areaestudocursosce2` FOREIGN KEY (`cecurso`) REFERENCES `cursos` (`cpcurso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das áreas de estudos de cursos oferecidos em uma escola.';

/*!40000 ALTER TABLE `areaestcursos` DISABLE KEYS */;
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(1, 1, 1, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(2, 1, 3, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(3, 2, 1, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(4, 2, 2, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(5, 2, 3, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(6, 6, 1, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(7, 6, 2, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(8, 6, 6, '2015-04-22');
INSERT INTO `areaestcursos` (`cpareaestudocurso`, `cecurso`, `ceareaestudo`, `dtcadareaestudocurso`) VALUES
	(9, 6, 6, '2018-12-03');
/*!40000 ALTER TABLE `areaestcursos` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestdisciplinas`;
CREATE TABLE IF NOT EXISTS `areaestdisciplinas` (
  `cpareaestudodisciplina` int(4) NOT NULL,
  `cedisciplina` int(4) NOT NULL,
  `ceareaestudo` int(3) NOT NULL,
  `dtcadareaestudodisc` date NOT NULL,
  PRIMARY KEY (`cpareaestudodisciplina`),
  KEY `idisciplinas` (`cedisciplina`) USING BTREE,
  KEY `iareaestudos` (`ceareaestudo`) USING BTREE,
  CONSTRAINT `areaestudodisciplinasce1` FOREIGN KEY (`ceareaestudo`) REFERENCES `areaestudos` (`cpareaestudo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `areaestudodisciplinasce2` FOREIGN KEY (`cedisciplina`) REFERENCES `disciplinas` (`cpdisciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das áreas de estudos de disciplinas.';

/*!40000 ALTER TABLE `areaestdisciplinas` DISABLE KEYS */;
INSERT INTO `areaestdisciplinas` (`cpareaestudodisciplina`, `cedisciplina`, `ceareaestudo`, `dtcadareaestudodisc`) VALUES
	(1, 1, 1, '2015-04-22');
INSERT INTO `areaestdisciplinas` (`cpareaestudodisciplina`, `cedisciplina`, `ceareaestudo`, `dtcadareaestudodisc`) VALUES
	(2, 2, 5, '2015-04-22');
INSERT INTO `areaestdisciplinas` (`cpareaestudodisciplina`, `cedisciplina`, `ceareaestudo`, `dtcadareaestudodisc`) VALUES
	(3, 3, 1, '2018-12-14');
/*!40000 ALTER TABLE `areaestdisciplinas` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestlivros`;
CREATE TABLE IF NOT EXISTS `areaestlivros` (
  `cpareaestudolivro` int(6) NOT NULL,
  `celivro` int(9) NOT NULL,
  `ceareaestudo` int(3) NOT NULL,
  `nugrauinfluencia` int(3) NOT NULL,
  `dtcadareaestudolivro` date NOT NULL,
  PRIMARY KEY (`cpareaestudolivro`),
  KEY `iareaestudos` (`ceareaestudo`) USING BTREE,
  KEY `ilivros` (`celivro`) USING BTREE,
  CONSTRAINT `areaestudolivrosce1` FOREIGN KEY (`ceareaestudo`) REFERENCES `areaestudos` (`cpareaestudo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `areaestudolivrosce2` FOREIGN KEY (`celivro`) REFERENCES `livros` (`cplivro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das áreas de estudos de livros.';

/*!40000 ALTER TABLE `areaestlivros` DISABLE KEYS */;
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(1, 5, 5, 1, '2017-10-20');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(2, 8, 2, 5, '2017-10-20');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(3, 1, 6, 5, '2018-12-03');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(4, 2, 5, 4, '2020-07-02');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(6, 6, 5, 2, '2020-07-02');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(7, 6, 4, 5, '2020-07-02');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(8, 9, 1, 2, '2020-07-02');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(9, 12, 2, 3, '2020-07-08');
INSERT INTO `areaestlivros` (`cpareaestudolivro`, `celivro`, `ceareaestudo`, `nugrauinfluencia`, `dtcadareaestudolivro`) VALUES
	(10, 3, 6, 5, '2020-07-04');
/*!40000 ALTER TABLE `areaestlivros` ENABLE KEYS */;

DROP TABLE IF EXISTS `areaestudos`;
CREATE TABLE IF NOT EXISTS `areaestudos` (
  `cpareaestudo` int(3) NOT NULL,
  `txnomearea` varchar(250) COLLATE utf8_bin NOT NULL,
  `txdescricaoarea` text COLLATE utf8_bin NOT NULL,
  `dtcadareaestudo` date NOT NULL,
  PRIMARY KEY (`cpareaestudo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das áreas de estudos de interesse nas disciplinas de uma escola.';

/*!40000 ALTER TABLE `areaestudos` DISABLE KEYS */;
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(1, 'Exatas - Física', 'Todo os cursos de Física ou Correlatos', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(2, 'Exatas - Química', 'Todos os cursos relacionados com Química (orgânica e inorgânica)', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(3, 'Exatas - Matemática', 'Todos os cursos de Matemática (Pura e Aplicada)', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(4, 'Humanas - Sociais', 'Engloba cursos de Hist', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(5, 'Humanas - Letras', 'Engloba os cursos de tratam os relacionamentos humanos', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(6, 'Biomédicas - Medicinas', 'Todos os cursos de Medicina do Ser Humano', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(7, 'Biomédicas - Biologias', 'Todos os cursos de micro vida próxima aos seres humanos (Agronomia)', '2015-04-19');
INSERT INTO `areaestudos` (`cpareaestudo`, `txnomearea`, `txdescricaoarea`, `dtcadareaestudo`) VALUES
	(8, 'Biomédicas - Ecologias', 'Todos os cursos de Relacionamentos com a Terra (Oceanografia, Veterinária, etc)', '2015-04-19');
/*!40000 ALTER TABLE `areaestudos` ENABLE KEYS */;

DROP TABLE IF EXISTS `atribuicoes`;
CREATE TABLE IF NOT EXISTS `atribuicoes` (
  `cpatribuicao` int(5) NOT NULL,
  `ceprofessor` int(3) NOT NULL,
  `cedisciplina` int(4) NOT NULL,
  `qthorasatribuidas` int(5) NOT NULL,
  `dtatribuicao` date NOT NULL,
  `dtcadatribuicao` date NOT NULL,
  PRIMARY KEY (`cpatribuicao`),
  KEY `iprofessores` (`ceprofessor`) USING BTREE,
  KEY `idisciplinas` (`cedisciplina`) USING BTREE,
  CONSTRAINT `atribuicoesce1` FOREIGN KEY (`cedisciplina`) REFERENCES `disciplinas` (`cpdisciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `atribuicoesce2` FOREIGN KEY (`ceprofessor`) REFERENCES `professores` (`cpprofessor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das disciplinas atribuídas aos professores de uma escola.';

/*!40000 ALTER TABLE `atribuicoes` DISABLE KEYS */;
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(1, 1, 1, 180, '2010-01-15', '2017-10-20');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(2, 6, 2, 180, '2010-01-15', '2018-12-13');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(3, 12, 2, 120, '2018-12-13', '2018-12-13');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(5, 12, 3, 120, '2018-12-13', '2018-12-13');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(6, 6, 3, 120, '2018-12-03', '2018-12-13');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(7, 6, 1, 120, '2018-12-03', '2018-12-13');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(8, 6, 2, 100, '2018-12-04', '2018-12-13');
INSERT INTO `atribuicoes` (`cpatribuicao`, `ceprofessor`, `cedisciplina`, `qthorasatribuidas`, `dtatribuicao`, `dtcadatribuicao`) VALUES
	(9, 6, 2, 100, '2018-12-05', '2018-12-13');
/*!40000 ALTER TABLE `atribuicoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `autores`;
CREATE TABLE IF NOT EXISTS `autores` (
  `cpautor` int(6) NOT NULL,
  `txnomeautor` char(90) COLLATE utf8_bin NOT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(35) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(40) COLLATE utf8_bin NOT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin NOT NULL,
  `dtcadautor` date NOT NULL,
  PRIMARY KEY (`cpautor`) USING BTREE,
  KEY `icelogradouro` (`celogradouro`) USING BTREE,
  CONSTRAINT `autoresce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos autores.';

/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(2, 'Arthur Conan Doyle', 13, '1451', 'Centro', '4155421', '14545154125', '2020-06-08');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(3, 'Carlos Drumond de Andrade', 3, '867', 'Vila California', '14512451', '14967867567', '2010-10-10');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(4, 'Edgard Allan Paul', 4, '3435', 'Jardim Matilde', '04512475', '11981075672', '2015-04-21');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(5, 'Gracialiano Ramos', 13, '23434', 'Bela Vista', '42145121', '2323', '2020-06-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(6, 'Ignácio de Loyola Brandão', 1, '345 - Ap. 48', 'Sta Cruz', '04512451', '1184512753', '2015-04-21');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(8, 'Clarice Lispector', 15, '233', 'Luz', '11232323', '11343423456', '2020-06-09');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(9, 'Mario de Andrade', 11, '3456', 'Lapa', '56345634', '43456546435', '2020-06-04');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(10, 'Monteiro Lobato', 8, '3456', 'Vila California', '56345634', '43456546435', '2020-06-04');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(11, 'Jorge Amado', 12, '234', 'Jardim de Alah', '42145121', '31974847584', '2020-06-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(12, 'José de Alencar', 22, '234', 'Bela Vista', '42145121', '11974587458', '2020-06-05');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(13, 'Cecília Meireles', 5, '234', 'Sumaré', '42145121', '11854574542', '2020-06-05');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(14, 'Érico Veríssimo', 4, '23454', 'Centro - Diadema', '42145121', '42152152142', '2020-06-05');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(15, 'Manuel Bandeira', 4, '23454', 'Centro - Diadema', '42145121', '42152152142', '2020-06-05');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(16, 'Raquel de Queiroz', 23, '23454', 'Jardins', '11451425', '11452415242', '2020-06-05');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(17, 'João Cabral de Melo Neto', 3, '23454', 'Santa Cecílica', '11451425', '11452415242', '2020-06-05');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(18, 'Oswald de Andrade', 16, '23454', 'São Vicente', '11451425', '11452415242', '2020-05-31');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(19, 'Mario Quintana', 15, '23454', 'São Vicente', '11451425', '11452415242', '2020-05-31');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(20, 'Guimarães Rosa', 22, '23454', 'São Vicente', '11451425', '11452415242', '2020-05-31');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(21, 'Lima Barreto', 26, '23454', 'Guararema', '11451425', '11452415242', '2020-04-27');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(22, 'Ferreira Gullar', 8, '23454', 'Vila clementino', '11451425', '11452415242', '2020-03-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(23, 'Luisa Geisler', 7, '23454', 'Higienópolis', '11451425', '11452415242', '2020-03-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(24, 'Daniel Galera', 13, '23454', 'Higienópolis', '11451425', '11452415242', '2020-03-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(25, 'Raphael Montes', 13, '23454', 'Higienópolis', '11451425', '11452415242', '2020-03-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(26, 'Veronica Stigger', 11, '23454', 'Centro', '11451425', '11452415242', '2020-03-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(28, 'Oswald de Andrade', 17, '324', 'Centro', '11451425', '11748574784', '2020-07-01');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(29, 'Guimarães Rosa', 13, '123', 'Centro', '1123123', '1147488545', '2020-04-07');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(30, 'Oswald de Andrade', 1, '234', 'V. Matilde', '14414211', '11457454', '2020-07-01');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(31, 'John Ronald Reuel Tolkien', 1, '123', 'V. Matilde', '11145151', '114545454', '2020-07-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(32, 'Euclides da Cunha', 20, '123', 'Centro', '11145151', '114545454', '2020-07-02');
INSERT INTO `autores` (`cpautor`, `txnomeautor`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `dtcadautor`) VALUES
	(33, 'Eduardo Mello', 20, '745697', 'Vila Clementino', '1145124', '1174857485', '2020-07-02');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;

DROP TABLE IF EXISTS `autorias`;
CREATE TABLE IF NOT EXISTS `autorias` (
  `cpautoria` int(9) NOT NULL,
  `celivro` int(9) NOT NULL,
  `ceautor` int(6) NOT NULL,
  `dtcadastro` date NOT NULL,
  PRIMARY KEY (`cpautoria`),
  KEY `ilivros` (`celivro`) USING BTREE,
  KEY `iautores` (`ceautor`) USING BTREE,
  CONSTRAINT `autoriasce1` FOREIGN KEY (`ceautor`) REFERENCES `autores` (`cpautor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `autoriasce2` FOREIGN KEY (`celivro`) REFERENCES `livros` (`cplivro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das autorias de livros (livros e seus autores).';

/*!40000 ALTER TABLE `autorias` DISABLE KEYS */;
INSERT INTO `autorias` (`cpautoria`, `celivro`, `ceautor`, `dtcadastro`) VALUES
	(3, 2, 3, '2015-04-21');
INSERT INTO `autorias` (`cpautoria`, `celivro`, `ceautor`, `dtcadastro`) VALUES
	(4, 3, 4, '2015-04-21');
INSERT INTO `autorias` (`cpautoria`, `celivro`, `ceautor`, `dtcadastro`) VALUES
	(6, 4, 6, '2015-04-21');
INSERT INTO `autorias` (`cpautoria`, `celivro`, `ceautor`, `dtcadastro`) VALUES
	(7, 5, 3, '2015-04-21');
INSERT INTO `autorias` (`cpautoria`, `celivro`, `ceautor`, `dtcadastro`) VALUES
	(8, 5, 4, '2015-04-21');
INSERT INTO `autorias` (`cpautoria`, `celivro`, `ceautor`, `dtcadastro`) VALUES
	(11, 6, 6, '2018-12-03');
/*!40000 ALTER TABLE `autorias` ENABLE KEYS */;

DROP TABLE IF EXISTS `bibliografias`;
CREATE TABLE IF NOT EXISTS `bibliografias` (
  `cpbibliografia` int(6) NOT NULL,
  `cedisciplina` int(4) NOT NULL,
  `celivro` int(9) NOT NULL,
  `aotipo` char(1) COLLATE utf8_bin NOT NULL,
  `dtadocaodolivro` date NOT NULL,
  `dtcadbibliografia` date NOT NULL,
  PRIMARY KEY (`cpbibliografia`),
  KEY `idisciplinas` (`cedisciplina`) USING BTREE,
  KEY `ilivros` (`celivro`) USING BTREE,
  CONSTRAINT `bibliografiasce1` FOREIGN KEY (`cedisciplina`) REFERENCES `disciplinas` (`cpdisciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bibliografiasce2` FOREIGN KEY (`celivro`) REFERENCES `livros` (`cplivro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das bibliografias das disciplinas dos cursos de uma escola.';

/*!40000 ALTER TABLE `bibliografias` DISABLE KEYS */;
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(1, 1, 1, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(2, 2, 1, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(3, 3, 1, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(4, 1, 6, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(5, 2, 6, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(6, 3, 6, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(7, 1, 2, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(8, 2, 2, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(9, 3, 2, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(10, 1, 3, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(11, 2, 3, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(12, 3, 3, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(13, 1, 4, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(14, 2, 4, 'C', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(15, 3, 4, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(16, 1, 5, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(17, 2, 5, 'B', '2017-10-22', '2017-10-22');
INSERT INTO `bibliografias` (`cpbibliografia`, `cedisciplina`, `celivro`, `aotipo`, `dtadocaodolivro`, `dtcadbibliografia`) VALUES
	(18, 3, 5, 'C', '2017-10-22', '2017-10-22');
/*!40000 ALTER TABLE `bibliografias` ENABLE KEYS */;

DROP TABLE IF EXISTS `cargos`;
CREATE TABLE IF NOT EXISTS `cargos` (
  `cpcargo` smallint(5) unsigned NOT NULL COMMENT 'CP da Tabela',
  `txnomecargo` varchar(60) COLLATE utf8_bin NOT NULL COMMENT 'Nome completo do cargo sem abreviações',
  `dtcadcargo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`cpcargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos cargos ocupados por funcionários.';

/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(1, 'Presidente', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(2, 'Diretor', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(3, 'Gerente', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(4, 'Chefe de equipe', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(5, 'Analista de sistema senior', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(6, 'Analista de sistema pleno', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(7, 'Analista de Sistema Junior (ASJ)', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(8, 'Programador senior', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(9, 'Programador pleno', '2018-02-01');
INSERT INTO `cargos` (`cpcargo`, `txnomecargo`, `dtcadcargo`) VALUES
	(10, 'Programador trainee', '2018-02-01');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE IF NOT EXISTS `cidades` (
  `cpcidade` smallint(5) unsigned NOT NULL,
  `txnome` varchar(250) COLLATE utf8_bin NOT NULL,
  `cesiglaestado` char(2) COLLATE utf8_bin DEFAULT NULL,
  `txformaacesso` text COLLATE utf8_bin NOT NULL,
  `qtpopulacao` float NOT NULL,
  `dtfundacao` date DEFAULT NULL,
  `qtarea` float(6,0) NOT NULL,
  `dtcadastro` date NOT NULL,
  PRIMARY KEY (`cpcidade`) USING BTREE,
  KEY `cidadesce1` (`cesiglaestado`),
  CONSTRAINT `cidadesce1` FOREIGN KEY (`cesiglaestado`) REFERENCES `estadosdauniao` (`cpestadouniao`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Cidades de estados da união.';

/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` (`cpcidade`, `txnome`, `cesiglaestado`, `txformaacesso`, `qtpopulacao`, `dtfundacao`, `qtarea`, `dtcadastro`) VALUES
	(1, 'São Paulo', 'SP', 'Rodovias: Castelo Branco, Anhanguera, Anchieta, Raposo Tavares, R', 15000000, '0000-00-00', 450000, '2014-10-10');
INSERT INTO `cidades` (`cpcidade`, `txnome`, `cesiglaestado`, `txformaacesso`, `qtpopulacao`, `dtfundacao`, `qtarea`, `dtcadastro`) VALUES
	(2, 'Osasco', 'SP', 'Rodovias: Castelo Branco, Anhanguera, Anchieta, Raposo Tavares, R', 2000000, '0000-00-00', 100000, '2014-10-10');
INSERT INTO `cidades` (`cpcidade`, `txnome`, `cesiglaestado`, `txformaacesso`, `qtpopulacao`, `dtfundacao`, `qtarea`, `dtcadastro`) VALUES
	(3, 'Barueri', NULL, 'Rodovia Raposo Tavares, Trem urbano da CBTU, Rodovia Castelo Branco', 850000, '0000-00-00', 250, '2015-04-19');
INSERT INTO `cidades` (`cpcidade`, `txnome`, `cesiglaestado`, `txformaacesso`, `qtpopulacao`, `dtfundacao`, `qtarea`, `dtcadastro`) VALUES
	(4, 'Carapicuíba', NULL, 'Rodovia Raposo Tavares, Trem urbano da CBTU, Rodovia Castelo Branco', 950000, '0000-00-00', 450, '2015-04-19');
INSERT INTO `cidades` (`cpcidade`, `txnome`, `cesiglaestado`, `txformaacesso`, `qtpopulacao`, `dtfundacao`, `qtarea`, `dtcadastro`) VALUES
	(5, 'Guarulhos', 'SP', 'Rodovia Dutra, rodovia Regis Bitencourt, Trem urbano da CBTU', 950000, '0000-00-00', 450, '2015-04-19');
INSERT INTO `cidades` (`cpcidade`, `txnome`, `cesiglaestado`, `txformaacesso`, `qtpopulacao`, `dtfundacao`, `qtarea`, `dtcadastro`) VALUES
	(6, 'Mogi das Cruzes', NULL, 'Rodovia Airton Senna, Rodovia dos Trabalhadores, trem urbano CBTU.', 950000, '0000-00-00', 650, '2015-04-19');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `cpcliente` int(6) NOT NULL,
  `txnomecliente` varchar(250) COLLATE utf8_bin NOT NULL,
  `txrazaosocial` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `aoativo` char(1) COLLATE utf8_bin DEFAULT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `nutelefone` char(11) COLLATE utf8_bin DEFAULT NULL,
  `txnomecontato` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL,
  `vllimitecompra` double(15,2) NOT NULL,
  `dtcadcliente` date NOT NULL,
  PRIMARY KEY (`cpcliente`),
  KEY `icelogradouro` (`celogradouro`) USING BTREE,
  CONSTRAINT `clientesce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Clientes.';

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(2, 'nome', NULL, 'A', 7, 'conj 34', '1334343555', 'jose', '14521452', 15000.00, '2018-02-25');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(5, 'Marmitex bom de prato', 'Restaurante Bom de Prato e serviço de Marmitex S/C Ltda.', 'A', 8, ' 150', NULL, NULL, '', 1000.00, '2011-10-24');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(10, 'Tratoria do Sargento', 'Ristoranti Il Tratoria do Sargento', 'A', 9, ' 985', NULL, NULL, '', 25000.00, '2007-02-02');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(15, 'Restaurante Bom Vivan', 'Restaurante "O Bom Vivan" S/C Ltda.', 'A', 10, ' 567', NULL, NULL, '12345678', 5000.00, '2009-12-10');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(20, 'Tratoria do Sargento', 'Restaurante da Tratoria do Sargento S/C Ltda.', 'A', 11, ' 1254', NULL, NULL, '', 12000.00, '2011-06-01');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(25, 'Tratoria do Pirata', 'Ristoranti tre fratelli S.A.', 'A', 12, ' 1492', NULL, NULL, '12345678', 30000.00, '2007-01-20');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(30, 'Mc Donalds', 'Rest Com S/A ', 'A', 13, ' 6500', NULL, NULL, '', 100000.00, '2008-01-20');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(35, 'La Traviatta Ripante', 'Rest Com S/A ', 'A', 14, ' 125 - 15And Ap 156', NULL, NULL, '', 100000.00, '2008-01-20');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(40, 'Bistro Ratatui', 'sdf sdgf', 'A', 15, ' 1245', NULL, NULL, '', 3456.00, '2011-10-22');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(45, 'AgoraSim', 'Fabrica de Roupas Infanto-Juvenis AgoraSim S/C Ltda.', 'A', 16, '452', NULL, NULL, '1421541', 1000.00, '2014-04-12');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(50, 'Trocando em miúdos', 'Teste S/C Ltda.', 'A', 17, '335', '', 'Temistocles', '1452412', 15000.00, '2015-05-22');
INSERT INTO `clientes` (`cpcliente`, `txnomecliente`, `txrazaosocial`, `aoativo`, `celogradouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `nucep`, `vllimitecompra`, `dtcadcliente`) VALUES
	(55, 'um teste de inclusão de registros', 'Teste S/C Ltda.', 'A', 18, '335', NULL, NULL, '1452412', 15000.00, '2015-05-22');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas` (
  `cpconsulta` int(6) NOT NULL,
  `cemedico` int(6) NOT NULL,
  `dthoraconsulta` datetime NOT NULL,
  `cefuncionario` int(6) DEFAULT NULL,
  `dthorarealizada` datetime NOT NULL,
  `ceplanodesaude` int(4) DEFAULT NULL,
  `aosituacaoconsulta` char(1) COLLATE utf8_bin NOT NULL,
  `dtcadconsulta` date NOT NULL,
  PRIMARY KEY (`cpconsulta`),
  KEY `imedicos` (`cemedico`) USING BTREE,
  KEY `ifuncionarios` (`cefuncionario`) USING BTREE,
  KEY `iplanosdesaude` (`ceplanodesaude`),
  CONSTRAINT `consultasce1` FOREIGN KEY (`cemedico`) REFERENCES `medicos` (`cpmedico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `consultasce2` FOREIGN KEY (`ceplanodesaude`) REFERENCES `planosdesaude` (`cpplanodesaude`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `consultasce3` FOREIGN KEY (`cefuncionario`) REFERENCES `funcionarios` (`cpfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Consultas Médicas disponibilizadas para os funcionários.';

/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(1, 1, '2017-05-22 07:00:00', 150, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(2, 1, '2017-05-22 07:20:00', 200, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(3, 1, '2017-05-22 07:40:00', 510, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(4, 1, '2017-05-22 08:00:00', 10, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(5, 1, '2017-05-22 08:20:00', 330, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(6, 1, '2017-05-22 08:40:00', 390, '0000-00-00 00:00:00', NULL, '', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(7, 1, '2017-05-22 09:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(8, 1, '2017-05-22 09:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(9, 1, '2017-05-22 09:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(10, 1, '2017-05-22 10:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(11, 1, '2017-05-22 10:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(12, 1, '2017-05-22 10:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(13, 1, '2017-05-22 12:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(14, 1, '2017-05-22 12:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(15, 1, '2017-05-22 12:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(16, 1, '2017-05-22 13:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(17, 1, '2017-05-22 13:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(18, 1, '2017-05-22 13:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(19, 2, '2017-05-22 07:00:00', 280, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(20, 2, '2017-05-22 07:20:00', 460, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(21, 2, '2017-05-22 08:40:00', 230, '0000-00-00 00:00:00', NULL, '', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(22, 2, '2017-05-22 08:00:00', 230, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(23, 2, '2017-05-22 08:20:00', 340, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(24, 2, '2017-05-22 08:40:00', 410, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(25, 2, '2017-05-22 09:00:00', 290, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(26, 2, '2017-05-22 09:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(27, 2, '2017-05-22 09:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(28, 2, '2017-05-22 10:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(29, 2, '2017-05-22 10:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(30, 2, '2017-05-22 10:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(31, 2, '2017-05-22 12:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(32, 2, '2017-05-22 12:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(33, 2, '2017-05-22 12:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(34, 2, '2017-05-22 13:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(35, 2, '2017-05-22 13:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(36, 2, '2017-05-22 13:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(37, 3, '2017-05-22 07:00:00', 320, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(38, 3, '2017-05-22 07:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(40, 3, '2017-05-22 08:00:00', 450, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(41, 3, '2017-05-22 08:20:00', 40, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(42, 3, '2017-05-22 08:40:00', 470, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(43, 3, '2017-05-22 09:00:00', 180, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(44, 3, '2017-05-22 09:20:00', 20, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(45, 3, '2017-05-22 09:40:00', 300, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(46, 3, '2017-05-22 10:00:00', 380, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(47, 3, '2017-05-22 10:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(48, 3, '2017-05-22 10:40:00', 30, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(49, 3, '2017-05-22 12:00:00', 360, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(50, 3, '2017-05-22 12:20:00', 270, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(51, 3, '2017-05-22 12:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(52, 3, '2017-05-22 13:00:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(53, 3, '2017-05-22 13:20:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(54, 3, '2017-05-22 13:40:00', NULL, '0000-00-00 00:00:00', NULL, 'A', '2017-04-22');
INSERT INTO `consultas` (`cpconsulta`, `cemedico`, `dthoraconsulta`, `cefuncionario`, `dthorarealizada`, `ceplanodesaude`, `aosituacaoconsulta`, `dtcadconsulta`) VALUES
	(55, 9, '2018-12-17 14:00:00', 330, '0000-00-00 00:00:00', 1, 'A', '2018-12-04');
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;

DROP TABLE IF EXISTS `cores`;
CREATE TABLE IF NOT EXISTS `cores` (
  `cpcor` int(10) NOT NULL,
  `txnomecor` varchar(200) COLLATE utf8_bin NOT NULL,
  `nupantone` int(10) NOT NULL,
  `dtcadcor` date NOT NULL,
  PRIMARY KEY (`cpcor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das cores.';

/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` (`cpcor`, `txnomecor`, `nupantone`, `dtcadcor`) VALUES
	(1, 'Branco', 1, '2017-10-21');
INSERT INTO `cores` (`cpcor`, `txnomecor`, `nupantone`, `dtcadcor`) VALUES
	(2, 'Preto', 2, '2017-10-21');
INSERT INTO `cores` (`cpcor`, `txnomecor`, `nupantone`, `dtcadcor`) VALUES
	(3, 'Cinza Prata', 234, '2017-10-21');
INSERT INTO `cores` (`cpcor`, `txnomecor`, `nupantone`, `dtcadcor`) VALUES
	(4, 'Cinza Chumbo', 200, '2017-10-21');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `cpcurso` int(5) NOT NULL,
  `txnomecurso` varchar(200) COLLATE utf8_bin NOT NULL,
  `ceescola` int(3) DEFAULT NULL,
  `qtcargahoraria` int(3) NOT NULL,
  `dtcadcurso` date NOT NULL,
  PRIMARY KEY (`cpcurso`) USING BTREE,
  KEY `iescolas` (`ceescola`) USING BTREE,
  CONSTRAINT `cursosce1` FOREIGN KEY (`ceescola`) REFERENCES `escolas` (`cpescola`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos cursos de uma escola.';

/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(1, 'Arquitetura', 1, 123, '2014-05-15');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(2, 'Engenharia Civil', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(3, 'Engenharia Mecânica', 2, 240, '2014-05-15');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(4, 'Engenharia Naval', 1, 123, '2014-05-15');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(5, 'Engenharia de Minas', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(6, 'Engenharia Elétrica', 2, 240, '2014-05-15');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(7, 'História', 1, 123, '2014-05-15');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(8, 'Geografia', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(9, 'Letras', 2, 240, '2014-05-15');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(10, 'Filosofia', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(11, 'Sociologia', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(12, 'Física', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(13, 'Biologia', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(14, 'Filosofia', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(15, 'Administração de Empresas', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(16, 'Economia', 2, 180, '2014-01-10');
INSERT INTO `cursos` (`cpcurso`, `txnomecurso`, `ceescola`, `qtcargahoraria`, `dtcadcurso`) VALUES
	(17, 'Comunicação e Artes', 2, 180, '2014-01-10');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `cpdisciplina` int(4) NOT NULL,
  `txnome` varchar(250) COLLATE utf8_bin NOT NULL,
  `cecurso` int(5) NOT NULL,
  `txementa` varchar(250) COLLATE utf8_bin NOT NULL,
  `qthoras` int(4) NOT NULL,
  `dtcaddisciplina` date NOT NULL,
  PRIMARY KEY (`cpdisciplina`) USING BTREE,
  KEY `icursos` (`cecurso`) USING BTREE,
  CONSTRAINT `disciplinasce1` FOREIGN KEY (`cecurso`) REFERENCES `cursos` (`cpcurso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Disciplinas dos cursos.';

/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` (`cpdisciplina`, `txnome`, `cecurso`, `txementa`, `qthoras`, `dtcaddisciplina`) VALUES
	(1, 'Estudo das Cores', 1, 'Análise da formação do conceito de cor. Fatores importantes da cor na indústria.', 400, '2010-10-10');
INSERT INTO `disciplinas` (`cpdisciplina`, `txnome`, `cecurso`, `txementa`, `qthoras`, `dtcaddisciplina`) VALUES
	(2, 'Fotografia', 1, 'O surgimento e desenvolvimento da indústria da fotografia. Característica dos equipamentos, a evolução dos dispositivos desde o modo mecânico até o modo digital.', 200, '2010-10-10');
INSERT INTO `disciplinas` (`cpdisciplina`, `txnome`, `cecurso`, `txementa`, `qthoras`, `dtcaddisciplina`) VALUES
	(3, 'Antropologia das Culturas ocidentais', 1, 'Como o desenvolvimento social se deu de modo diferenciado nas culturas ocidental e oriental e como a geografia pode ter influenciado nesta evolução.', 120, '2010-10-10');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;

DROP TABLE IF EXISTS `editoras`;
CREATE TABLE IF NOT EXISTS `editoras` (
  `cpeditora` int(5) NOT NULL,
  `txnomeeditora` char(70) COLLATE utf8_bin NOT NULL,
  `txrazaosocial` varchar(250) COLLATE utf8_bin NOT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(40) COLLATE utf8_bin NOT NULL,
  `nucep` char(8) COLLATE utf8_bin DEFAULT NULL,
  `nutelefone` char(11) COLLATE utf8_bin DEFAULT NULL,
  `txnomecontato` varchar(50) COLLATE utf8_bin NOT NULL,
  `dtcadeditora` date NOT NULL,
  PRIMARY KEY (`cpeditora`) USING BTREE,
  KEY `icelogradouro` (`celogradouro`) USING BTREE,
  CONSTRAINT `editorasce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Editoras de Livros.';

/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` (`cpeditora`, `txnomeeditora`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadeditora`) VALUES
	(1, 'Editora Renascer', 'Editora Renascer S/C Ltda.', 7, '355', 'Vila Madalena', '12457896', '1174584521', 'Ana', '2015-10-20');
INSERT INTO `editoras` (`cpeditora`, `txnomeeditora`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadeditora`) VALUES
	(2, 'Editora Abril', 'Editora Paulista Abril S/C Ltda.', 8, '450 - 4ºAndar', 'Barra Funda', '12457234', '1433265241', 'Juliana', '2015-10-20');
INSERT INTO `editoras` (`cpeditora`, `txnomeeditora`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadeditora`) VALUES
	(3, 'Editora Nobel', 'Editora Nobel S.A.', 4, '234', 'Barra Funda', '01245124', '1145244526', 'Flávio', '2015-10-20');
INSERT INTO `editoras` (`cpeditora`, `txnomeeditora`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadeditora`) VALUES
	(4, 'Editora Paulinas', 'Editora Paulista Abril S/C Ltda.', 3, '23 - Cj10', 'Barra Funda', '74512451', '14985632415', 'José', '2015-10-20');
INSERT INTO `editoras` (`cpeditora`, `txnomeeditora`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadeditora`) VALUES
	(5, 'Editora Erica', 'Editora Paulista Abril S/C Ltda.', 4, '250 - bloco3', 'Barra Funda', '41526385', '11981024152', 'Adailton', '2015-10-20');
INSERT INTO `editoras` (`cpeditora`, `txnomeeditora`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadeditora`) VALUES
	(6, 'Elseviewer', 'Editora Elseviewer S', 9, '45654', 'Vila da Monções', '11452178', '1174589632', 'teófilo', '2018-12-12');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;

DROP TABLE IF EXISTS `escolas`;
CREATE TABLE IF NOT EXISTS `escolas` (
  `cpescola` int(3) NOT NULL,
  `txnomeescola` varchar(200) COLLATE utf8_bin NOT NULL,
  `celogadouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin NOT NULL,
  `txnomecontato` varchar(50) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(200) COLLATE utf8_bin NOT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `dtcadescola` date NOT NULL,
  PRIMARY KEY (`cpescola`) USING BTREE,
  KEY `icelogradouro` (`celogadouro`) USING BTREE,
  CONSTRAINT `escolasce1` FOREIGN KEY (`celogadouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Escolas onde acontecem os cursos.';

/*!40000 ALTER TABLE `escolas` DISABLE KEYS */;
INSERT INTO `escolas` (`cpescola`, `txnomeescola`, `celogadouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `txbairro`, `nucep`, `dtcadescola`) VALUES
	(1, 'Universidade de São Paulo', 19, '400', '', '', 'Cidade Universitária', '02342312', '2014-10-10');
INSERT INTO `escolas` (`cpescola`, `txnomeescola`, `celogadouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `txbairro`, `nucep`, `dtcadescola`) VALUES
	(2, 'Universidade Júlio De Mesquita Filho', 20, '70 - 3ºAndar conjuntos 30 à 35', '1175488569', 'Sergio', 'Centro - Sé', '04511415', '2014-10-10');
INSERT INTO `escolas` (`cpescola`, `txnomeescola`, `celogadouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `txbairro`, `nucep`, `dtcadescola`) VALUES
	(3, 'Fatec São Paulo - CPS', 9, '1452', '1145214523', 'Marilia', 'Bom Retiro', '01145277', '2018-12-12');
INSERT INTO `escolas` (`cpescola`, `txnomeescola`, `celogadouro`, `txcomplemento`, `nutelefone`, `txnomecontato`, `txbairro`, `nucep`, `dtcadescola`) VALUES
	(5, 'Fatec Ourinhos - CPS', 22, '1452', '1145214523', 'Marilia', 'Bom Retiro', '01145277', '2018-12-12');
/*!40000 ALTER TABLE `escolas` ENABLE KEYS */;

DROP TABLE IF EXISTS `especmedicas`;
CREATE TABLE IF NOT EXISTS `especmedicas` (
  `cpespecialidade` int(4) NOT NULL,
  `txnomeespecialidade` varchar(200) COLLATE utf8_bin NOT NULL,
  `dtcadespecmedica` date NOT NULL,
  PRIMARY KEY (`cpespecialidade`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Especialidades Médicas';

/*!40000 ALTER TABLE `especmedicas` DISABLE KEYS */;
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(1, 'Clinica geral', '2014-10-10');
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(2, 'Pediatria', '2014-10-10');
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(3, 'Obstetrícia', '2014-10-10');
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(4, 'Urologia', '2014-10-10');
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(5, 'Oncologia', '0000-00-00');
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(6, 'Geriatria', '0000-00-00');
INSERT INTO `especmedicas` (`cpespecialidade`, `txnomeespecialidade`, `dtcadespecmedica`) VALUES
	(7, 'Endocrinologia', '0000-00-00');
/*!40000 ALTER TABLE `especmedicas` ENABLE KEYS */;

DROP TABLE IF EXISTS `estadosdauniao`;
CREATE TABLE IF NOT EXISTS `estadosdauniao` (
  `cpestadouniao` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'cp da Tabela. É a sigla do Estado da União Federativa.',
  `txnome` varchar(250) NOT NULL COMMENT 'Nome usual completo (sem abreviações)',
  `txcapital` varchar(250) DEFAULT NULL COMMENT 'Nome da Capital do Estado',
  `qtareatotal` decimal(15,2) DEFAULT NULL COMMENT 'Área do estado em Km2 com duas casas decimais de precisão',
  `qtpopulacao` decimal(16,0) DEFAULT NULL COMMENT 'Quantidade de pessoas moradoras do estado da união.',
  `dtcadestadouniao` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`cpestadouniao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos estados da união Federativa do Brasil';

/*!40000 ALTER TABLE `estadosdauniao` DISABLE KEYS */;
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('AC', 'Acre', 'Rio Branco', 164123.04, 829619, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('AL', 'Alagoas', 'Maceió', 27778.50, 3375823, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('AM', 'Amazonas', 'Manaus', 1559159.15, 4063614, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('AP', 'Amapá', 'Macapá', 142828.52, 797722, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('BA', 'Bahia', 'Salvador', 564733.18, 15344447, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('CE', 'Ceará', 'Fortaleza', 148920.47, 9020460, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('DF', 'Distrito Federal', 'Brasília', 5779.10, 3039444, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('ES', 'Espírito Santo', 'Vitória', 46095.58, 4016356, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('GO', 'Goiás', 'Goiânia', 340111.78, 6778772, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('MA', 'Maranhão', 'São Luís', 331937.45, 7000229, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('MG', 'Minas Gerais', 'Belo Horizonte', 586522.12, 21119536, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('MS', 'Mato Grosso do Sul', 'Campo Grande', 357145.53, 2713147, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('MT', 'Mato Grosso', 'Cuiabá', 903366.19, 3344544, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('PA', 'Pará', 'Belém', 1247954.67, 8366628, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('PB', 'Paraíba', 'João Pessoa', 56585.00, 4025558, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('PE', 'Pernambuco', 'Recife', 98311.62, 9473266, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('PI', 'Piauí', 'Teresina', 251577.74, 3219257, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('PR', 'Paraná', 'Curitiba', 199307.92, 11320892, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('RJ', 'Rio de Janeiro', 'Rio de Janeiro', 43780.17, 16718956, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('RN', 'Rio Grande do Norte', 'Natal', 52811.05, 3507003, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('RO', 'Rondônia', 'Porto Velho', 237590.55, 1805788, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('RR', 'Roraima', 'Boa Vista', 224300.51, 522636, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('RS', 'Rio Grande do Sul', 'Porto Alegre', 281730.22, 11322895, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('SC', 'Santa Catarina', 'Florianópolis', 95736.16, 7001161, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('SE', 'Sergipe', 'Aracaju', 21915.12, 2288116, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('SP', 'São Paulo', 'São Paulo', 248222.36, 45094866, '2018-02-01');
INSERT INTO `estadosdauniao` (`cpestadouniao`, `txnome`, `txcapital`, `qtareatotal`, `qtpopulacao`, `dtcadestadouniao`) VALUES
	('TO', 'Tocantins', 'Palmas', 277720.52, 1550194, '2018-02-01');
/*!40000 ALTER TABLE `estadosdauniao` ENABLE KEYS */;

DROP TABLE IF EXISTS `fabricantes`;
CREATE TABLE IF NOT EXISTS `fabricantes` (
  `cpfabricante` int(3) NOT NULL,
  `txnome` varchar(250) COLLATE utf8_bin NOT NULL,
  `txrazaosocial` varchar(250) COLLATE utf8_bin NOT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(200) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin NOT NULL,
  `txnomecontato` varchar(50) COLLATE utf8_bin NOT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `dtcadfabricante` date NOT NULL,
  PRIMARY KEY (`cpfabricante`) USING BTREE,
  KEY `icelogradouro` (`celogradouro`) USING BTREE,
  CONSTRAINT `fabricantesce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Fabricantes de veículos.';

/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(1, 'FAME', 'Fábrica Americana de Materiais Elétricos S.A. ', 21, '345', 'Bresser', '', '', '04521524', '2010-10-01');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(2, 'Lorenzetti', 'Fabrica de Chuveiros Lorenzetti S/C Ltda.', 22, '235', 'Centro', '', '', '14514251', '2010-10-10');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(3, 'Bosch & Blaupunkt', 'Manufatura de Equipamentos Eletronicos S/C Ltda.', 23, '23235', 'Santo Amaro', '', '', '14514251', '2010-10-10');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(4, 'Forim', 'Fabrica de Batentes e Fechaduras Forim S/C Ltda.', 24, '235', 'Jardim São Luis', '', '', '14514251', '2010-10-10');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(5, 'Autolins', 'Fabrica de tapetes automotivos S/C Ltda.', 25, '235', 'Distrito Industrial II', '1441524152', '14754859685', '14514251', '2010-10-10');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(6, 'Volkswagen', 'Volkswagen do Brasil S.A.', 26, 'Km45', 'Distrito Industrial 3', '', '', '46512452', '2015-04-21');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(7, 'CAIO Induscar', 'Companhia Americana Industrial de Ônibus', 21, '435', 'Bresser', '11454251', 'Waldemir', '14515421', '2018-12-12');
INSERT INTO `fabricantes` (`cpfabricante`, `txnome`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadfabricante`) VALUES
	(8, 'wilson', 'asdASD', 6, '23454', 'Higienópolis', '11984514250', '12341234', '42145121', '2020-06-30');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;

DROP TABLE IF EXISTS `feitospor`;
CREATE TABLE IF NOT EXISTS `feitospor` (
  `cpfeitospor` smallint(5) unsigned NOT NULL COMMENT 'cp da tabela',
  `ceoficina` smallint(5) unsigned NOT NULL COMMENT 'ce indicando a oficina que executa serviços de manutenção.',
  `ceservico` smallint(5) unsigned DEFAULT NULL COMMENT 'ce indicando o serviço que é feito pelas oficinas.',
  `txdescricaocomplementar` varchar(250) DEFAULT NULL COMMENT 'Descrição complementar do serviço prestado no veículo pela oficina (se preciso).',
  `dtcadfeitospor` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`cpfeitospor`),
  KEY `iceoficina` (`ceoficina`),
  KEY `iceservico` (`ceservico`),
  CONSTRAINT `oficinafeitospor` FOREIGN KEY (`ceoficina`) REFERENCES `oficinas` (`cpoficina`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `servicofeitospor` FOREIGN KEY (`ceservico`) REFERENCES `servicos` (`cpservico`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro de serviços prestados pela oficinas nos ve';

/*!40000 ALTER TABLE `feitospor` DISABLE KEYS */;
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(1, 10, 1, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(2, 10, 2, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(3, 10, 3, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(4, 10, 4, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(5, 25, 1, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(6, 25, 2, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(7, 25, 3, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(8, 25, 4, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(9, 20, 1, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(10, 20, 2, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(11, 20, 3, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(12, 20, 4, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(13, 5, 1, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(14, 5, 2, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(15, 5, 3, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(16, 5, 4, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(17, 15, 1, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(18, 15, 2, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(19, 15, 3, 'Serviço completo', '2018-10-01');
INSERT INTO `feitospor` (`cpfeitospor`, `ceoficina`, `ceservico`, `txdescricaocomplementar`, `dtcadfeitospor`) VALUES
	(20, 15, 4, 'Serviço completo', '2018-10-01');
/*!40000 ALTER TABLE `feitospor` ENABLE KEYS */;

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `cpfuncionario` int(6) NOT NULL,
  `txnomefunc` varchar(12) COLLATE utf8_bin NOT NULL,
  `txsobrenomefunc` varchar(15) COLLATE utf8_bin NOT NULL,
  `cecargo` smallint(5) unsigned DEFAULT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin NOT NULL,
  `dtcontratacao` date NOT NULL,
  `nuramal` char(4) COLLATE utf8_bin NOT NULL,
  `aosexo` char(1) COLLATE utf8_bin NOT NULL,
  `dtnascimento` date NOT NULL,
  `txresenha` text COLLATE utf8_bin NOT NULL,
  `vlsalario` decimal(9,2) NOT NULL,
  `vlbonus` decimal(9,2) NOT NULL,
  `vlcomissao` decimal(9,2) NOT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `dtcadfuncionario` date NOT NULL,
  PRIMARY KEY (`cpfuncionario`) USING BTREE,
  KEY `icargos` (`cecargo`),
  KEY `ilogradouros` (`celogradouro`) USING BTREE,
  CONSTRAINT `funcionariosce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `funcionariosce2` FOREIGN KEY (`cecargo`) REFERENCES `cargos` (`cpcargo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos funcionários.';

/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(10, 'CHRISTINE I', 'HAAS', 10, 1, '4512', '1174858654', '1995-01-01', '452', 'M', '1963-08-24', ' ', 152750.00, 1000.00, 4220.00, '', '2018-12-12');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(20, 'MICHAEL L', 'THOMPSON', 10, 2, '', '', '2003-10-10', '', 'M', '1978-02-02', ' ', 94250.00, 800.00, 3300.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(30, 'SALLY A', 'KWAN', 2, 1, '', '', '2005-04-05', '', 'F', '1971-05-11', ' ', 98250.00, 800.00, 3060.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(40, 'MAUDE F', 'SETRIGHT', 5, 2, '', '', '1994-09-12', '', 'F', '1961-04-21', ' ', 35900.00, 300.00, 1272.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(50, 'JOHN B', 'GEYER', 5, 3, '', '', '1979-08-17', '', 'M', '1955-09-15', ' ', 80175.00, 800.00, 3214.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(60, 'IRVING F', 'STERN', 4, 4, '', '', '2003-09-14', '', 'M', '1975-07-07', ' ', 72250.00, 500.00, 2580.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(70, 'EVA D', 'PULASKI', 4, 11, '', '', '2005-09-30', '', 'F', '2003-05-26', ' ', 96170.00, 700.00, 2893.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(80, 'RAMLAL V', 'MEHTA', 3, 6, '', '', '1995-07-07', '', 'M', '1962-08-11', ' ', 39950.00, 400.00, 1596.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(90, 'EILEEN W', 'HENDERSON', 3, 7, '', '', '2000-08-15', '', 'F', '1971-05-15', ' ', 89750.00, 600.00, 2380.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(100, 'THEODORE Q', 'SPENSER', 1, 6, '', '', '2000-06-19', '', 'M', '1980-12-18', ' ', 86150.00, 500.00, 2092.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(110, 'VINCENZO G', 'LUCCHESSI', 1, 8, '', '', '1988-05-16', '', 'M', '1959-11-05', ' ', 66500.00, 900.00, 3720.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(120, 'SEAN ', 'O CONNELL', 7, 9, '', '', '1993-12-05', '', 'M', '1972-10-18', ' ', 49250.00, 600.00, 2340.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(130, 'DELORES M', 'QUINTANA', 7, 10, '', '', '2001-07-28', '', 'F', '1955-09-15', ' ', 73800.00, 500.00, 1904.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(150, 'BRUCE W', 'ADAMSON', 3, 11, '', '', '2002-02-12', '', 'M', '1977-05-17', 'NULL', 55280.00, 500.00, 2022.00, '12312312', '2010-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(160, 'ELIZABETH R', 'PIANKA', 4, 11, '', '', '2006-10-11', '', 'F', '1980-04-12', ' ', 62250.00, 400.00, 1780.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(170, 'MASATOSHI J', 'YOSHIMURA', 2, 12, '', '', '1999-09-15', '', 'M', '1981-01-05', ' ', 44680.00, 500.00, 1974.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(180, 'MARILYN S', 'SCOUTTEN', 3, 15, '', '', '2003-07-07', '', 'F', '1979-02-21', ' ', 51340.00, 500.00, 1707.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(190, 'JAMES H', 'WALKER', 3, 14, '', '', '2004-07-26', '', 'M', '1982-06-25', ' ', 50450.00, 400.00, 1636.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(200, 'DAVid ', 'BROWN', 3, 15, '', '', '2002-03-03', '', 'M', '1971-05-29', ' ', 57740.00, 600.00, 2217.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(210, 'WILLIAM T', 'JONES', 1, 10, '', '', '1998-04-11', '', 'M', '2003-02-23', ' ', 68270.00, 400.00, 1462.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(220, 'JENNIFER K', 'LUTZ', 9, 1, '', '', '1998-08-29', '', 'F', '1978-03-19', ' ', 49840.00, 600.00, 2387.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(230, 'JAMES J', 'JEFFERSON', 8, 2, '', '', '1996-11-21', '', 'M', '1980-05-30', ' ', 42180.00, 400.00, 1774.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(240, 'SALVATORE M', 'MARINO', 9, 2, '', '', '2004-12-05', '', 'M', '2002-03-31', ' ', 48760.00, 600.00, 2301.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(250, 'DANIEL S', 'SMITH', 9, 4, '', '', '1999-10-30', '', 'M', '1969-11-12', ' ', 49180.00, 400.00, 1534.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(260, 'SYBIL P', 'JOHNSON', 8, 14, '', '', '2005-09-11', '', 'F', '1976-10-05', ' ', 47250.00, 300.00, 1380.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(270, 'MARIA L', 'PEREZ', 8, 17, '', '', '2006-09-30', '', 'F', '2003-05-26', ' ', 37380.00, 500.00, 2190.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(280, 'ETHEL R', 'SCHNEidER', 8, 18, '', '', '1997-03-24', '', 'F', '0000-00-00', 'Um teste de troca', 36250.00, 500.00, 2100.00, '12345678', '2010-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(290, 'JOHN R', 'PARKER', 3, 19, '', '', '2006-05-30', '', 'M', '1985-07-09', ' ', 35340.00, 300.00, 1227.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(300, 'PHILIP X', 'SMITH', 5, 12, '', '', '2002-06-19', '', 'M', '1976-10-27', ' ', 37750.00, 400.00, 1420.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(310, 'WING ', 'LEE', 5, 20, '', '', '2006-02-23', '', 'M', '1971-07-18', ' ', 45370.00, 500.00, 2030.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(320, 'JASON R', 'GOUNOT', 5, 21, '', '', '1977-05-05', '', 'M', '1956-05-17', ' ', 43840.00, 500.00, 1907.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(330, 'DIAN J', 'HEMMINGER', 3, 21, '', '', '1995-01-01', '', 'F', '1973-08-14', ' ', 46500.00, 1000.00, 4220.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(340, 'GREG ', 'ORLANDO', 3, 22, '', '', '2002-05-05', '', 'M', '1972-10-18', ' ', 39250.00, 600.00, 2340.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(350, 'KIM N', 'NATZ', 3, 21, '', '', '2006-12-15', '', 'F', '1976-01-19', ' ', 68420.00, 600.00, 2274.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(360, 'KIYOSHI ', 'YAMAMOTO', 3, 20, '', '', '2005-09-15', '', 'M', '1981-01-05', ' ', 64680.00, 500.00, 1974.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(370, 'REBA K', 'JOHN', 3, 21, '', '', '2005-08-29', '', 'F', '1978-03-19', ' ', 69840.00, 600.00, 2387.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(380, 'ROBERT M', 'MONTEVERDE', 5, 14, '', '', '2004-12-05', '', 'M', '1984-03-31', ' ', 37760.00, 600.00, 2301.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(390, 'EILEEN R', 'SCHWARTZ', 5, 19, '', '', '1997-03-24', '', 'F', '1966-03-28', ' ', 46250.00, 500.00, 2100.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(400, 'MICHELLE F', 'SPRINGER', 5, 1, '', '', '1994-09-12', '', 'F', '1961-04-21', ' ', 35900.00, 300.00, 1272.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(410, 'HELENA ', 'WONG', 5, 14, '', '', '2006-02-23', '', 'F', '1971-07-18', ' ', 35370.00, 500.00, 2030.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(420, 'ROY R', 'ALONZO', 2, 21, '', '', '1997-07-05', '', 'M', '1956-05-17', ' ', 31840.00, 500.00, 1907.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(430, 'JOSE A', 'BUENO', 4, 23, '', '', '0000-00-00', '', 'M', '0000-00-00', ' ', 1250.00, 100.00, 500.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(440, 'Teste D', 'Silva', 4, 26, '', '', '2010-05-10', '', 'M', '1985-10-20', ' ', 1600.00, 200.00, 200.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(450, 'Louis W', 'Armstrong', 4, 25, '', '', '2002-10-20', '', 'M', '1958-05-15', 'Músico', 2500.00, 500.00, 400.00, '1452151', '2002-10-20');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(460, 'Ella W', 'Fritzgerald', 4, 24, '', '', '2002-10-20', '', 'F', '1958-05-14', 'Cantora', 2500.00, 500.00, 400.00, '14511254', '2002-10-05');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(470, 'Leonidas S', 'Spartacus', 4, 9, '', '', '1901-10-10', '', 'M', '1960-05-05', 'Forte pacas', 12000.00, 1000.00, 500.00, '0451245', '1902-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(480, 'Jennifer A', 'Soulthernman', 4, 8, '', '', '2010-10-10', '', 'F', '1970-02-05', 'teasdas', 12000.00, 2600.00, 1500.00, '12452121', '2010-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(490, 'Robert D', 'Dourvall', 4, 7, '', '', '2010-10-10', '', 'M', '1970-02-05', 'teasdas', 12000.00, 2600.00, 1500.00, '12452121', '2010-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(500, 'Louise A', 'Huang', 5, 6, '', '', '2010-10-10', '', 'F', '1970-02-05', 'teasdas', 12000.00, 2600.00, 1500.00, '12452121', '2010-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(510, 'Chritopher B', 'Hemingway', 7, 8, '', '', '2010-10-10', '', 'M', '1970-02-05', 'teasdas', 12000.00, 2600.00, 1500.00, '12452121', '2010-10-10');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(520, 'Demistocles ', 'Santoristeles', 4, 8, '', '', '0000-00-00', '', '', '0000-00-00', '', 0.00, 0.00, 0.00, '', '0000-00-00');
INSERT INTO `funcionarios` (`cpfuncionario`, `txnomefunc`, `txsobrenomefunc`, `cecargo`, `celogradouro`, `txcomplemento`, `nutelefone`, `dtcontratacao`, `nuramal`, `aosexo`, `dtnascimento`, `txresenha`, `vlsalario`, `vlbonus`, `vlcomissao`, `nucep`, `dtcadfuncionario`) VALUES
	(521, 'Fulano e bel', 'da silva', 4, 13, '4521', '11123123123', '1992-02-24', '', 'M', '1970-11-18', 'trabalhador com bom relacionamento com todos os colegas.', 14000.00, 3500.00, 1500.00, '11415521', '2018-12-05');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;

DROP TABLE IF EXISTS `funcionariosplanos`;
CREATE TABLE IF NOT EXISTS `funcionariosplanos` (
  `cpfuncionarioplano` int(6) NOT NULL,
  `cefuncionario` int(6) NOT NULL,
  `ceplanodesaude` int(4) NOT NULL,
  `dtvinculacao` date NOT NULL,
  `dtdesligamento` date NOT NULL,
  `dtcadfuncplano` date DEFAULT NULL,
  PRIMARY KEY (`cpfuncionarioplano`),
  KEY `ifuncionarios` (`cefuncionario`) USING BTREE,
  KEY `iplanosdesaude` (`ceplanodesaude`) USING BTREE,
  CONSTRAINT `funcionariosplanosce1` FOREIGN KEY (`cefuncionario`) REFERENCES `funcionarios` (`cpfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcionariosplanosce2` FOREIGN KEY (`ceplanodesaude`) REFERENCES `planosdesaude` (`cpplanodesaude`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das ligações entre funcionários e planos de saúde.';

/*!40000 ALTER TABLE `funcionariosplanos` DISABLE KEYS */;
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(1, 10, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(2, 10, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(3, 20, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(4, 20, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(5, 30, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(6, 30, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(7, 40, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(8, 40, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(9, 50, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(10, 50, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(11, 60, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(12, 60, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(13, 70, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(14, 70, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(15, 80, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(16, 80, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(17, 90, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(18, 90, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(19, 100, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(20, 100, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(21, 110, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(22, 110, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(23, 120, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(24, 120, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(25, 130, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(26, 130, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(27, 150, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(28, 150, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(29, 160, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(30, 160, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(31, 170, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(32, 170, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(33, 180, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(34, 180, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(35, 190, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(36, 190, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(37, 200, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(38, 200, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(39, 210, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(40, 210, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(41, 220, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(42, 220, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(43, 230, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(44, 230, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(45, 240, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(46, 240, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(47, 250, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(48, 250, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(49, 260, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(50, 260, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(51, 270, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(52, 270, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(53, 280, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(54, 280, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(55, 290, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(56, 290, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(57, 300, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(58, 300, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(59, 310, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(60, 310, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(61, 320, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(62, 320, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(63, 330, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(64, 330, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(65, 340, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(66, 340, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(67, 350, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(68, 350, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(69, 360, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(70, 360, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(71, 370, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(72, 370, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(73, 380, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(74, 380, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(75, 390, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(76, 390, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(77, 400, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(78, 400, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(79, 410, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(80, 410, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(81, 420, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(82, 420, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(83, 430, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(84, 430, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(85, 440, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(86, 440, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(87, 450, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(88, 450, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(89, 460, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(90, 460, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(91, 470, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(92, 470, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(93, 480, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(94, 480, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(95, 490, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(96, 490, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(97, 500, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(98, 500, 2, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(99, 510, 1, '2016-04-22', '2017-04-22', '2017-10-22');
INSERT INTO `funcionariosplanos` (`cpfuncionarioplano`, `cefuncionario`, `ceplanodesaude`, `dtvinculacao`, `dtdesligamento`, `dtcadfuncplano`) VALUES
	(100, 510, 2, '2016-04-22', '2017-04-22', '2017-10-22');
/*!40000 ALTER TABLE `funcionariosplanos` ENABLE KEYS */;

DROP TABLE IF EXISTS `habilitacoes`;
CREATE TABLE IF NOT EXISTS `habilitacoes` (
  `cphabilitacao` int(5) NOT NULL,
  `cecurso` int(5) NOT NULL,
  `ceprofessor` int(3) NOT NULL,
  `dthabilitacao` date NOT NULL,
  `dtcadhabilitacao` date NOT NULL,
  PRIMARY KEY (`cphabilitacao`),
  KEY `icursos` (`cecurso`) USING BTREE,
  KEY `iprofessores` (`ceprofessor`) USING BTREE,
  CONSTRAINT `habilitacoesce1` FOREIGN KEY (`cecurso`) REFERENCES `cursos` (`cpcurso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `habilitacoesce2` FOREIGN KEY (`ceprofessor`) REFERENCES `professores` (`cpprofessor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das habilitações dos professores em dar aulas em cursos.';

/*!40000 ALTER TABLE `habilitacoes` DISABLE KEYS */;
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(1, 1, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(2, 1, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(3, 1, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(4, 1, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(5, 1, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(6, 2, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(7, 2, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(8, 2, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(9, 2, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(10, 2, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(11, 3, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(12, 3, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(13, 3, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(14, 3, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(15, 3, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(16, 4, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(17, 4, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(18, 4, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(19, 4, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(20, 4, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(21, 5, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(22, 5, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(23, 5, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(24, 5, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(25, 5, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(26, 6, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(27, 6, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(28, 6, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(29, 6, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(30, 6, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(31, 7, 1, '2009-11-10', '2009-12-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(32, 7, 2, '2010-01-10', '2010-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(33, 7, 3, '1999-08-10', '1999-09-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(34, 7, 4, '2000-11-06', '2000-12-06');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(35, 7, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(36, 6, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(37, 6, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(38, 6, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(39, 6, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(40, 6, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(41, 6, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(42, 6, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(43, 6, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(44, 6, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(45, 6, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(46, 7, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(47, 7, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(48, 7, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(49, 7, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(50, 7, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(51, 7, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(52, 7, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(53, 7, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(54, 7, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(55, 7, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(56, 8, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(57, 8, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(58, 8, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(59, 8, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(60, 8, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(61, 8, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(62, 8, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(63, 8, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(64, 8, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(65, 8, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(66, 9, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(67, 9, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(68, 9, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(69, 9, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(70, 9, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(71, 9, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(72, 9, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(73, 9, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(74, 9, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(75, 9, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(76, 10, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(77, 10, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(78, 10, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(79, 10, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(80, 10, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(81, 10, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(82, 10, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(83, 10, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(84, 10, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(85, 10, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(86, 11, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(87, 11, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(88, 11, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(89, 11, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(90, 11, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(91, 11, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(92, 11, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(93, 11, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(94, 11, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(95, 11, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(96, 12, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(97, 12, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(98, 12, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(99, 12, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(100, 12, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(101, 12, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(102, 12, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(103, 12, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(104, 12, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(105, 12, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(106, 13, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(107, 13, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(108, 13, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(109, 13, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(110, 13, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(111, 13, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(112, 13, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(113, 13, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(114, 13, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(115, 13, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(116, 14, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(117, 14, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(118, 14, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(119, 14, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(120, 14, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(121, 14, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(122, 14, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(123, 14, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(124, 14, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(125, 14, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(126, 15, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(127, 15, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(128, 15, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(129, 15, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(130, 15, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(131, 15, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(132, 15, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(133, 15, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(134, 15, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(135, 15, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(136, 16, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(137, 16, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(138, 16, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(139, 16, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(140, 16, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(141, 16, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(142, 16, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(143, 16, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(144, 16, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(145, 16, 14, '2000-01-10', '2000-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(146, 17, 5, '2001-05-10', '2001-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(147, 17, 6, '2010-05-26', '2010-06-25');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(148, 17, 7, '1991-06-10', '1991-07-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(149, 17, 8, '2006-05-10', '2006-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(150, 17, 9, '2000-05-10', '2000-06-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(151, 17, 10, '1998-12-10', '1999-01-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(152, 17, 11, '1996-01-10', '1996-02-09');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(153, 17, 12, '2004-09-10', '2004-10-10');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(154, 17, 13, '1996-02-10', '1996-03-11');
INSERT INTO `habilitacoes` (`cphabilitacao`, `cecurso`, `ceprofessor`, `dthabilitacao`, `dtcadhabilitacao`) VALUES
	(155, 17, 14, '2000-01-10', '2000-02-09');
/*!40000 ALTER TABLE `habilitacoes` ENABLE KEYS */;

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `cplivro` int(9) NOT NULL,
  `txtituloacervo` varchar(90) COLLATE utf8_bin NOT NULL,
  `ceeditora` int(5) DEFAULT NULL,
  `dtpublicacao` date NOT NULL,
  `nuanopublicacao` year(4) NOT NULL,
  `qtexemplaresacervo` int(3) NOT NULL,
  `qtexemplaresconsulta` int(2) NOT NULL,
  `dtcadlivro` date NOT NULL,
  PRIMARY KEY (`cplivro`),
  KEY `ieditoras` (`ceeditora`),
  CONSTRAINT `livrosce1` FOREIGN KEY (`ceeditora`) REFERENCES `editoras` (`cpeditora`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Livros';

/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(1, 'O Morro dos Ventos Uivantes', 1, '1880-05-10', '1910', 40, 10, '2010-10-10');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(2, 'O Senhor dos Aneis', NULL, '1880-05-10', '1973', 40, 10, '2010-10-10');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(3, 'Guerra e Paz', 2, '1880-05-10', '1920', 40, 10, '2010-10-10');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(4, 'A Insustentável Leveza do Ser', NULL, '1880-05-10', '1980', 40, 10, '2010-10-10');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(5, 'O Bater de Suas Asas', 2, '1880-05-10', '2010', 40, 10, '2010-10-10');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(6, 'O Hobbit', 1, '1880-05-10', '1982', 40, 10, '2010-10-10');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(7, 'As estrelas contam histórias', 2, '2018-10-01', '2018', 80, 20, '2018-10-01');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(8, 'Os Três', 4, '2018-10-01', '2018', 40, 10, '2018-10-01');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(9, 'Os quatros contos do mundo', 2, '2018-10-01', '2018', 80, 20, '2018-10-01');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(10, 'O último Anjo', NULL, '2018-10-01', '2018', 20, 5, '2018-10-01');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(11, 'Desenvolvimento de Quimica', 1, '2018-10-30', '2018', 60, 10, '2018-10-30');
INSERT INTO `livros` (`cplivro`, `txtituloacervo`, `ceeditora`, `dtpublicacao`, `nuanopublicacao`, `qtexemplaresacervo`, `qtexemplaresconsulta`, `dtcadlivro`) VALUES
	(12, 'A Arte da Escrita de Fórmulas', 4, '2018-10-30', '2018', 120, 10, '2018-10-30');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;

DROP TABLE IF EXISTS `logradouros`;
CREATE TABLE IF NOT EXISTS `logradouros` (
  `cplogradouro` bigint(20) unsigned NOT NULL,
  `txnomelogradouro` varchar(300) COLLATE utf8_bin NOT NULL,
  `cetipologradouro` tinyint(3) unsigned DEFAULT NULL,
  `cecidade` smallint(5) unsigned DEFAULT NULL,
  `dtcadlogradouro` date NOT NULL,
  PRIMARY KEY (`cplogradouro`),
  KEY `icetipologradouro` (`cetipologradouro`),
  KEY `icecidade` (`cecidade`),
  CONSTRAINT `logradourosce1` FOREIGN KEY (`cetipologradouro`) REFERENCES `logradourostipos` (`cptipologradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `logradourosce2` FOREIGN KEY (`cecidade`) REFERENCES `cidades` (`cpcidade`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Listas com as ruas, praças, avenidas, etc que compoem os arruamentos (públicos ou não de uma cidade)';

/*!40000 ALTER TABLE `logradouros` DISABLE KEYS */;
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(1, 'Dona Matilde', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(2, 'Alicante', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(3, 'Rui Barbosa', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(4, 'dos Autonomistas', 4, 2, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(5, 'Sumaré', 4, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(6, 'Loefreguem', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(7, 'Rio de Janeiro', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(8, 'Paraná', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(9, 'Timbiras', 33, 3, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(10, 'Horizonte', 4, 4, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(11, 'Leste Oeste', 4, 4, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(12, 'Conde de Frontin', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(13, 'Direita', 33, 2, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(14, '15 de Novembro', 33, 3, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(15, 'Fradique Coutinho', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(16, 'Santos', 2, 2, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(17, 'Luis Goes', 33, 6, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(18, 'Ruben Berrta', 4, 6, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(19, 'Da Reitoria', 4, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(20, 'Da Sé', 28, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(21, 'Bresser', 33, 1, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(22, 'Marcondes', 4, 2, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(23, 'das Nações Unidas', 4, 2, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(24, 'Copernico', 4, 2, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(25, 'Marcondes', 4, 4, '2018-10-25');
INSERT INTO `logradouros` (`cplogradouro`, `txnomelogradouro`, `cetipologradouro`, `cecidade`, `dtcadlogradouro`) VALUES
	(26, 'Padre Anchieta', 32, 4, '2018-10-25');
/*!40000 ALTER TABLE `logradouros` ENABLE KEYS */;

DROP TABLE IF EXISTS `logradourostipos`;
CREATE TABLE IF NOT EXISTS `logradourostipos` (
  `cptipologradouro` tinyint(3) unsigned NOT NULL,
  `txnometipologradouro` varchar(250) NOT NULL,
  `dtcadtipologradouro` date NOT NULL,
  PRIMARY KEY (`cptipologradouro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cadastro dos Tipos de logradouros';

/*!40000 ALTER TABLE `logradourostipos` DISABLE KEYS */;
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(1, 'Aeroporto', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(2, 'Alameda', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(3, 'Área', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(4, 'Avenida', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(5, 'Campo', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(6, 'Chácara', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(7, 'Colônia', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(8, 'Condomínio', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(9, 'Conjunto', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(10, 'Distrito', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(11, 'Esplanada', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(12, 'Estação', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(13, 'Estrada', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(14, 'Favela', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(15, 'Fazenda', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(16, 'Feira', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(17, 'Jardim', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(18, 'Ladeira', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(19, 'Lago', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(20, 'Lagoa', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(21, 'Largo', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(22, 'Loteamento', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(23, 'Morro', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(24, 'Núcleo', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(25, 'Parque', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(26, 'Passarela', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(27, 'Pátio', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(28, 'Praça', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(29, 'Quadra', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(30, 'Recanto', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(31, 'Residencial', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(32, 'Rodovia', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(33, 'Rua', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(34, 'Setor', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(35, 'Sítio', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(36, 'Travessa', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(37, 'Trecho', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(38, 'Trevo', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(39, 'Vale', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(40, 'Vereda', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(41, 'Via', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(42, 'Viaduto', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(43, 'Viela', '2018-10-25');
INSERT INTO `logradourostipos` (`cptipologradouro`, `txnometipologradouro`, `dtcadtipologradouro`) VALUES
	(44, 'Vila', '2018-10-25');
/*!40000 ALTER TABLE `logradourostipos` ENABLE KEYS */;

DROP TABLE IF EXISTS `marcasveiculos`;
CREATE TABLE IF NOT EXISTS `marcasveiculos` (
  `cpmarca` int(6) NOT NULL,
  `txnomemarca` varchar(90) COLLATE utf8_bin NOT NULL,
  `cefabricante` int(3) DEFAULT NULL,
  `dtcadmarcaveiculo` date NOT NULL,
  PRIMARY KEY (`cpmarca`),
  KEY `ifabricantes` (`cefabricante`),
  CONSTRAINT `marcasveiculosce1` FOREIGN KEY (`cefabricante`) REFERENCES `fabricantes` (`cpfabricante`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Marcas de Veículos.';

/*!40000 ALTER TABLE `marcasveiculos` DISABLE KEYS */;
INSERT INTO `marcasveiculos` (`cpmarca`, `txnomemarca`, `cefabricante`, `dtcadmarcaveiculo`) VALUES
	(1, 'Gol', 6, '2015-04-21');
INSERT INTO `marcasveiculos` (`cpmarca`, `txnomemarca`, `cefabricante`, `dtcadmarcaveiculo`) VALUES
	(2, 'Up', 6, '2015-04-21');
INSERT INTO `marcasveiculos` (`cpmarca`, `txnomemarca`, `cefabricante`, `dtcadmarcaveiculo`) VALUES
	(3, 'Golf', 6, '2015-04-21');
/*!40000 ALTER TABLE `marcasveiculos` ENABLE KEYS */;

DROP TABLE IF EXISTS `medicos`;
CREATE TABLE IF NOT EXISTS `medicos` (
  `cpmedico` int(6) NOT NULL,
  `txnomemedico` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ceespecialidade` int(4) DEFAULT NULL,
  `nucrm` int(8) NOT NULL,
  `aosituacao` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ceinstituicao` int(3) NOT NULL,
  `celogradouromoradia` bigint(20) unsigned DEFAULT NULL,
  `txcomplementomoradia` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `celogradouroclinica` bigint(20) unsigned DEFAULT NULL,
  `txcomplementoclinica` varchar(50) DEFAULT NULL,
  `nucep` char(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dtcadmedico` date NOT NULL,
  PRIMARY KEY (`cpmedico`),
  KEY `iespecialidades` (`ceespecialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cadastro dos Médicos.';

/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(1, 'José de Azevedo', 1, 2134132, 'A', 1, 1, '100', 14, '14521', '1234333', '11234234234', '2010-10-10');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(2, 'Ana Maria de Castro Neves', 1, 1451245, 'A', 1, 3, '155', 2, '150', '23452345', '23452345234', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(3, 'Luis Marcos de Athaide', 2, 41245124, 'A', 2, 3, '142', 14, '245', '23452345', '34563456345', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(4, 'José Antonio Porto', 2, 41245124, 'A', 1, 4, '452', 14, '457', '34563456', '24563245645', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(5, 'Marcos José do Couto e Silva', 2, 75848562, 'A', 1, 2, '754', 1, '450', '04512452', '1174587452', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(6, 'Alberto Cinsinatti', 3, 6526253, 'A', 2, 3, '745', 2, '560', '45645645', '35345345345', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(7, 'Beatriz Nogueira', 3, 5414521, 'A', 1, 4, '120', 3, '480', '34564356', '34563456345', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(8, 'Sofia de Albuquerque Lins', 1, 9545124, 'D', 1, 2, '130', 2, '890', '23451251', '123451245', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(9, 'Alvaro Rottemberg de Moraes', 3, 4524623, 'D', 1, 6, '140', 4, '450', '3456345', '11234123', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(10, 'Carlos José Kobayashi', 2, 9451522, 'A', 2, 10, '145', 3, '780', '23452345', '23452345', '2015-04-21');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(11, 'Abelardo Barbosa de Almeida', 2, 4152422, 'A', 1, 14, '654', 6, '654', '12345678', '11985125468', '2018-10-27');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(12, 'Aquiles Benedito Montezuma', 6, 2147483647, 'A', 2, 9, '450', 17, '2450', '04512745', '1145278563', '2018-10-27');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(13, 'Benedito Correa Alves da Silva', 4, 767867867, 'A', 1, 8, '450', 5, '2450', '04512745', '1145278563', '2018-10-27');
INSERT INTO `medicos` (`cpmedico`, `txnomemedico`, `ceespecialidade`, `nucrm`, `aosituacao`, `ceinstituicao`, `celogradouromoradia`, `txcomplementomoradia`, `celogradouroclinica`, `txcomplementoclinica`, `nucep`, `nutelefone`, `dtcadmedico`) VALUES
	(14, 'Carlos de Abreu Soares Oliveira', 3, 767867867, 'A', 1, 8, '450', 5, '2450', '04512745', '1145278563', '2018-10-27');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;

DROP TABLE IF EXISTS `modelosveiculos`;
CREATE TABLE IF NOT EXISTS `modelosveiculos` (
  `cpmodelo` int(4) NOT NULL,
  `cemarca` int(6) DEFAULT NULL,
  `txdescricaomodelo` varchar(250) COLLATE utf8_bin NOT NULL,
  `aotipocombustivel` char(1) COLLATE utf8_bin NOT NULL,
  `dtcadmodeloveiculo` date NOT NULL,
  PRIMARY KEY (`cpmodelo`) USING BTREE,
  KEY `imarcas` (`cemarca`) USING BTREE,
  CONSTRAINT `modelosveiculosce1` FOREIGN KEY (`cemarca`) REFERENCES `marcasveiculos` (`cpmarca`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos modelos de veiculos.';

/*!40000 ALTER TABLE `modelosveiculos` DISABLE KEYS */;
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(1, 1, 'Quatro Portas, motor 1.0', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(2, 1, 'Duas Portas, motor 1.0', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(3, 1, 'Duas Portas, motor 1.6', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(4, 1, 'Duas Portas, motor 1.0', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(5, 1, 'Duas Portas, motor 1.6', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(6, 1, 'Quatro Portas, motor 1.0', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(7, 1, 'Quatro Portas, motor 1.6', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(8, 2, 'Duas Portas, motor 2.0', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(9, 2, 'Duas Portas, motor 1.8', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(10, 2, 'Quatro Portas, motor 2.0', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(11, 2, 'Quatro Portas, motor 1.8', 'G', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(12, 2, 'Duas Portas, motor 2.0', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(13, 2, 'Duas Portas, motor 1.8', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(14, 2, 'Quatro Portas, motor 2.0', 'F', '2015-04-21');
INSERT INTO `modelosveiculos` (`cpmodelo`, `cemarca`, `txdescricaomodelo`, `aotipocombustivel`, `dtcadmodeloveiculo`) VALUES
	(15, 2, 'Quatro Portas, motor 1.8', 'F', '2015-04-21');
/*!40000 ALTER TABLE `modelosveiculos` ENABLE KEYS */;

DROP TABLE IF EXISTS `movimentos`;
CREATE TABLE IF NOT EXISTS `movimentos` (
  `cpmovimento` int(6) NOT NULL,
  `celivro` int(9) NOT NULL,
  `cefuncionario` int(5) DEFAULT NULL,
  `dtmovimento` date NOT NULL,
  `cemovimentotipo` int(3) NOT NULL,
  `dtprevistadevolucao` date NOT NULL,
  `dtrealdevolucao` date NOT NULL,
  `dtcadmovimento` date NOT NULL,
  PRIMARY KEY (`cpmovimento`) USING BTREE,
  KEY `ilivros` (`celivro`) USING BTREE,
  KEY `ifuncionarios` (`cefuncionario`) USING BTREE,
  KEY `itiposmovimentos` (`cemovimentotipo`) USING BTREE,
  CONSTRAINT `movimentosce1` FOREIGN KEY (`cefuncionario`) REFERENCES `funcionarios` (`cpfuncionario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `movimentosce2` FOREIGN KEY (`celivro`) REFERENCES `livros` (`cplivro`) ON UPDATE CASCADE,
  CONSTRAINT `movimentosce3` FOREIGN KEY (`cemovimentotipo`) REFERENCES `movimentostipos` (`cpmovimentotipo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Movimentos de Livros no acervo de uma biblioteca.';

/*!40000 ALTER TABLE `movimentos` DISABLE KEYS */;
INSERT INTO `movimentos` (`cpmovimento`, `celivro`, `cefuncionario`, `dtmovimento`, `cemovimentotipo`, `dtprevistadevolucao`, `dtrealdevolucao`, `dtcadmovimento`) VALUES
	(1, 6, 90, '2015-06-19', 2, '2015-06-29', '2015-06-25', '2015-06-19');
INSERT INTO `movimentos` (`cpmovimento`, `celivro`, `cefuncionario`, `dtmovimento`, `cemovimentotipo`, `dtprevistadevolucao`, `dtrealdevolucao`, `dtcadmovimento`) VALUES
	(2, 1, 370, '2015-06-19', 1, '2015-06-24', '0000-00-00', '2015-06-19');
INSERT INTO `movimentos` (`cpmovimento`, `celivro`, `cefuncionario`, `dtmovimento`, `cemovimentotipo`, `dtprevistadevolucao`, `dtrealdevolucao`, `dtcadmovimento`) VALUES
	(3, 6, 200, '2017-10-21', 7, '2017-10-22', '0000-00-00', '2017-10-21');
INSERT INTO `movimentos` (`cpmovimento`, `celivro`, `cefuncionario`, `dtmovimento`, `cemovimentotipo`, `dtprevistadevolucao`, `dtrealdevolucao`, `dtcadmovimento`) VALUES
	(4, 7, 120, '2018-12-06', 6, '2018-12-06', '0000-00-00', '2018-12-12');
INSERT INTO `movimentos` (`cpmovimento`, `celivro`, `cefuncionario`, `dtmovimento`, `cemovimentotipo`, `dtprevistadevolucao`, `dtrealdevolucao`, `dtcadmovimento`) VALUES
	(5, 1, 160, '2018-12-03', 2, '2018-11-29', '0000-00-00', '2018-12-13');
/*!40000 ALTER TABLE `movimentos` ENABLE KEYS */;

DROP TABLE IF EXISTS `movimentostipos`;
CREATE TABLE IF NOT EXISTS `movimentostipos` (
  `cpmovimentotipo` int(3) NOT NULL,
  `txnomemovimentipo` varchar(80) COLLATE utf8_bin NOT NULL,
  `aopermiteretirada` char(1) COLLATE utf8_bin NOT NULL,
  `dtcadmovimentipo` date NOT NULL,
  PRIMARY KEY (`cpmovimentotipo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Tipos de Movimentos.';

/*!40000 ALTER TABLE `movimentostipos` DISABLE KEYS */;
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(1, 'Consulta na Biblioteca', 'N', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(2, 'Retirada da Biblioteca para Consulta', 'S', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(3, 'Retirada da Biblioteca para Manutenção do Exemplar', 'S', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(4, 'Retirada da Biblioteca para Emprestimo', 'S', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(5, 'Devolução de Uma Consulta na Biblioteca', 'N', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(6, 'Devolução de uma Retirada da Biblioteca para Consulta', 'N', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(7, 'Devolução de uma Retirada da Biblioteca para Manutenção do Exemplar', 'N', '2015-04-21');
INSERT INTO `movimentostipos` (`cpmovimentotipo`, `txnomemovimentipo`, `aopermiteretirada`, `dtcadmovimentipo`) VALUES
	(8, 'Devolução de uma Retirada da Biblioteca para Emprestimo', 'N', '2015-04-21');
/*!40000 ALTER TABLE `movimentostipos` ENABLE KEYS */;

DROP TABLE IF EXISTS `oficinas`;
CREATE TABLE IF NOT EXISTS `oficinas` (
  `cpoficina` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela',
  `txnomeoficina` varchar(250) NOT NULL COMMENT 'Razão social da Oficina',
  `txapelido` varchar(60) NOT NULL COMMENT 'Nome usual (ou apelido) da oficina',
  `celogradouro` bigint(20) unsigned DEFAULT NULL COMMENT 'FK com o código do Logradouro da Oficina',
  `txcomplemento` varchar(80) NOT NULL COMMENT 'Número do imóvel, localização referencial (outros imóveis próximos)',
  `nucep` char(8) NOT NULL COMMENT 'Número do CEP do logradouro da oficina',
  `dtcadoficina` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`cpoficina`),
  KEY `icelogradouro` (`celogradouro`) USING BTREE,
  CONSTRAINT `oficinasce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro das oficinas que prestam serviços de reparos em veículos';

/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` (`cpoficina`, `txnomeoficina`, `txapelido`, `celogradouro`, `txcomplemento`, `nucep`, `dtcadoficina`) VALUES
	(5, 'Oficina Mecânica de Reparos Gerais Luiz Porto S/C Ltda.', 'Luizinho', 2, '1450', '12345678', '2010-10-10');
INSERT INTO `oficinas` (`cpoficina`, `txnomeoficina`, `txapelido`, `celogradouro`, `txcomplemento`, `nucep`, `dtcadoficina`) VALUES
	(10, 'Oficina de Reparos Gerais hjk', 'Marreco', 4, '2560', '12316789', '2015-10-10');
INSERT INTO `oficinas` (`cpoficina`, `txnomeoficina`, `txapelido`, `celogradouro`, `txcomplemento`, `nucep`, `dtcadoficina`) VALUES
	(15, 'Auto-oficina Mecânica Luiz Paraná S/C Ltda.', 'Luizinho', 2, '860', '01521567', '2010-10-10');
INSERT INTO `oficinas` (`cpoficina`, `txnomeoficina`, `txapelido`, `celogradouro`, `txcomplemento`, `nucep`, `dtcadoficina`) VALUES
	(20, 'Oficina de Caminhões e Ônibus "Jamanta" S/C Ltda.', 'Jamanta', 4, '4560', '12313678', '2015-10-10');
INSERT INTO `oficinas` (`cpoficina`, `txnomeoficina`, `txapelido`, `celogradouro`, `txcomplemento`, `nucep`, `dtcadoficina`) VALUES
	(25, 'Oficinas de Motos Mourisco S/C Ltda.', 'Mourisco', 5, '12565', '01456756', '2010-10-10');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;

DROP TABLE IF EXISTS `palavraschaves`;
CREATE TABLE IF NOT EXISTS `palavraschaves` (
  `cppalavra` int(6) NOT NULL,
  `txpalavrachave` varchar(15) COLLATE utf8_bin NOT NULL,
  `dtcadpalavrachave` date NOT NULL,
  PRIMARY KEY (`cppalavra`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Palavras Chaves.';

/*!40000 ALTER TABLE `palavraschaves` DISABLE KEYS */;
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(1, 'Matemática', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(2, 'Português', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(3, 'História', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(4, 'Geografia', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(5, 'Sociologia', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(6, 'Química', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(7, 'Física', '2015-04-21');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(8, 'Amor', '2017-10-26');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(9, 'Paixão', '2017-10-26');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(10, 'Caridade', '2017-10-26');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(11, 'Lealdade', '2017-10-26');
INSERT INTO `palavraschaves` (`cppalavra`, `txpalavrachave`, `dtcadpalavrachave`) VALUES
	(12, 'Fidelidade', '2017-10-26');
/*!40000 ALTER TABLE `palavraschaves` ENABLE KEYS */;

DROP TABLE IF EXISTS `palavraslivros`;
CREATE TABLE IF NOT EXISTS `palavraslivros` (
  `cppalavralivro` int(6) NOT NULL,
  `cepalavra` int(11) NOT NULL,
  `celivro` int(11) NOT NULL,
  `dtcadpalavralivro` date NOT NULL,
  PRIMARY KEY (`cppalavralivro`),
  KEY `ipalavras` (`cepalavra`) USING BTREE,
  KEY `ilivros` (`celivro`) USING BTREE,
  CONSTRAINT `palavraslivrosce1` FOREIGN KEY (`celivro`) REFERENCES `livros` (`cplivro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `palavraslivrosce2` FOREIGN KEY (`cepalavra`) REFERENCES `palavraschaves` (`cppalavra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Palavras Chaves de Pesquisas ligadas aos Livros.';

/*!40000 ALTER TABLE `palavraslivros` DISABLE KEYS */;
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(1, 2, 1, '2018-06-18');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(2, 4, 1, '2018-06-20');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(3, 10, 1, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(4, 1, 1, '2018-06-17');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(5, 6, 1, '2018-06-22');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(6, 3, 1, '2018-06-19');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(7, 5, 1, '2018-06-21');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(8, 7, 1, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(9, 9, 1, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(10, 8, 10, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(11, 2, 2, '2018-06-19');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(12, 4, 2, '2018-06-21');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(13, 10, 2, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(14, 1, 2, '2018-06-18');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(15, 6, 2, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(16, 3, 2, '2018-06-20');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(17, 5, 2, '2018-06-22');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(18, 7, 2, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(19, 9, 2, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(20, 8, 2, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(21, 2, 3, '2018-06-20');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(22, 4, 3, '2018-06-22');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(23, 10, 3, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(24, 1, 3, '2018-06-19');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(25, 6, 3, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(26, 3, 3, '2018-06-21');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(27, 5, 3, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(28, 7, 3, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(29, 9, 3, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(30, 8, 3, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(31, 2, 4, '2018-06-21');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(32, 4, 4, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(33, 10, 4, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(34, 1, 4, '2018-06-20');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(35, 6, 4, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(36, 3, 4, '2018-06-22');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(37, 5, 4, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(38, 7, 4, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(39, 9, 4, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(40, 8, 4, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(41, 2, 5, '2018-06-22');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(42, 4, 5, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(43, 10, 5, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(44, 1, 5, '2018-06-21');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(45, 6, 5, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(46, 3, 5, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(47, 5, 5, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(49, 9, 5, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(50, 8, 5, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(51, 2, 6, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(52, 4, 6, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(53, 10, 6, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(54, 1, 6, '2018-06-22');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(55, 6, 6, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(56, 3, 6, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(57, 5, 6, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(58, 7, 6, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(59, 9, 6, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(61, 2, 7, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(62, 4, 7, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(63, 10, 7, '2018-07-02');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(64, 1, 7, '2018-06-23');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(65, 6, 7, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(66, 3, 7, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(67, 5, 7, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(68, 7, 7, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(69, 9, 7, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(70, 8, 7, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(71, 2, 8, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(72, 4, 8, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(73, 10, 8, '2018-07-03');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(74, 1, 8, '2018-06-24');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(75, 6, 8, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(76, 3, 8, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(77, 5, 8, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(78, 7, 8, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(79, 9, 8, '2018-07-02');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(80, 8, 8, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(81, 2, 9, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(82, 4, 9, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(83, 10, 9, '2018-07-04');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(84, 1, 9, '2018-06-25');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(85, 6, 9, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(86, 3, 9, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(87, 5, 9, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(88, 7, 9, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(89, 9, 9, '2018-07-03');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(91, 2, 10, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(92, 4, 10, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(93, 10, 10, '2018-07-05');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(94, 1, 10, '2018-06-26');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(95, 6, 10, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(96, 3, 10, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(97, 5, 10, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(98, 7, 10, '2018-07-02');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(99, 9, 10, '2018-07-04');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(100, 8, 10, '2018-07-03');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(101, 2, 11, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(102, 4, 11, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(103, 10, 11, '2018-07-06');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(104, 1, 11, '2018-06-27');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(105, 6, 11, '2018-07-02');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(106, 3, 11, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(107, 5, 11, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(108, 7, 11, '2018-07-03');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(109, 9, 11, '2018-07-05');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(110, 8, 11, '2018-07-04');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(111, 2, 12, '2018-06-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(112, 4, 12, '2018-07-01');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(113, 10, 12, '2018-07-07');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(114, 1, 12, '2018-06-28');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(115, 6, 12, '2018-07-03');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(116, 3, 12, '2018-06-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(117, 5, 12, '2018-07-02');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(118, 7, 12, '2018-07-04');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(119, 9, 12, '2018-07-06');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(120, 8, 12, '2018-07-05');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(121, 7, 6, '2018-10-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(122, 7, 1, '2018-10-29');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(123, 7, 1, '2018-10-30');
INSERT INTO `palavraslivros` (`cppalavralivro`, `cepalavra`, `celivro`, `dtcadpalavralivro`) VALUES
	(124, 8, 1, '2018-11-05');
/*!40000 ALTER TABLE `palavraslivros` ENABLE KEYS */;

DROP TABLE IF EXISTS `planosdesaude`;
CREATE TABLE IF NOT EXISTS `planosdesaude` (
  `cpplanodesaude` int(4) NOT NULL,
  `txnomeplano` varchar(200) COLLATE utf8_bin NOT NULL,
  `txrazaosocial` varchar(250) COLLATE utf8_bin NOT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(40) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin DEFAULT NULL,
  `txnomecontato` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `dtcadplanodesaude` date NOT NULL,
  PRIMARY KEY (`cpplanodesaude`) USING BTREE,
  KEY `icelogradouro` (`celogradouro`) USING BTREE,
  CONSTRAINT `planosdesaudece1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Planos de Saúde dos funcionarios que fazem consultas.';

/*!40000 ALTER TABLE `planosdesaude` DISABLE KEYS */;
INSERT INTO `planosdesaude` (`cpplanodesaude`, `txnomeplano`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadplanodesaude`) VALUES
	(1, 'Golden Cross', 'Administradora de Saúde Golden Cross S.A.', 20, '1453', 'Vila Conceição', NULL, NULL, '04145211', '2015-04-21');
INSERT INTO `planosdesaude` (`cpplanodesaude`, `txnomeplano`, `txrazaosocial`, `celogradouro`, `txcomplemento`, `txbairro`, `nutelefone`, `txnomecontato`, `nucep`, `dtcadplanodesaude`) VALUES
	(2, 'Sulamerica ', 'Sulamerica Serviços de Saúde S.A.', 22, '3450 - 5ºAnd Conj.520', 'Vila Nova Saldanha', NULL, NULL, '04512786', '2015-04-20');
/*!40000 ALTER TABLE `planosdesaude` ENABLE KEYS */;

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `cpprofessor` int(3) NOT NULL,
  `txnomeprofessor` varchar(250) COLLATE utf8_bin NOT NULL,
  `ceescola` int(3) DEFAULT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(40) COLLATE utf8_bin NOT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `dtnascimento` date NOT NULL,
  `dtcadprofessor` date NOT NULL,
  PRIMARY KEY (`cpprofessor`),
  KEY `iescolas` (`ceescola`),
  KEY `ilogradouros` (`celogradouro`),
  CONSTRAINT `professoresce1` FOREIGN KEY (`ceescola`) REFERENCES `escolas` (`cpescola`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `professoresce2` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Professores que ministram disciplinas em cursos.';

/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(1, 'Agrepino de Souza Filho', 1, 12, '346', '1433264585', 'Centro', '14512451', '1973-09-10', '2009-11-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(2, 'Sandra Maria Vescio', 1, 13, '256', '1433568745', 'Vila Marieta', '14512451', '1978-10-10', '2010-01-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(3, 'Maria Evangelina da Silva', 2, 14, '345', '11985658745', 'Vila Esperança', '14512451', '1957-04-10', '1999-08-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(4, 'Silvana Alves de Lima', 1, 14, '386', '14987758485', 'Centro', '14512451', '1980-10-05', '2000-11-06');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(5, 'Angela Rosa de Moraes', 2, 14, '45', '14963863763', 'Vila Marieta', '14512451', '1984-10-10', '2001-05-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(6, 'Mariza Gomes Afonso', 2, 15, '345', '11954784475', 'Vila Esperança', '14512451', '1969-05-30', '2010-05-26');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(7, 'Luciano Angelo De Godoi', 1, 15, '346', '1433264585', 'Centro', '14512451', '1985-10-10', '1991-06-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(8, 'Mario Sérgio de Souto Correa', 1, 15, '45', '', 'Vila Marieta', '14512451', '1962-10-10', '2006-05-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(9, 'Luiza Maria do Couto e Silva', NULL, 14, '345', '', 'Vila Esperança', '14512451', '1967-10-10', '2000-05-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(10, 'Lucas Francisco Souza Lima', 1, 12, '346', '', 'Centro', '14512451', '1962-10-10', '1998-12-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(11, 'Bruno De Oliveira Goncales', 2, 13, '456 - debaixo da escada', '1324123', 'centro', '12341233', '1971-08-20', '1996-01-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(12, 'Angela Pontes Simões', NULL, 10, '45', '', 'Vila Marieta', '14512451', '1969-09-22', '2004-09-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(13, 'Wilson Marques Salvador', 2, 10, '3345', '11954784475', 'Vila Esperança', '14512451', '1969-10-10', '1996-02-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(14, 'Eurípedes Nabucodonozor Marques', NULL, 11, '456 - Casa 2', '1324123', 'centrol', '12341233', '1971-05-24', '2000-01-10');
INSERT INTO `professores` (`cpprofessor`, `txnomeprofessor`, `ceescola`, `celogradouro`, `txcomplemento`, `nutelefone`, `txbairro`, `nucep`, `dtnascimento`, `dtcadprofessor`) VALUES
	(15, 'Cezário de Albuquerque Lima', 1, 8, '7541', '1498652314', 'vila Perino', '14512415', '1988-12-05', '2018-12-10');
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;

DROP TABLE IF EXISTS `seguradoras`;
CREATE TABLE IF NOT EXISTS `seguradoras` (
  `cpseguradora` int(4) NOT NULL,
  `txnomeseguradora` varchar(250) COLLATE utf8_bin NOT NULL,
  `celogradouro` bigint(20) unsigned DEFAULT NULL,
  `txcomplemento` varchar(50) COLLATE utf8_bin NOT NULL,
  `txbairro` varchar(40) COLLATE utf8_bin NOT NULL,
  `nucep` char(8) COLLATE utf8_bin NOT NULL,
  `nutelefone` char(11) COLLATE utf8_bin NOT NULL,
  `txnomecontato` varchar(50) COLLATE utf8_bin NOT NULL,
  `dtcadseguradora` date NOT NULL,
  PRIMARY KEY (`cpseguradora`) USING BTREE,
  KEY `ilogradouros` (`celogradouro`) USING BTREE,
  CONSTRAINT `seguradorasce1` FOREIGN KEY (`celogradouro`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro das Seguradoras de valores.';

/*!40000 ALTER TABLE `seguradoras` DISABLE KEYS */;
INSERT INTO `seguradoras` (`cpseguradora`, `txnomeseguradora`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadseguradora`) VALUES
	(1, 'Porto Seguro S.A. ', 16, '1345-23', 'Bela Vista', '04512452', '', '', '2010-10-10');
INSERT INTO `seguradoras` (`cpseguradora`, `txnomeseguradora`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadseguradora`) VALUES
	(2, 'Mafre Seguros S.C. Ltda.', 17, '2345', 'Pinheiros', '04514215', '', '', '2010-10-10');
INSERT INTO `seguradoras` (`cpseguradora`, `txnomeseguradora`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadseguradora`) VALUES
	(3, 'Sulamerica Corretora de Seguros', 12, '1467', 'Bela Vista', '04512422', '', '', '2010-10-10');
INSERT INTO `seguradoras` (`cpseguradora`, `txnomeseguradora`, `celogradouro`, `txcomplemento`, `txbairro`, `nucep`, `nutelefone`, `txnomecontato`, `dtcadseguradora`) VALUES
	(8, 'Seguradora Maritima S/C Ltda.', 14, '14520', 'Vila Berrini', '14251521', '', '', '2010-10-10');
/*!40000 ALTER TABLE `seguradoras` ENABLE KEYS */;

DROP TABLE IF EXISTS `seguros`;
CREATE TABLE IF NOT EXISTS `seguros` (
  `cpnumeroapolice` int(6) NOT NULL,
  `ceveiculo` int(6) DEFAULT NULL,
  `ceseguradora` int(4) DEFAULT NULL,
  `dtcontratacao` date NOT NULL,
  `dtlimitecobertura` date NOT NULL,
  `vlcobertura` float(15,2) NOT NULL,
  `dtcadseguro` date NOT NULL,
  PRIMARY KEY (`cpnumeroapolice`) USING BTREE,
  KEY `iveiculos` (`ceveiculo`) USING BTREE,
  KEY `iseguradoras` (`ceseguradora`) USING BTREE,
  CONSTRAINT `segurosce1` FOREIGN KEY (`ceseguradora`) REFERENCES `seguradoras` (`cpseguradora`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `segurosce2` FOREIGN KEY (`ceveiculo`) REFERENCES `veiculos` (`cpveiculo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Seguros feitos para os veiculos.';

/*!40000 ALTER TABLE `seguros` DISABLE KEYS */;
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(1, 11, 1, '2015-06-26', '2016-06-26', 45000.00, '2015-06-27');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(2, 12, 1, '2015-06-27', '2016-06-27', 45000.00, '2015-06-28');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(3, 13, 1, '2015-06-28', '2016-06-28', 45000.00, '2015-06-29');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(4, 14, 1, '2015-06-29', '2016-06-29', 54000.00, '2015-06-30');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(5, 15, 1, '2015-06-30', '2016-06-30', 45000.00, '2015-07-01');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(6, 16, 1, '2015-07-01', '2016-07-01', 45000.00, '2015-07-02');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(7, 17, 1, '2015-07-02', '2016-07-02', 45000.00, '2015-07-03');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(8, 18, 1, '2015-07-03', '2016-07-03', 45000.00, '2015-07-04');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(9, 20, 1, '2015-07-05', '2016-07-05', 45000.00, '2015-07-06');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(10, 21, 1, '2015-07-06', '2016-07-06', 45000.00, '2015-07-07');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(12, 13, 2, '2015-06-28', '2016-06-28', 45000.00, '2015-06-29');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(13, 14, 2, '2015-06-29', '2016-06-29', 45000.00, '2015-06-30');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(14, 15, 2, '2015-06-30', '2016-06-30', 45000.00, '2015-07-01');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(15, 16, 2, '2015-07-01', '2016-07-01', 45000.00, '2015-07-02');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(16, 17, 2, '2015-07-02', '2016-07-02', 45000.00, '2015-07-03');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(17, 18, 2, '2015-07-03', '2016-07-03', 45000.00, '2015-07-04');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(18, 20, 2, '2015-07-05', '2016-07-05', 45000.00, '2015-07-06');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(19, 21, 2, '2015-07-06', '2016-07-06', 45000.00, '2015-07-07');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(20, 13, 3, '2015-06-28', '2016-06-28', 45000.00, '2015-06-29');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(22, 15, 3, '2015-06-30', '2016-06-30', 45000.00, '2015-07-01');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(23, 16, 3, '2015-07-01', '2016-07-01', 45000.00, '2015-07-02');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(24, 17, 3, '2015-07-02', '2016-07-02', 45000.00, '2015-07-03');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(25, 18, 3, '2015-07-03', '2016-07-03', 45000.00, '2015-07-04');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(26, 20, 3, '2015-07-05', '2016-07-05', 45000.00, '2015-07-06');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(27, 21, 3, '2015-07-06', '2016-07-06', 45000.00, '2015-07-07');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(28, 18, 8, '2015-07-03', '2016-07-03', 45000.00, '2015-07-04');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(29, 20, 8, '2015-07-05', '2016-07-05', 45000.00, '2015-07-06');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(30, 21, 8, '2015-07-06', '2016-07-06', 45000.00, '2015-07-07');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(31, 14, 3, '2017-12-10', '2018-12-10', 25000.00, '2018-12-10');
INSERT INTO `seguros` (`cpnumeroapolice`, `ceveiculo`, `ceseguradora`, `dtcontratacao`, `dtlimitecobertura`, `vlcobertura`, `dtcadseguro`) VALUES
	(32, 10, 1, '2017-02-01', '2018-02-01', 15000.00, '2017-02-01');
/*!40000 ALTER TABLE `seguros` ENABLE KEYS */;

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `cpservico` smallint(5) unsigned NOT NULL COMMENT 'PK da Tabela.',
  `txnomeservico` varchar(90) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Nome completo e sem abreviações',
  `txdescricao` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o setor de atuação',
  `dtcadservico` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`cpservico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Cadastro dos Serviços de Manutenção feitos pelas oficinas nos veículos dos funcionários. ';

/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` (`cpservico`, `txnomeservico`, `txdescricao`, `dtcadservico`) VALUES
	(1, 'Troca de amortecedor', 'Avaliação e troca de amortecedores de veículos', '2018-02-01');
INSERT INTO `servicos` (`cpservico`, `txnomeservico`, `txdescricao`, `dtcadservico`) VALUES
	(2, 'Troca de Pneus', 'Avaliação e troca dos pneus', '2018-02-01');
INSERT INTO `servicos` (`cpservico`, `txnomeservico`, `txdescricao`, `dtcadservico`) VALUES
	(3, 'Balanceamento de rodas de carros', 'Balanceamento de rodas de carros ou veículos leves', '2018-02-01');
INSERT INTO `servicos` (`cpservico`, `txnomeservico`, `txdescricao`, `dtcadservico`) VALUES
	(4, 'Troca de funilaria', 'Troca de peças inteiras da funilaria de veículos', '2018-02-01');
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;

DROP TABLE IF EXISTS `sinistros`;
CREATE TABLE IF NOT EXISTS `sinistros` (
  `cpsinistro` int(4) NOT NULL,
  `txnomesinistro` varchar(90) COLLATE utf8_bin NOT NULL,
  `txdescricao` varchar(250) COLLATE utf8_bin NOT NULL,
  `dtcadsinistro` date NOT NULL,
  PRIMARY KEY (`cpsinistro`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Sinistros (ocorrências que podem gerar abertura de pedidos para restaurar valores de seguros).';

/*!40000 ALTER TABLE `sinistros` DISABLE KEYS */;
INSERT INTO `sinistros` (`cpsinistro`, `txnomesinistro`, `txdescricao`, `dtcadsinistro`) VALUES
	(1, 'Colisão de veículo com bem público ou de terceiro', 'Veículo colide com bens públicos ou de terceiros', '2018-02-02');
INSERT INTO `sinistros` (`cpsinistro`, `txnomesinistro`, `txdescricao`, `dtcadsinistro`) VALUES
	(2, 'Colisão de veículos sem dano de terceiro', 'Veículo colide com outro veículo somente causando dano ao outro veículo.', '2018-02-02');
INSERT INTO `sinistros` (`cpsinistro`, `txnomesinistro`, `txdescricao`, `dtcadsinistro`) VALUES
	(3, 'Colisão de veículos com dano de terceiro', 'Veículo colide com outro veículo causando dano ao outro veículo, bem público ou de terceiro.', '2018-02-02');
INSERT INTO `sinistros` (`cpsinistro`, `txnomesinistro`, `txdescricao`, `dtcadsinistro`) VALUES
	(4, 'Atropelamento sem vítima fatal', 'Atropelamento sem vítimas fatais', '2018-02-02');
INSERT INTO `sinistros` (`cpsinistro`, `txnomesinistro`, `txdescricao`, `dtcadsinistro`) VALUES
	(5, 'Atropelamento com vítima fatal', 'Atropelamento com vítimas fatais', '2018-02-02');
/*!40000 ALTER TABLE `sinistros` ENABLE KEYS */;

DROP TABLE IF EXISTS `sinistrosveiculos`;
CREATE TABLE IF NOT EXISTS `sinistrosveiculos` (
  `cpocorrencia` int(4) NOT NULL,
  `cesinistro` int(4) NOT NULL,
  `ceveiculo` int(6) NOT NULL,
  `cenumeroapolice` int(7) NOT NULL,
  `celogradouroprincipal` bigint(20) unsigned DEFAULT NULL,
  `celogradourosecundario` bigint(20) unsigned DEFAULT NULL,
  `dtcadsinistroveiculo` date NOT NULL,
  PRIMARY KEY (`cpocorrencia`) USING BTREE,
  KEY `isinistros` (`cesinistro`) USING BTREE,
  KEY `iveiculos` (`ceveiculo`) USING BTREE,
  KEY `iseguros` (`cenumeroapolice`) USING BTREE,
  KEY `ilogradouros1` (`celogradouroprincipal`) USING BTREE,
  KEY `ilogradouros2` (`celogradourosecundario`) USING BTREE,
  CONSTRAINT `sinistrosveiculosce1` FOREIGN KEY (`cenumeroapolice`) REFERENCES `seguros` (`cpnumeroapolice`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sinistrosveiculosce2` FOREIGN KEY (`cesinistro`) REFERENCES `sinistros` (`cpsinistro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sinistrosveiculosce3` FOREIGN KEY (`ceveiculo`) REFERENCES `veiculos` (`cpveiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sinistrosveiculosce4` FOREIGN KEY (`celogradouroprincipal`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sinistrosveiculosce5` FOREIGN KEY (`celogradourosecundario`) REFERENCES `logradouros` (`cplogradouro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos Sinistros ocorridos com veiculos.';

/*!40000 ALTER TABLE `sinistrosveiculos` DISABLE KEYS */;
INSERT INTO `sinistrosveiculos` (`cpocorrencia`, `cesinistro`, `ceveiculo`, `cenumeroapolice`, `celogradouroprincipal`, `celogradourosecundario`, `dtcadsinistroveiculo`) VALUES
	(1, 1, 8, 7, 2, NULL, '2018-10-25');
INSERT INTO `sinistrosveiculos` (`cpocorrencia`, `cesinistro`, `ceveiculo`, `cenumeroapolice`, `celogradouroprincipal`, `celogradourosecundario`, `dtcadsinistroveiculo`) VALUES
	(2, 2, 1, 3, 24, 12, '2018-10-25');
INSERT INTO `sinistrosveiculos` (`cpocorrencia`, `cesinistro`, `ceveiculo`, `cenumeroapolice`, `celogradouroprincipal`, `celogradourosecundario`, `dtcadsinistroveiculo`) VALUES
	(3, 3, 13, 1, 12, 14, '2018-10-25');
INSERT INTO `sinistrosveiculos` (`cpocorrencia`, `cesinistro`, `ceveiculo`, `cenumeroapolice`, `celogradouroprincipal`, `celogradourosecundario`, `dtcadsinistroveiculo`) VALUES
	(4, 1, 14, 8, 15, 26, '2018-10-25');
INSERT INTO `sinistrosveiculos` (`cpocorrencia`, `cesinistro`, `ceveiculo`, `cenumeroapolice`, `celogradouroprincipal`, `celogradourosecundario`, `dtcadsinistroveiculo`) VALUES
	(5, 5, 1, 31, 14, 14, '2018-12-10');
/*!40000 ALTER TABLE `sinistrosveiculos` ENABLE KEYS */;

DROP TABLE IF EXISTS `usaservicos`;
CREATE TABLE IF NOT EXISTS `usaservicos` (
  `cpusaservico` bigint(20) unsigned NOT NULL,
  `ceveiculo` int(10) unsigned DEFAULT NULL,
  `cefeitospor` smallint(5) unsigned DEFAULT NULL,
  `dtinicio` date DEFAULT NULL,
  `dttermino` date DEFAULT NULL,
  `dtcadusaservico` date DEFAULT NULL,
  PRIMARY KEY (`cpusaservico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos serviços feitos oficinas usados por veículos dos funcionários. ';

/*!40000 ALTER TABLE `usaservicos` DISABLE KEYS */;
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(1, 1, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(2, 2, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(3, 3, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(4, 4, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(5, 5, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(6, 6, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(7, 7, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(8, 8, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(9, 9, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(10, 10, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(11, 11, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(12, 12, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(13, 13, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(14, 14, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(15, 15, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(16, 16, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(17, 17, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(18, 18, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(19, 20, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(20, 21, 13, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(21, 1, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(22, 2, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(23, 3, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(24, 4, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(25, 5, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(26, 6, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(27, 7, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(28, 8, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(29, 9, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(30, 10, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(31, 11, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(32, 12, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(33, 13, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(34, 14, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(35, 15, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(36, 16, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(37, 17, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(38, 18, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(39, 20, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(40, 21, 14, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(41, 1, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(42, 2, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(43, 3, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(44, 4, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(45, 5, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(46, 6, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(47, 7, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(48, 8, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(49, 9, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(50, 10, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(51, 11, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(52, 12, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(53, 13, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(54, 14, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(55, 15, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(56, 16, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(57, 17, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(58, 18, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(59, 20, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(60, 21, 15, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(61, 1, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(62, 2, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(63, 3, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(64, 4, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(65, 5, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(66, 6, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(67, 7, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(68, 8, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(69, 9, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(70, 10, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(71, 11, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(72, 12, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(73, 13, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(74, 14, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(75, 15, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(76, 16, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(77, 17, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(78, 18, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(79, 20, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(80, 21, 16, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(81, 1, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(82, 2, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(83, 3, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(84, 4, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(85, 5, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(86, 6, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(87, 7, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(88, 8, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(89, 9, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(90, 10, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(91, 11, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(92, 12, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(93, 13, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(94, 14, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(95, 15, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(96, 16, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(97, 17, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(98, 18, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(99, 20, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(100, 21, 1, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(101, 1, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(102, 2, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(103, 3, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(104, 4, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(105, 5, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(106, 6, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(107, 7, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(108, 8, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(109, 9, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(110, 10, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(111, 11, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(112, 12, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(113, 13, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(114, 14, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(115, 15, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(116, 16, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(117, 17, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(118, 18, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(119, 20, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(120, 21, 2, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(121, 1, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(122, 2, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(123, 3, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(124, 4, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(125, 5, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(126, 6, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(127, 7, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(128, 8, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(129, 9, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(130, 10, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(131, 11, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(132, 12, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(133, 13, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(134, 14, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(135, 15, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(136, 16, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(137, 17, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(138, 18, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(139, 20, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(140, 21, 3, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(141, 1, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(142, 2, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(143, 3, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(144, 4, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(145, 5, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(146, 6, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(147, 7, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(148, 8, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(149, 9, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(150, 10, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(151, 11, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(152, 12, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(153, 13, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(154, 14, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(155, 15, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(156, 16, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(157, 17, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(158, 18, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(159, 20, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(160, 21, 4, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(161, 1, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(162, 2, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(163, 3, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(164, 4, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(165, 5, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(166, 6, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(167, 7, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(168, 8, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(169, 9, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(170, 10, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(171, 11, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(172, 12, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(173, 13, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(174, 14, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(175, 15, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(176, 16, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(177, 17, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(178, 18, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(179, 20, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(180, 21, 17, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(181, 1, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(182, 2, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(183, 3, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(184, 4, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(185, 5, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(186, 6, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(187, 7, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(188, 8, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(189, 9, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(190, 10, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(191, 11, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(192, 12, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(193, 13, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(194, 14, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(195, 15, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(196, 16, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(197, 17, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(198, 18, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(199, 20, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(200, 21, 18, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(201, 1, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(202, 2, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(203, 3, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(204, 4, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(205, 5, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(206, 6, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(207, 7, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(208, 8, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(209, 9, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(210, 10, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(211, 11, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(212, 12, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(213, 13, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(214, 14, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(215, 15, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(216, 16, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(217, 17, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(218, 18, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(219, 20, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(220, 21, 19, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(221, 1, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(222, 2, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(223, 3, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(224, 4, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(225, 5, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(226, 6, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(227, 7, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(228, 8, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(229, 9, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(230, 10, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(231, 11, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(232, 12, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(233, 13, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(234, 14, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(235, 15, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(236, 16, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(237, 17, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(238, 18, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(239, 20, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(240, 21, 20, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(241, 1, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(242, 2, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(243, 3, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(244, 4, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(245, 5, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(246, 6, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(247, 7, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(248, 8, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(249, 9, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(250, 10, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(251, 11, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(252, 12, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(253, 13, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(254, 14, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(255, 15, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(256, 16, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(257, 17, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(258, 18, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(259, 20, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(260, 21, 9, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(261, 1, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(262, 2, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(263, 3, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(264, 4, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(265, 5, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(266, 6, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(267, 7, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(268, 8, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(269, 9, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(270, 10, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(271, 11, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(272, 12, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(273, 13, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(274, 14, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(275, 15, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(276, 16, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(277, 17, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(278, 18, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(279, 20, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(280, 21, 10, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(281, 1, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(282, 2, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(283, 3, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(284, 4, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(285, 5, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(286, 6, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(287, 7, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(288, 8, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(289, 9, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(290, 10, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(291, 11, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(292, 12, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(293, 13, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(294, 14, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(295, 15, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(296, 16, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(297, 17, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(298, 18, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(299, 20, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(300, 21, 11, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(301, 1, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(302, 2, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(303, 3, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(304, 4, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(305, 5, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(306, 6, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(307, 7, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(308, 8, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(309, 9, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(310, 10, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(311, 11, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(312, 12, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(313, 13, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(314, 14, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(315, 15, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(316, 16, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(317, 17, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(318, 18, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(319, 20, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(320, 21, 12, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(321, 1, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(322, 2, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(323, 3, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(324, 4, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(325, 5, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(326, 6, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(327, 7, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(328, 8, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(329, 9, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(330, 10, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(331, 11, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(332, 12, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(333, 13, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(334, 14, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(335, 15, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(336, 16, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(337, 17, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(338, 18, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(339, 20, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(340, 21, 5, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(341, 1, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(342, 2, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(343, 3, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(344, 4, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(345, 5, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(346, 6, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(347, 7, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(348, 8, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(349, 9, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(350, 10, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(351, 11, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(352, 12, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(353, 13, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(354, 14, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(355, 15, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(356, 16, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(357, 17, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(358, 18, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(359, 20, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(360, 21, 6, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(361, 1, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(362, 2, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(363, 3, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(364, 4, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(365, 5, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(366, 6, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(367, 7, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(368, 8, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(369, 9, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(370, 10, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(371, 11, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(372, 12, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(373, 13, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(374, 14, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(375, 15, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(376, 16, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(377, 17, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(378, 18, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(379, 20, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(380, 21, 7, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(381, 1, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(382, 2, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(383, 3, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(384, 4, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(385, 5, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(386, 6, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(387, 7, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(388, 8, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(389, 9, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(390, 10, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(391, 11, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(392, 12, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(393, 13, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(394, 14, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(395, 15, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(396, 16, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(397, 17, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(398, 18, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(399, 20, 8, '2017-10-20', '2017-11-25', '2018-01-20');
INSERT INTO `usaservicos` (`cpusaservico`, `ceveiculo`, `cefeitospor`, `dtinicio`, `dttermino`, `dtcadusaservico`) VALUES
	(400, 21, 8, '2017-10-20', '2017-11-25', '2018-01-20');
/*!40000 ALTER TABLE `usaservicos` ENABLE KEYS */;

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE IF NOT EXISTS `veiculos` (
  `cpveiculo` int(6) NOT NULL,
  `ccplaca` char(7) COLLATE utf8_bin NOT NULL,
  `cefuncionario` int(6) NOT NULL,
  `cetipoveiculo` tinyint(3) unsigned DEFAULT NULL,
  `cemodelo` int(4) DEFAULT NULL,
  `cecor` int(11) DEFAULT NULL,
  `aostatus` char(1) COLLATE utf8_bin NOT NULL,
  `nuanofabricacao` year(4) NOT NULL,
  `dtcadveiculo` date NOT NULL,
  PRIMARY KEY (`cpveiculo`) USING HASH,
  UNIQUE KEY `ukplaca` (`ccplaca`) USING BTREE,
  KEY `ifuncionarios` (`cefuncionario`) USING BTREE,
  KEY `imodelos` (`cemodelo`) USING BTREE,
  KEY `icores` (`cecor`) USING BTREE,
  KEY `veiculosce4` (`cetipoveiculo`),
  CONSTRAINT `veiculosce1` FOREIGN KEY (`cefuncionario`) REFERENCES `funcionarios` (`cpfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `veiculosce2` FOREIGN KEY (`cemodelo`) REFERENCES `modelosveiculos` (`cpmodelo`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `veiculosce3` FOREIGN KEY (`cecor`) REFERENCES `cores` (`cpcor`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `veiculosce4` FOREIGN KEY (`cetipoveiculo`) REFERENCES `veiculostipos` (`cptipoveiculo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos veiculos';

/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(1, 'ABC1234', 70, 6, 3, 3, 'P', '1996', '2009-01-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(2, 'ASD-234', 280, NULL, 4, NULL, 'S', '2010', '2012-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(3, 'WSX2345', 60, NULL, 1, NULL, 'S', '2005', '2005-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(4, 'QSC1234', 80, NULL, 4, NULL, 'S', '2010', '2014-03-13');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(5, 'WDV1234', 80, NULL, 4, NULL, 'S', '2010', '2014-03-13');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(6, 'RFV1234', 80, NULL, 4, NULL, 'P', '2010', '2014-03-13');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(7, 'TRG3424', 290, NULL, 1, NULL, 'S', '1998', '2014-05-26');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(8, 'HTE6789', 270, NULL, 1, NULL, 'S', '2005', '2014-05-26');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(9, 'WUH6512', 90, NULL, NULL, NULL, 'S', '2010', '2010-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(10, 'WSI9876', 100, NULL, NULL, NULL, 'S', '2010', '2010-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(11, 'QSD2346', 60, NULL, NULL, NULL, 'P', '2010', '2010-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(12, 'RFT5610', 150, NULL, NULL, NULL, 'P', '2012', '2012-06-25');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(13, 'QAW4598', 80, NULL, NULL, NULL, 'S', '2012', '2012-01-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(14, 'YHU7890', 150, NULL, NULL, NULL, 'S', '2012', '2012-05-23');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(15, 'QWS2387', 70, NULL, NULL, NULL, 'S', '2012', '2012-05-23');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(16, 'WCF6789', 150, NULL, NULL, NULL, 'S', '2010', '2010-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(17, 'WSD1245', 160, NULL, NULL, NULL, 'P', '2010', '2012-05-23');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(18, 'GTY4512', 170, NULL, NULL, NULL, 'S', '2011', '2011-02-20');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(20, 'QWE6546', 120, NULL, NULL, NULL, 'P', '2010', '2010-05-12');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(21, 'QYJ2309', 110, NULL, 3, NULL, 'P', '2011', '2010-10-10');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(22, 'QWE9890', 150, NULL, NULL, NULL, 'S', '2010', '2018-11-06');
INSERT INTO `veiculos` (`cpveiculo`, `ccplaca`, `cefuncionario`, `cetipoveiculo`, `cemodelo`, `cecor`, `aostatus`, `nuanofabricacao`, `dtcadveiculo`) VALUES
	(24, 'TRT7897', 460, 6, 6, 3, 'S', '1998', '2017-11-09');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;

DROP TABLE IF EXISTS `veiculostipos`;
CREATE TABLE IF NOT EXISTS `veiculostipos` (
  `cptipoveiculo` tinyint(3) unsigned NOT NULL COMMENT 'CP da Tabela',
  `txdescricao` varchar(250) COLLATE utf8_bin NOT NULL COMMENT 'Texto descrevendo o tipo de veiculo (carro, caminhonete, motocicleta, etc)',
  `dtcadveiculotipo` date NOT NULL COMMENT 'Data de geração do registro',
  PRIMARY KEY (`cptipoveiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Cadastro dos tipos de veículos.';

/*!40000 ALTER TABLE `veiculostipos` DISABLE KEYS */;
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(1, 'Aquático movido à vela', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(2, 'Aquático movido à motor diesel', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(3, 'Aquático movido à motor de gasolina', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(4, 'Aquático movido à motor elétrico', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(5, 'Terrestre movido à motor diesel', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(6, 'Terrestre movido à motor de gasolina', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(7, 'Terrestre movido à motor elétrico', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(8, 'Aéreo movido à motor diesel', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(9, 'Aéreo movido à motor de gasolina', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(10, 'Aéreo movido à jato', '2018-02-01');
INSERT INTO `veiculostipos` (`cptipoveiculo`, `txdescricao`, `dtcadveiculotipo`) VALUES
	(11, 'Aéreo movido à motor de querosene', '2018-02-01');
/*!40000 ALTER TABLE `veiculostipos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
