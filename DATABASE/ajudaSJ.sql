SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

drop schema  `ajudaSJ`;
CREATE SCHEMA IF NOT EXISTS `ajudaSJ` DEFAULT CHARACTER SET utf8mb4 ;
USE `ajudaSJ` ;

CREATE TABLE noticia (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(512),
	titulo VARCHAR(126),
	texto TEXT,
	foto varchar(70),
	estado boolean,
    codAdm int
);

CREATE TABLE IF NOT EXISTS `ajudaSJ`.`usuario` (
  `codUsuario` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `foto` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL NULL,
  `senha` VARCHAR (30) NOT NULL,
  `adm` VARCHAR (30) DEFAULT "n",
  `ra` VARCHAR(60) NOT NULL UNIQUE,
  `cidade` VARCHAR(60) NOT NULL,
  `estado` VARCHAR(60) NOT NULL,
  `codMateriaBoa` INT UNSIGNED,
  
  PRIMARY KEY (`codUsuario`),
   FOREIGN KEY (codMateriaBoa) REFERENCES materia(codMateria))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;CREATE TABLE `ajudaSJ`.`solicitacao` (
  `codSolicitacao` INT(11)  NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `horaInicio` varchar(15) NOT NULL,
  `horaFinal` varchar(15) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `codAlunoAprende` INT(11) UNSIGNED NOT NULL ,
  `emailAprende` varchar(100)  NOT NULL,
  `codAlunoEnsina` INT(11) UNSIGNED NOT NULL,
  `emailEnsina` VARCHAR (100) NOT NULL,
  `codMateria` INT UNSIGNED NOT NULL,
    `local` VARCHAR(100) NOT NULL,
  `data`  VARCHAR(100)NULL DEFAULT NULL,
  PRIMARY KEY (`codSolicitacao`),
  FOREIGN KEY (codMateria) REFERENCES materia(codMateria))
  
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;



CREATE TABLE `ajudaSJ`.`materia` (
  `codMateria` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL UNIQUE,
  PRIMARY KEY (`codMateria`))
  ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;
INSERT INTO `ajudasj`.`materia` (nome) value ("calculo");
INSERT INTO `ajudasj`.`materia` (nome) value ("programação orientada a objetos");
INSERT INTO `ajudasj`.`materia` (nome) value ("geometria analitica e algebra linear");
INSERT INTO `ajudasj`.`materia` (nome) value ("banco de dados");
INSERT INTO `ajudasj`.`materia` (nome) value ("matematica");
INSERT INTO `ajudasj`.`materia` (nome) value ("física");
INSERT INTO `ajudasj`.`materia` (nome) value ("java");
INSERT INTO `ajudasj`.`materia` (nome) value ("português");
INSERT INTO `ajudasj`.`materia` (nome) value ("python");
INSERT INTO `ajudasj`.`materia` (nome) value ("desenvolvimento web");
INSERT INTO `ajudasj`.`materia` (nome) value ("Redação");
INSERT INTO `ajudasj`.`materia` (nome) value ("introdução a engenharia");
INSERT INTO `ajudasj`.`materia` (nome) value ("indtrodução a moda");
INSERT INTO `ajudasj`.`materia` (nome) value ("filosofia");
INSERT INTO `ajudasj`.`materia` (nome) value ("historia");
INSERT INTO `ajudasj`.`materia` (nome) value ("sociologia");


select * from `ajudasj`.`usuario`;
select * from `ajudasj`.`materia`;
select * from `ajudasj`.`solicitacao`;



INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Luan", "luan@aluno.saojudas.br","São Paulo","São Paulo", "719178",  1, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Maria Eduarda", "maria.eduarda@aluno.saojudas.br", "São Paulo","São Paulo", "125756", 2, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Giovana", "giovana@aluno.saojudas.br","São Paulo","São Paulo", "546777820", 3, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Marina", "marina@aluno.saojudas.br","São Paulo","São Paulo", "11112346", 4, "1234", "icone-usuario.png") ;
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("João", "joao@aluno.saojudas.br","São Paulo","São Paulo", "7825888", 5, "1234", "icone-usuario.png" );
		
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Zacarias", "zacarias@aluno.saojudas.br","São Paulo","São Paulo", "207688",  6, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Isabela", "isabelaa@aluno.saojudas.br", "São Paulo","São Paulo", "207681", 7, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Gabriel", "gabriel@aluno.saojudas.br","São Paulo","São Paulo", "207691", 8, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto, adm) values
								("Marcos", "marcossantos.8546@aluno.saojudas.br","São Paulo","São Paulo", "207991",  1, "1234", "icone-usuario.png", "s");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Vitor Dantas", "vitordantas@aluno.saojudas.br", "São Paulo","São Paulo", "2015997", 2, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Vitor Talge", "vitortalge@aluno.saojudas.br","São Paulo","São Paulo", "2058879", 2, "1234", "icone-usuario.png");
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Pedro", "pedro@aluno.saojudas.br","São Paulo","São Paulo", "144666", 4, "1234", "icone-usuario.png") ;
INSERT INTO `ajudasj`.`usuario` (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
								("Matheus", "matheus@aluno.saojudas.br","São Paulo","São Paulo", "789774", 4, "1234", "icone-usuario.png" );
            		





            
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("João", "joao@aluno.saojudas.br","São Paulo","São Paulo", "180034",  10, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Ruan", "ruan@aluno.saojudas.br","São Paulo","São Paulo", "855263",  4, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Paulo", "paulo@aluno.saojudas.br","São Paulo","São Paulo", "739204",  10, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Diego", "diego@aluno.saojudas.br","São Paulo","São Paulo", "818283",  10, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Luana", "luana@aluno.saojudas.br","São Paulo","São Paulo", "717273",  4, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Leonardo", "leonardo@aluno.saojudas.br","São Paulo","São Paulo", "616263",  10, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Henrique", "henrique@aluno.saojudas.br","São Paulo","São Paulo", "515253",  10, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Ronaldo", "ronaldo@aluno.saojudas.br","São Paulo","São Paulo", "414243",  4, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Rodrigo", "rodrigo@aluno.saojudas.br","São Paulo","São Paulo", "313233",  4, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Valentina", "valentina@aluno.saojudas.br","São Paulo","São Paulo", "212223",  4, "1234", "icone-usuario.png");
                                
                                INSERT INTO ajudasj.usuario (nome, email, cidade, estado, ra, codMateriaBoa, senha, foto) values
                                ("Natan", "natan@aluno.saojudas.br","São Paulo","São Paulo", "111213",  4, "1234", "icone-usuario.png");

 ## INSERCAO DE NOTICIAS
INSERT INTO noticia (descricao, titulo, texto) VALUES
("Os estudantes vão atuar junto ao Sistema Único de Saúde (SUS). Serão chamados alunos dos 5° e 6° ano dos cursos de Medicina e do último ano dos cursos de graduação em Enfermagem, Fisioterapia e Farmácia, devidamente matriculados em instituições de ensino superior que integram o sistema federal de ensino.",

"Comunicado – estudantes que vão atuar junto ao SUS",

"Considerando o EDITAL Nº 4, DE 31 DE MARÇO DE 2020 e publicado em 1°/4/2020, em que estados, o Distrito Federal, os municípios e o estabelecimentos de saúde filantrópicos são chamados a aderirem a ação estratégica “Brasil conta comigo”, bem como conclama alunos dos cursos de graduação em Medicina, Enfermagem, Farmácia e Fisioterapia para se cadastrarem visando participação na mencionada ação estratégica em caráter excepcional e temporário, entendemos relevante contribuir com alguns esclarecimentos:<br><br>

Os estudantes vão atuar junto ao Sistema Único de Saúde (SUS). Serão chamados alunos dos 5° e 6° ano dos cursos de Medicina e do último ano dos cursos de graduação em Enfermagem, Fisioterapia e Farmácia, devidamente matriculados em instituições de ensino superior que integram o sistema federal de ensino.<br><br>

Cadastro

Para participar da iniciativa, o aluno deverá acessar o sítio http://sgtes.unasus.gov.br/apoiasus/ e preencher a “Ficha do Aluno”.  Ao ser convocado, por meio de correspondência eletrônica, o aluno deverá se apresentar em até 48 horas no estabelecimento de saúde indicado.<br><br>

Vale ressaltar ainda que, pelo fato do programa Federal está em fase de construção e em caráter de urgência, pode ocorrer do cadastro das Instituições não estarem disponíveis de forma completa.<br><br>

Para mais informações, envie um e-mail para: sgtes@unasus.gov.br ou entre em contato pelo telefone do Disque Saúde 136.<br><br>
");

INSERT INTO noticia (descricao, titulo, texto) VALUES
("Luan Felix De Morais, de 19 anos, foi demitido da loja onde trabalhava, em São Paulo, por conta da pandemia do coronavírus. Seu pai e sua mãe que tinham um pequeno negócio também tiveram que fechar as portas em meio ao isolamento social.",

"São Judas contribui para que estudantes mantenham o sonho do ensino superior por meio da tecnologia e soluções financeiras",

"Instituição prioriza acesso à educação de qualidade e bem-estar de seus estudantes e colaboradores<br><br>

Em abril de 2020 o estudante de engenharia civil, Luan Felix De Morais, de 19 anos, foi demitido da loja onde trabalhava, em São Paulo, por conta da pandemia do coronavírus. Seu pai e sua mãe que tinham um pequeno negócio na área da construção civil também tiveram que fechar as portas em meio ao isolamento social. Luan, que é o filho do meio, mas que tem responsabilidades de filho mais velho, pois o primogênito da família tem síndrome de down, se viu em um dilema ao ter que escolher entre ajudar a pagar as contas de casa ou continuar na Universidade. Ele disse: Estava pensando em fazer um empréstimo no banco, mas como não sei como será o dia de amanhã, descartei essa possibilidade. Foi quando recebi um SMS da São Judas dizendo que a Universidade estava oferecendo um Seguro Estudantil. Entrei em contato e vi que tinha o perfil necessário para obter o benefício. <br><br>

O estudante, que está no sexto semestre e mora na zona leste de São Paulo, encontrou na São Judas tudo que precisava para transformar a sua vida e da sua família: fácil acesso, estrutura física de ponta, ambiente acolhedor, docentes renomados e conhecimento. Seus pais só tiveram a oportunidade de concluir o ensino fundamental e investiram tudo que podiam em sua educação, por isso o jovem se vê na obrigação de não desistir. “Quando entrei na Universidade trabalhava de domingo a domingo, mas eu sabia que no futuro eu encontraria meu lugar no mundo, pois a educação abre portas que gente não imagina. Por isso, nunca pensei em desistir de estudar. Além disso, me tornei referência para o meu irmão mais novo e para os meus pais. E vou além, acabei me tornando referência para os amigos dos amigos, dos parentes e da comunidade, pois eu fui um dos primeiros e ter a oportunidade de entrar na faculdade”, destaca Luan Felix De Morais. <br><br>

A Universidade São Judas, que integra o Ecossistema Ânima, coloca os estudantes no centro de todas as suas decisões e tem direcionado todos os esforços para superar esse momento de incertezas em meio a pandemia, com o objetivo de dar continuidade a sua missão de oferecer educação de qualidade para todos os brasileiros. Para isso, a companhia realizou a contratação de um Seguro Estudantil, que passou a valer no dia 1º de abril, em benefício dos estudantes, independente da modalidade de ensino e sem qualquer custo. Esta opção visa garantir o pagamento de até três meses de mensalidades cobertas pela seguradora, na hipótese de Perda de Renda decorrente da perda involuntária de emprego ou incapacidade física total temporária por doença ou acidente do responsável financeiro, caso sejam atendidas as regras de cobertura e condições do seguro. <br><br>

Além disso, a instituição apresentou uma nova modalidade do financiamento PRAVALER, empresa parceira da Ânima, destinada a estudantes que desejam financiar as mensalidades dos meses de abril, maio e junho, diluindo parte do valor ao longo do segundo semestre. O estudante que já está inadimplente também pode contar com um programa, que consiste no parcelamento da dívida em até seis vezes no boleto bancário ou 12 vezes no cartão de crédito, sem juros. “Para seguir com a nossa missão de oferecer educação de qualidade aos brasileiros e de ajudar estudantes que acreditam no valor da educação a não interromperem o seu sonho, estamos investindo cada vez mais em soluções digitais e financeiras. Agora, mais do que nunca, estamos priorizando ações que beneficiem nossos estudantes, docentes e colaboradores, pois sabemos que os impactos socioeconômicos decorrentes da pandemia serão severos”, destaca Luciano Romano, diretor de marketing da São Judas. <br><br>

A organização continua trabalhando, junto com a equipe docente, para seguir com as atividades acadêmicas e para reduzir os impactos sociais e emocionais de toda a comunidade. Mantendo, também, a cadeia de atividades e atuações, para continuar sendo tomadora de todos os serviços contratados, o que inclui professores, colaboradores e outros profissionais. Todos os recursos para atender os estudantes foram mantidos com a utilização intensiva da tecnologia, com aulas ao vivo, não tendo diminuição de custos, mas sim um incremento decorrente do uso de alta tecnologia e da nova logística. As atividades por meio de recursos digitais não fazem com que demais custos e investimentos sejam descartados ou perdidos, e o cenário oferecido não se confunde com o denominado Ensino a Distância.<br><br>
");

INSERT INTO noticia (descricao, titulo, texto) VALUES
("A Assembleia Legislativa de São Paulo (Alesp) aprovou na madrugada desta sexta-feira (22) a Lei 351/2020 que propõe a antecipação do feriado de 9 de julho para segunda-feira (25 de maio) em todas as cidades do Estado de São Paulo, como parte de medidas governamentais para contenção do COVID-19.",

"Antecipação de feriados",

"<h3>Atualização – 23/05/2020 – 14h35</h3> 
A Assembleia Legislativa de São Paulo (Alesp) aprovou na madrugada desta sexta-feira (22) a Lei 351/2020 que propõe a antecipação do feriado de 9 de julho para segunda-feira (25 de maio) em todas as cidades do Estado de São Paulo, como parte de medidas governamentais para contenção do COVID-19.<br><br>

A Universidade São Judas entende que toda medida que visa preservar a vida dos cidadãos é válida e, por meio de seu Comitê de Prevenção e Cuidados da Covid-19, segue todas as recomendações dos órgãos de saúde dos governos federais, estaduais e municipais, tendo como foco principal o cuidado com toda nossa comunidade acadêmica. Já em março optamos por suspender nossas atividades presenciais, convertendo-as imediatamente para o ambiente digital, de modo que nossas aulas transcorrem, normalmente, na modalidade síncrona.<br><br>

No caso específico do decreto que estabelece a antecipação do feriado, entendemos que esta medida não traria benefícios em termos da segurança de nossa comunidade acadêmica, uma vez que nossos alunos, professores e colaboradores estão realizando suas atividades remotamente. É importante ressaltar que a alteração de cronograma neste momento do semestre impactaria o calendário de atividades já previsto para esta semana.<br><br>

Comunicamos, portanto, que está mantida a atividade acadêmica no dia 25 de maio (data designada como feriado pela Lei 351/2020), visando garantir a continuidade das aulas, sem a necessidade de remanejamento do plano de aulas. O feriado referido no decreto, portanto, será mantido em sua data original, conforme já estabelecido em nosso calendário acadêmico.<br><br>

Vale destacar ainda, que a referida medida encontra amparo tanto no art. 9º da Lei 605/49, quanto na Súmula 146 do Tribunal Superior do Trabalho. Isto porque, os referidos dispositivos estabelecem a possibilidade do colaborador desfrutar a folga, em datas diversas das que foram designadas como feriado. Neste sentido, todos em nossa comunidade acadêmica (professores, estudantes e colaboradores) terão o repouso garantido para a data de 9 de julho.<br><br>

Reforçamos que, caso haja futuras recomendações específicas por parte das autoridades de Saúde ou outras instâncias governamentais, também seguiremos os protocolos necessários de cuidado e prevenção, avisando a comunidade acadêmica por meio de nossos canais de comunicação e atendimento.<br><br>

<h3>19/05/2020 – 13h42 </h3>
No dia 18 de maio de 2020, como parte de medidas governamentais para contenção do COVID-19, a Prefeitura de São Paulo sancionou a Lei no. 17.341 e o Decreto no. 59.450, que estipulam a antecipação de alguns feriados municipais na cidade de São Paulo. Trata-se de uma medida que visa diminuir a circulação dos cidadãos pela cidade, a fim de que o índice de isolamento social aproxime-se mais dos números registrados em finais de semana.<br><br>

A Universidade São Judas entende que toda medida que visa preservar a vida dos cidadãos é válida e, por meio de seu Comitê de Prevenção e Cuidados da Covid-19, segue todas as recomendações dos órgãos de saúde dos governos federais, estaduais e municipais, tendo como foco principal o cuidado com toda nossa comunidade acadêmica.  Já em março optamos por suspender nossas atividades presenciais, convertendo-as imediatamente para o ambiente digital, de modo que nossas aulas transcorrem, normalmente, na modalidade síncrona.<br><br>

No caso específico do decreto que estabelece a antecipação de feriados, entendemos que esta medida não traria benefícios em termos da segurança de nossa comunidade acadêmica, uma vez que nossos alunos, professores e colaboradores estão realizando suas atividades remotamente. É importante ressaltar que a alteração de cronograma neste momento do semestre impactaria o calendário de atividades já previsto para esta semana.<br><br>

Comunicamos, portanto, que estão mantidas as atividades acadêmicas entre os dias 20 e 21 de maio (datas designadas como feriado pelo Decreto 59.450/2.020) e 22, estabelecido como ponto facultativo, visando garantir a continuidade das aulas, sem a necessidade de remanejamento do plano de aulas. Os feriados referidos no decreto, portanto, serão mantidos em suas datas originais, conforme já estabelecido em nosso calendário acadêmico.<br><br>

Vale destacar ainda, que a referida medida encontra amparo tanto no art. 9º da Lei 605/49, quanto na Súmula 146 do Tribunal Superior do Trabalho. Isto porque, os referidos dispositivos estabelecem a possibilidade do colaborador desfrutar a folga, em datas diversas das que foram designadas como feriado. Neste sentido, todos em nossa comunidade acadêmica (professores, estudantes e colaboradores) terão o repouso garantido para as datas de 11 e 12 de junho.<br><br>

Reforçamos que, caso haja futuras recomendações específicas por parte das autoridades de Saúde ou outras instâncias governamentais, também seguiremos os protocolos necessários de cuidado e prevenção, avisando a comunidade acadêmica por meio de nossos canais de comunicação e atendimento.<br><br>
");

INSERT INTO noticia (descricao, titulo, texto) VALUES
("O Jornal Expressão encerra o semestre com sua terceira edição de 2020. Desta vez os alunos do curso de Jornalismo do campus Mooca dedicam o Especial do jornal aos trabalhadores dos serviços essenciais nesse período da pandemia.",

"Na última edição do semestre, Jornal Expressão exalta trabalhadores dos serviços essenciais",

"O Jornal Expressão encerra o semestre com sua terceira edição de 2020. Desta vez os alunos do curso de Jornalismo do campus Mooca dedicam o Especial do jornal aos trabalhadores dos serviços essenciais nesse período da pandemia. <br><br>

As reportagens contam um pouco do dia a dia de uma enfermeira, um técnico de raio-x, um agente funerário, uma comissária de bordo, dois entregadores de aplicativo, um motorista de Uber, um policial, uma operadora de caixa de supermercado, um jornalista e um motorista de ônibus. Esta é uma forma de homenagem dos estudantes e professores do Expressão aos profissionais que têm se arriscado em prol da sociedade. <br><br>

Na mesma edição, há uma entrevista com a jornalista Janaina César, que atua como correspondente na Itália, sobre os bastidores da Covid-19 naquele país, que foi o segundo epicentro da doença, e muitas outras matérias interessantes para o leitor se informar e se distrair neste momento de isolamento social. <br><br>

O Expressão é um veículo destinado à prática jornalística pelos estudantes de semestres avançados do curso. Nasceu como um produto editorial vinculado a disciplinas de jornalismo impresso e, nos últimos anos, ganhou destaque ao se tornar um dos espaços de estágio supervisionado dos alunos. Toda a produção, da definição de pautas até a diagramação, o fechamento e a distribuição do jornal na web e nos campi, é de responsabilidade dos alunos, com a supervisão de uma equipe de professores especialistas em texto, edição, fotografia e design. <br><br>

Em 2020, serão seis edições do Expressão, elaboradas por estudantes de Jornalismo de sétimo e oitavo semestres dos campi Mooca e Butantã. <br><br>

Para acessar todas as edições do Expressão, acesse a conta do jornal no Issuu ou veja a página dele no Facebook. <br><br>
");

INSERT INTO noticia (descricao, titulo, texto) VALUES
("A Universidade São Judas realizará a tradicional Expo São Judas, entre os dias 8 e 10 de junho, em ambiente virtual por conta da pandemia do coronavírus. O evento tem como objetivo apresentar os projetos, trabalhos de conclusão de curso, entre outros materiais, desenvolvidos pelos alunos no último semestre.",

"Expo São Judas será realizada em ambiente virtual",

"Estudantes apresentam projetos para solucionar problemas comuns e decorrentes da pandemia do coronavírus <br><br>

A Universidade São Judas realizará a tradicional Expo São Judas, entre os dias 8 e 10 de junho, em ambiente virtual por conta da pandemia do coronavírus. O evento tem como objetivo apresentar os projetos, trabalhos de conclusão de curso, entre outros materiais, desenvolvidos pelos alunos no último semestre. Essa edição será ainda mais especial, pois, apesar do isolamento social, a exibição digital possibilitará aos  pais, estudantes, docentes e comunidade, que nunca tiveram a oportunidade de participar, de estarem presentes virtualmente para prestigiar e conhecer um pouco mais sobre a metodologia da Instituição e sobre os projetos desenvolvidos pelos alunos em meio ao isolamento social e com o uso intensivo da tecnologia.<br><br>

“O isolamento social foi uma oportunidade para pensarmos neste novo formato de apresentações online, que oferece a oportunidade de todos assistirem de forma simultânea os trabalhos, ampliando assim a sala de aula e conectando diversos saberes. É também uma oportunidade para apresentarmos em lives gerais, os trabalhos desenvolvidos pelos alunos no contexto da pandemia. Temos trabalhos incríveis conduzidos por nossos estudantes e vamos compartilhar estas experiências com a sociedade”, destaca Maurília de Cássia Veloso Soares, diretora da Universidade São Judas campus Mooca.<br><br>

Os estudantes apresentarão diversos trabalhos, como: uma interface de captação de dados de movimentação de pessoas dentro do transporte público, para controle de lotação em tempo real, transmitindo ao usuário final por meio de um aplicativo para smartphone; prótese para cachorros e gatos de baixo custo, que usa recursos como impressão 3D para baratear o projeto; intervenção social de Lettering em uma escola pública na região Butantã Zona Oeste de São Paulo; desenvolvimento por meio de softwares de um respirador automático de baixo custo com possibilidade de fabricação em larga escala para auxiliar no tratamento do COVID-19, entre outros. Saiba mais no site: https://www.usjt.br/exposaojudas/ .<br><br>

A aluna de Engenharia de Controle e Automação, Marilia Alves Santos, em conjunto com o seu grupos, por exemplo, desenvolveu um aplicativo informativo sobre o covid-19, que por meio de dados inseridos pelo usuário recomenda a necessidade de procurar um profissional de saúde ou de ficar em casa, tendo em vista a chance de contaminação. “Infelizmente não conseguiremos apresentar o nosso trabalho pessoalmente, mas fico feliz que a São Judas tenha se adaptado oferecendo uma edição online. Dessa forma, enxergamos novos horizontes e encontramos novas formas para trabalhar e desenvolver um projeto que contribua para a sociedade em meio a pandemia”, destaca a estudante.<br><br>

");

INSERT INTO noticia (descricao, titulo, texto) VALUES
("Estudantes e educadores da Universidade SãoJudas, que integra o Ecossistema Ânima,se reuniram para desenvolver uma série de materiais educativos para orientar e conscientizar a população leiga e profissionais da saúde sobre a importância de adotar medida de prevenção e o uso de equipamentos de proteção individuais em meio a pandemia do coronavírus",

"São Judas desenvolve material educativo em tempos de pandemia",

"A disseminação do conhecimento pode salvar vidas e contribuir para o desenvolvimento social

Estudantes e educadores da Universidade São Judas, que integra o Ecossistema Ânima, se reuniram para desenvolver uma série de materiais educativos para orientar e conscientizar a população leiga e profissionais da saúde sobre a importância de adotar medidas de prevenção e o uso de equipamentos de proteção individuais em meio a pandemia do coronavírus. Os conteúdos estão disponíveis de forma gratuita por meio de Ebook, histórias em quadrinhos, site, vídeos, WhatsApp e redes sociais relacionadas a cada tema.<br><br>

Os materiais abordarão diversos assuntos, como: critérios para sair e chegar em casa, higienização das mãos, covid-19 em crianças, saúde mental no isolamento, cuidados com familiar contaminado dentro de casa, paramentação de profissionais, limpeza e armazenamento do EPI após uso e seu descarte, lesão por pressão causada pelo uso de EPI, saúde mental dos profissionais de saúde, dados do número de óbitos e afastamentos por coronavírus dos profissionais de saúde, entre outros.<br><br>

“Diante do contexto em que estamos vivendo, nós, professores, resolvemos desenvolver dois projetos de extensão, cujos objetivos são de conscientizar a população leiga e os profissionais de saúde. Neste sentido, utilizamos como estratégia a produção e divulgação de materiais educativos e de autoria dos alunos das diversas áreas do conhecimento. Além disso, poder trabalhar em parceria com professores e com alunos de outras instituições da Ânima está sendo uma experiência inovadora. Estamos encantados com o empenho e a qualidade dos materiais desenvolvidos pelos alunos”, destaca Sara Rodrigues Rosado, professora de Enfermagem da São Judas.<br><br>

A ação, que começou com a iniciativa dos alunos e professores da São Judas, ganhou força e mobilizou integrantes da UniBH, Minas Gerais, e Unisociesc, Santa Catariana, que também fazem parte da Ânima Educação. Com isso, 14 educadores da enfermagem e 154 estudantes de diversas áreas das três instituições se dividiram em duas frentes: uma para desenvolver conteúdos direcionados a pessoas leigas e que tem dificuldades para entender o contexto atual e outra para profissionais que estão na linha de frente no combate ao COVID-19.<br><br>

A aluna do curso de Enfermagem, Geovana Custodio da Silva, por exemplo, está produzindo material sobre as lesões por pressões causadas nos profissionais de saúde pelo uso dos equipamentos a longo prazo. “Pela primeira vez participo de um projeto de extensão e fiquei muito interessada pelo tema e proposta, creio que essa ação é rica em conhecimentos e informações. Eu como aluna da área da saúde, vejo nessa oportunidade uma forma de assegurar o máximo de conhecimento que irá, com certeza, contribuir para da minha formação profissional”, destaca Geovana.<br><br>

");
      INSERT INTO solicitacao (status, horaInicio, horaFinal, assunto, codAlunoEnsina, emailEnsina, codAlunoAprende, emailAprende, codMateria, local, data)
values("concluida", "19:00", "20:00","A1", "4", "marcossantos.8546@aluno.saojudas.br", "3", "gabriel@aluno.saojudas.br", "3", "São Judas - Mooca", "25/11/2020");
INSERT INTO solicitacao (status, horaInicio, horaFinal, assunto, codAlunoEnsina, emailEnsina, codAlunoAprende, emailAprende, codMateria, local, data)
values("concluida", "12:00", "13:00","D3", "5", "marcossantos.8546@aluno.saojudas.br", "1", "joao@aluno.saojudas.br", "4", "São Judas - Paulista", "30/04/2020");
INSERT INTO solicitacao (status, horaInicio, horaFinal, assunto, codAlunoEnsina, emailEnsina, codAlunoAprende, emailAprende, codMateria, local, data)
values("pendente", "15:00", "16:30","A2", "7", "gabriel@aluno.saojudas.br", "9", "marcossantos.8546@aluno.saojudas.br", "12", "São Judas - Paulista", "12/06/2020");

INSERT INTO solicitacao (status, horaInicio, horaFinal, assunto, codAlunoEnsina, emailEnsina, codAlunoAprende, emailAprende, codMateria, local, data)
values("aceita", "19:00", "20:00","A1", "9", "marcossantos.8546@aluno.saojudas.br", "8", "gabriel@aluno.saojudas.br", "3", "São Judas - Mooca", "25/03/2020");
INSERT INTO solicitacao (status, horaInicio, horaFinal, assunto, codAlunoEnsina, emailEnsina, codAlunoAprende, emailAprende, codMateria, local, data)
values("aceita", "12:00", "13:00","D3", "9", "marcossantos.8546@aluno.saojudas.br", "5", "joao@aluno.saojudas.br", "4", "São Judas - Paulista", "30/05/2020");
INSERT INTO solicitacao (status, horaInicio, horaFinal, assunto, codAlunoEnsina, emailEnsina, codAlunoAprende, emailAprende, codMateria, local, data)
values("concluida", "15:00", "16:30","A2", "8", "gabriel@aluno.saojudas.br", "9", "marcossantos.8546@aluno.saojudas.br", "2", "São Judas - Paulista", "12/06/2020");


select * from `ajudasj`.`usuario`;
select * from `ajudasj`.`solicitacao`;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



