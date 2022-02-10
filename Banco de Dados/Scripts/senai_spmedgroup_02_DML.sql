USE SP_MEDICAL_GROUP;
GO

INSERT INTO tipoUsuario (tipoUsuario)
VALUES('Administrador'),('M�dico'),('Cliente');
GO

INSERT INTO usuario (idTipoUsuario, email, senha)
VALUES
(1, 'fernandostrada@gmail.com', 'fernandostrada123'),
(3, 'ligia@gmail.com', 'ligia123'),
(3, 'alexandre@gmail.com', 'alexandre123'),
(3, 'fernando@gmail.com', 'fernando123'),
(3, 'henrique@gmail.com', 'henrique123'),
(3, 'joao@hotmail.com', 'joao123'),
(3, 'bruno@gmail.com', 'bruno123'),
(3, 'mariana@outlook.com', 'mariana123'),
(2, 'ricardo.lemos@spmedicalgroup.com.br', 'ricardolemos123'),
(2, 'roberto.possarle@spmedicalgroup.com.br', 'robertopossarle123'),
(2, 'helena.souza@spmedicalgroup.com.br', 'helenasouza123');
GO

INSERT INTO cliente (idUsuario, nomeCliente, dataNascCliente, telefoneCliente, rgCliente, cpfCliente, enderecoCliente) 
VALUES
(2, 'Ligia', '13/10/1983', '11 3456-7654', '43522543-5', '94839859000', 'Rua Estado de Israel 240, S�o Paulo, Estado de S�o Paulo, 04022-000'),
(3, 'Alexandre', '23/7/2001', '11 98765-6543', '32654345-7', '73556944057', 'Av. Paulista, 1578 - Bela Vista, S�o Paulo - SP, 01310-200'),
(4, 'Fernando', '10/10/1978', '11 97208-4453', '54636525-3', '16839338002', 'Av. Ibirapuera - Indian�polis, 2927,  S�o Paulo - SP, 04029-200'),
(5, 'Henrique', '13/10/1985', '11 3456-6543', '54366362-5', '14332654765', 'R. Vit�ria, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
(6, 'Jo�o', '27/8/1975', '11 7656-6377', '53254444-1', '91305348010', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeir�o Pires - SP, 09405-380'),
(7, 'Bruno', '21/3/1972', '11 95436-8769', '54566266-7', '79799299004', 'Alameda dos Arapan�s, 945 - Indian�polis, S�o Paulo - SP, 04524-001'),
(8, 'Mariana', '05/03/2018', null, '54566266-8', '13771913039', 'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');
GO

INSERT INTO especialidadeMedico (nomeEspecialidade, descricaoEspecialidade)
VALUES
('Acupuntura', 'Terapia que consiste na aplica��o de agulhas em pontos espec�ficos do corpo para tratar doen�as e para promover sa�de.'),
('Anestesiologia', 'Proporciona aus�ncia ou al�vio da dor ao paciente ao realizar procedimentos m�dicos, como cirurgias.'),
('Angiologia', 'Estudo, diagn�stico e tratamento cl�nico das doen�as vasculares.'),
('Cardiologia', 'Cardiologia � a especialidade m�dica que se ocupa do diagn�stico e tratamento das doen�as que acometem o cora��o bem como os outros componentes do sistema circulat�rio. O m�dico especialista nessa �rea � o cardiologista. Um dos exames mais comumente realizados, feito por rotina, durante uma consulta de cardiologia � o eletrocardiograma, que dever� ser interpretado e laudado pelo cardiologista.'),
('Cirurgia Cardiovascular', 'A cirurgia cardiovascular � realizada para o tratamento de doen�as do cora��o, como as cardiopatias cong�nitas, doen�as das art�rias coronarianas, da aorta e seus ramos, das v�lvulas card�acas, da fibrila��o atrial (arritmia) e insufici�ncia card�aca.'),
('Cirurgia da M�o', 'Cirurgia da m�o � uma especialidade m�dica que se ocupa da preven��o, diagn�stico, tratamento e reabilita��o das patologias que acometem as m�os.'),
('Cirurgia do aparelho digestivo', 'A cirurgia do aparelho digestivo � uma especialidade m�dica que cuida do sistema digestivo, o que inclui es�fago, est�mago, ves�cula biliar, p�ncreas, f�gado e toda a extens�o dos intestinos al�m do c�lon, reto e �nus.'),
('Cirurgia geral', 'Cirurgia geral � a especialidade m�dica cuja �rea de atua��o compreende: Cirurgia Abdominal, Cirurgia videolaparosc�pica e Cirurgia do trauma. Esta especialidade m�dica ocupa-se do estudo dos mecanismo fisiopatol�gicos, diagn�stico e tratamento de enfermidades pass�veis de abordagem por procedimentos cir�rgicos.'),
('Cirurgia pedi�trica', 'A Cirurgia Pedi�trica � a especialidade m�dica respons�vel pelo tratamento cir�rgico de doen�as cong�nitas ou adquiridas, desde o per�odo neonatal at� o fim da puberdade.'),
('Cirurgia pl�stica', 'A cirurgia pl�stica � uma das mais de 50 especialidades m�dicas reconhecidas pelo Conselho Federal de Medicina e pela Associa��o M�dica Brasileira.'),
('Cirurgia tor�cica', 'A cirurgia tor�cica � uma especialidade m�dica que trata das interven��es no t�rax (tecidos, ossos e m�sculos) e no sistema respirat�rio (traqu�ia, br�nquios, pulm�es, pleuras e mediastino), para tratar diversos tipos de enfermidades, como o c�ncer de pulm�o.'),
('Cirurgia vascular', 'A cirurgia vascular � um dos ramos da medicina em que s�o tratados os vasos sangu�neos � sistema linf�tico, art�rias e veias.'),
('Dermatologia', 'Dermatologia � a especialidade m�dica que se ocupa do diagn�stico e tratamento cl�nico-cir�rgico das enfermidades relacionados � pele e aos anexos cut�neos (unhas, pelos, mucosas, cabelos). Dentro da dermatologia, existe a dermatovenerologia, especialidade que tem importante atua��o no contexto das infec��es sexualmente transmiss�veis.'),
('Radioterapia', '� um tratamento no qual se utilizam radia��es ionizantes (raio X, por exemplo) para destruir um tumor ou impedir que suas c�lulas aumentem. Estas radia��es n�o s�o vistas e durante a aplica��o o paciente n�o sente nada. A radioterapia pode ser usada em combina��o com a quimioterapia ou outros tratamentos.'),
('Urologia', 'A Urologia � uma especialidade m�dica dedicada ao estudo e tratamento de doen�as do aparelho urin�rio (rins, ureter e bexiga) de homens e mulheres e de enfermidades que acometem o aparelho genital masculino (pr�stata, test�culos e p�nis).'),
('Pediatria', 'Trata-se da especialidade m�dica dedicada a atender rec�m-nascidos, crian�as e adolescentes nos seus diversos aspectos, sejam eles preventivos ou curativos. O maior objetivo dessa especialidade � auxiliar a fam�lia no processo de estabelecimento da sa�de infantil.'),
('Psiquiatria', 'Psiquiatria � uma das especialidades da Medicina, e basicamente � respons�vel pelo diagn�stico e tratamento dos chamados Transtornos Mentais e de Comportamento, atuando com a preven��o, o diagn�stico, o tratamento e a reabilita��o dos diferentes modos de manifesta��es das doen�as mentais em geral. S�o exemplos destas: a depress�o, o transtorno bipolar, a esquizofrenia, a dem�ncia e os transtornos de ansiedade.');
GO

INSERT INTO clinica (enderecoClinica, horarioInicio, horarioFim, cnpj, nomeFantasia, razaoSocial)
VALUES
('Av. Bar�o Limeira, 532, S�o Paulo, SP', '08:00', '20:00', '86.400.902/0001-30', 'Clinica Possarle' , 'SP Medical Group')
GO

INSERT INTO medico (idUsuario, idEspecialidadeMedico, idClinica, crmMedico, nomeMedico)
VALUES 
(9, 2, 1, '54356-SP', 'Ricardo Lemos'),
(10, 17, 1,	'53452-SP',	'Roberto Possarle'),
(11, 16, 1,	'65463-SP',	'Helena Strada');
GO

INSERT INTO situacao (tipoSituacao)
VALUES 
('Agendada'),
('Realizada'),
('Cancelada');
GO

INSERT INTO consulta (idCliente, idMedico, idSituacao,	dataConsulta)
VALUES
(7,	3,	2,	'20/01/2020 15:00'),
(2,	2,	3,	'06/01/2020 10:00'),	
(3,	2,	2,	'07/02/2020 11:00'),	
(2,	2,	2,	'06/02/2018 10:00'),	
(4, 1,	3,	'07/02/2019 11:00'),	
(7,	3,	1,	'08/03/2020 15:00'),	
(4,	1,	1,	'09/03/2020 11:00');	
GO