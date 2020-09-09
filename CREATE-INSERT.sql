CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeAluno` varchar(50) NOT NULL,
  `notaTrimestre1` int(11) NOT NULL,
  `notaTrimestre2` int(11) NOT NULL,
  `notaTrimestre3` int(11) NOT NULL,
  `dataMatricula` date NOT NULL,
  `turma` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16;
--
-- Extraindo dados da tabela `alunos`,
--
INSERT INTO `alunos` (`id`, `nomeAluno`, `notaTrimestre1`, `notaTrimestre2`, `notaTrimestre3`, `dataMatricula`, `turma`) VALUES
(1, 'ANDREI', 50, 60, 70, '2020-05-01', 'informática'),
(2, 'ARTHUR', 55, 55, 55, '2020-05-01', 'informática'),
(3, 'CAIO', 50, 51, 52, '2020-05-01', 'informática'),
(4, 'EDUARDO', 100, 50, 0, '2020-05-01', 'informática'),
(5, 'DAVI', 20, 50, 100, '2020-05-20', 'informática'),
(6, 'JOÃO', 99, 99, 99, '2020-05-01', 'informática'),
(7, 'JUAN', 50, 50, 50, '2020-05-01', 'informática'),
(8, 'LUCAS', 0, 10, 20, '2020-05-01', 'informática'),
(9, 'LUISE', 0, 10, 20, '2020-05-01', 'informática'),
(10, 'MAURICIO', 0, 10, 20, '2020-05-01', 'informática'),
(11, 'NATÃ', 0, 10, 20, '2020-05-01', 'informática'),
(12, 'NATHÁLIA', 0, 10, 20, '2020-05-01', 'informática'),
(13, 'VINICIUS', 0, 10, 20, '2020-05-01', 'informática'),
(14, 'WILLIAM', 0, 10, 20, '2020-05-01', 'informática'),
(15, 'ENZO', 100, 100, 100, '2020-05-15', 'informática');


CREATE TABLE IF NOT EXISTS `professores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProfessor` varchar(50) NOT NULL, 
  `salario` int(11) NOT NULL,
  `materia` varchar(30) NOT NULL,
  `coordenador` int(11) NOT NULL,
  `nivelEnsinoFK` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;
--
-- Extraindo dados da tabela `professores`
--
INSERT INTO `professores` (`id`, `nomeProfessor`, `salario`, `materia`, `coordenador`, `nivelEnsinoFK`) VALUES
(1, 'Geraldine', 15000, 'Português', 1, 1),
(2, 'Marcelo', 14000, 'Banco de Dados', 1, 3),
(3, 'Elias', 18000, 'Web Design', 1, 3),
(4, 'Eduardo', 15000, 'matemática', 1, 2),
(5, 'João', 20000, 'Fotografia', 1, 1);

CREATE TABLE IF NOT EXISTS `nivelEnsinos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `orcamentoMensal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;
--
-- Extraindo dados da tabela `nivelEnsinos`
--

INSERT INTO nivelEnsinos 
	(`id`, `descricao`, `orcamentoMensal`) 
VALUES
	(1, 'ensino fundamental', 1000),
	(2, 'ensino médio', 10000),
	(3, 'ensino técnico', 51000);

drop table nivelEnsinos;
drop table professores;
drop table alunos;