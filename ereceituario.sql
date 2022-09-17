-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Out-2021 às 02:35
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ereceituario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cadastro_funcionario`
--

CREATE TABLE `tbl_cadastro_funcionario` (
  `id` int(11) NOT NULL,
  `nome_func` varchar(255) DEFAULT NULL,
  `cpf_func` varchar(255) DEFAULT NULL,
  `telefone_func` varchar(20) DEFAULT NULL,
  `endereco_func` varchar(255) DEFAULT NULL,
  `complemento_func` varchar(255) NOT NULL,
  `cep_func` varchar(11) DEFAULT NULL,
  `cidade_func` varchar(255) DEFAULT NULL,
  `estado_func` varchar(2) DEFAULT NULL,
  `bairro_func` varchar(255) DEFAULT NULL,
  `email_func` varchar(255) NOT NULL,
  `data_nasc_func` date DEFAULT NULL,
  `sexo_func` varchar(255) DEFAULT NULL,
  `especialidade_func` varchar(255) DEFAULT NULL,
  `crm_func` varchar(255) DEFAULT NULL,
  `val_crm_func` date DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_cadastro_funcionario`
--

INSERT INTO `tbl_cadastro_funcionario` (`id`, `nome_func`, `cpf_func`, `telefone_func`, `endereco_func`, `complemento_func`, `cep_func`, `cidade_func`, `estado_func`, `bairro_func`, `email_func`, `data_nasc_func`, `sexo_func`, `especialidade_func`, `crm_func`, `val_crm_func`, `usuario`, `senha`) VALUES
(1, 'Orla Wilkerson', '502.694.267-38', '(30) 8227-0514', 'Ap #231-1175 Sagittis Rd.', 'non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum', '42871-273', 'Belo Horizonte', 'SP', 'Santa Rita', 'vitae.velit.egestas@arcuvestibulum.co.uk', '0000-00-00', 'M', 'magna. Duis dignissim tempor arcu.', '3.657626478249198', '2021-10-02', 'Jaden Underwood', '8'),
(2, 'Ross Hogan', '8.38890406925', '(821) 391-7724', 'P.O. Box 652, 5592 Donec Avenue', 'pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', '41881-688', 'Itajaí', 'MA', 'Juazeiro do Norte', 'at.egestas.a@volutpatnunc.com', '0000-00-00', '', 'sociis natoque penatibus et magnis', '5.440173709190078', '0000-00-00', 'Stone Pearson', '8'),
(3, 'Mannix Arnold', '5.00997413631', '(550) 462-4401', 'Ap #480-4975 Diam. Road', 'nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit', '26987-858', 'Cametá', 'BA', 'Cametá', 'amet.consectetuer@integertincidunt.org', '0000-00-00', 'M', 'eu, eleifend nec, malesuada ut,', '3.252382353959961', '0000-00-00', 'Nomlanga Griffin', '7'),
(4, 'Laith Morris', '4.44414538057', '(283) 946-6567', '422-3934 Facilisis Rd.', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', '75706-783', 'Goiânia', 'MA', 'Juazeiro', 'id@ultriciessem.net', '0000-00-00', 'M', 'massa rutrum magna. Cras convallis', '3.675866289050922', '0000-00-00', 'Bradley Mcintosh', '9'),
(5, 'Shellie Estrada', '8.81039529576', '(322) 767-6242', '1455 Arcu. Street', 'semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac', '92742-465', 'Goiânia', 'MG', 'Rio de Janeiro', 'morbi.quis@augueeu.com', '0000-00-00', 'M', 'Vestibulum ante ipsum primis in', '5.167084393242735', '0000-00-00', 'Ulric Witt', '10'),
(6, 'Logan Avila', '0.26066175787', '(411) 114-5248', '379-2668 Diam Rd.', 'et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,', '88310-810', 'Cabo de Santo Agostinho', 'RS', 'Londrina', 'in.lorem@necenim.ca', '0000-00-00', 'M', 'est, mollis non, cursus non,', '2.478658367820562', '0000-00-00', 'Elizabeth Cain', '7'),
(7, 'Boris Beach', '1.55018248690', '(266) 134-2568', 'Ap #192-3480 Mauris Av.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu', '76777-132', 'Osasco', 'RS', 'Recife', 'imperdiet.non.vestibulum@purusnullam.org', '0000-00-00', 'M', 'ac tellus. Suspendisse sed dolor.', '3.281775317263112', '0000-00-00', 'Dillon Williams', '8'),
(8, 'Rosalyn Riley', '1.38422223074', '(115) 487-3473', 'Ap #576-9912 Sit St.', 'Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', '58296-378', 'Diadema', 'MG', 'Itajaí', 'cursus@nibhaliquam.org', '0000-00-00', 'M', 'euismod mauris eu elit. Nulla', '0.460800712518783', '0000-00-00', 'Galena Stokes', '8'),
(9, 'Rafael Jefferson', '3.96323760172', '(714) 204-3138', '519-7718 Euismod Road', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non,', '74776-760', 'Canoas', 'PE', 'João Pessoa', 'phasellus.libero@eu.org', '0000-00-00', 'M', 'Mauris nulla. Integer urna. Vivamus', '2.565793708334485', '0000-00-00', 'Jasmine Goodman', '5'),
(10, 'Brock Christian', '5.42178015482', '(215) 131-4761', '2656 Est. Avenue', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', '68134-816', 'Caruaru', 'GO', 'Ipatinga', 'sodales.purus@facilisised.edu', '0000-00-00', 'M', 'litora torquent per conubia nostra,', '5.031982934014970', '0000-00-00', 'Eleanor Francis', '9'),
(11, 'Cadman Gentry', '3.20729128608', '(378) 780-8151', '863-7682 Enim St.', 'dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum', '75737-363', 'Cajazeiras', 'PA', 'Fortaleza', 'cum.sociis@pede.com', '0000-00-00', 'M', 'amet, faucibus ut, nulla. Cras', '6.019426074819382', '0000-00-00', 'Garrison Davis', '5'),
(12, 'Odysseus Wiley', '7.62074895567', '(818) 975-5134', 'P.O. Box 876, 5226 Ipsum Avenue', 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,', '21498-258', 'Chapecó', 'PB', 'Campinas', 'mauris.nulla.integer@gravidamolestie.edu', '0000-00-00', 'M', 'eu sem. Pellentesque ut ipsum', '5.015354805012509', '0000-00-00', 'Justina Fuentes', '9'),
(13, 'Gage Bullock', '5.58704131248', '(514) 314-4770', '398-4600 Cursus Rd.', 'commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.', '88844-665', 'Campina Grande', 'PR', 'Piracicaba', 'eu.odio@felis.net', '0000-00-00', 'M', 'enim. Curabitur massa. Vestibulum accumsan', '5.591925900743775', '0000-00-00', 'Macaulay Maynard', '6'),
(14, 'Luke Strickland', '5.34517720231', '(232) 668-8980', '743-7739 Rhoncus Avenue', 'erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam', '91791-302', 'Parauapebas', 'PB', 'Caucaia', 'ultricies@posuerecubilia.co.uk', '0000-00-00', 'M', 'pretium et, rutrum non, hendrerit', '3.367855424611916', '0000-00-00', 'Lucy Rhodes', '9'),
(15, 'Jerome Cook', '5.07599398156', '(878) 648-6847', 'Ap #330-6934 Lectus Ave', 'Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin', '62235-886', 'Uberaba', 'PE', 'Joinville', 'auctor.velit@pharetrafelis.edu', '0000-00-00', '', 'ligula eu enim. Etiam imperdiet', '4.020901248054235', '0000-00-00', 'Chaney Smith', '5'),
(16, 'Kirestin Garrett', '5.05425877636', '(531) 651-3401', '244-3347 Sapien St.', 'Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat', '66885-216', 'Crato', 'RJ', 'Camaçari', 'pede.ac@nullaintegerurna.org', '0000-00-00', 'M', 'pellentesque, tellus sem mollis dui,', '5.429408635876683', '0000-00-00', 'Barrett Martin', '9'),
(17, 'Thor Baird', '11.72900976790', '(384) 822-7566', '558-8150 Consectetuer Avenue', 'ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci', '83694-418', 'Recife', 'MG', 'Santa Maria', 'lacinia.at.iaculis@consequat.co.uk', '0000-00-00', '', 'consequat dolor vitae dolor. Donec', '7.758947337115998', '0000-00-00', 'Pamela Alston', '7'),
(18, 'Pamela Wilkerson', '7.58059375124', '(524) 366-8570', 'Ap #601-7323 Aliquam St.', 'nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede', '38134641', 'Bayeux', 'MG', 'Salvador', 'egestas.lacinia.sed@diam.co.uk', '0000-00-00', '', 'dignissim pharetra. Nam ac nulla.', '4.112676598129048', '0000-00-00', 'Hollee Fisher', '8'),
(19, 'Richard Monroe', '9.21652425855', '(727) 504-8478', '924-181 Quisque Avenue', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum.', '42994-540', 'Divinópolis', 'SC', 'Imperatriz', 'amet.risus@ligulanullamfeugiat.edu', '0000-00-00', '', 'velit. Aliquam nisl. Nulla eu', '2.813253279023718', '0000-00-00', 'Joelle Padilla', '4'),
(20, 'Chaim Jacobson', '2.28692492138', '(751) 624-5355', '970-2141 Tristique Rd.', 'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et', '31296657', 'Paço do Lumiar', 'SP', 'Uberlândia', 'dolor.fusce.mi@erat.edu', '0000-00-00', '', 'quis, pede. Praesent eu dui.', '1.503065955787048', '0000-00-00', 'Kim Bush', '10'),
(21, 'Aurora Blevins', '0.78348834338', '(889) 238-9432', '587-153 Lacus. St.', 'Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.', '61348-506', 'Santa Luzia', 'SP', 'Santa Rita', 'feugiat.non.lobortis@mattisvelit.ca', '0000-00-00', 'M', 'a, magna. Lorem ipsum dolor', '6.741065375110580', '0000-00-00', 'Acton Patton', '9'),
(22, 'Hilel Acevedo', '5.87056989874', '(543) 767-8563', 'P.O. Box 260, 203 Molestie Ave', 'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis', '65188-372', 'Joinville', 'RS', 'Juazeiro', 'ipsum.dolor@sedidrisus.org', '0000-00-00', '', 'lorem lorem, luctus ut, pellentesque', '3.586092784614657', '0000-00-00', 'Hu Griffin', '5'),
(23, 'Emery Butler', '9.11229886838', '(223) 733-5403', '5298 Risus Rd.', 'dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum', '48636-617', 'Itabuna', 'RJ', 'Crato', 'metus.sit.amet@convallisin.edu', '0000-00-00', '', 'mi enim, condimentum eget, volutpat', '6.937559810694680', '0000-00-00', 'Blossom Morales', '6'),
(24, 'Amos Clarke', '9.18312228791', '(741) 814-4417', '635-509 Ut St.', 'dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', '75716-018', 'Belford Roxo', 'PE', 'Curitiba', 'lectus.justo.eu@eratsednunc.ca', '0000-00-00', '', 'lobortis ultrices. Vivamus rhoncus. Donec', '4.588805487584377', '0000-00-00', 'Josephine Michael', '10'),
(25, 'Daniel Barrera', '2.58543364108', '(686) 842-3212', 'P.O. Box 949, 6362 Eleifend Rd.', 'tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis.', '75724-458', 'Petrolina', 'PE', 'Niterói', 'congue.in@lacusmauris.ca', '0000-00-00', 'M', 'penatibus et magnis dis parturient', '8.714296836064344', '0000-00-00', 'Austin Solis', '6'),
(26, 'Martina Espinoza', '7.30673139867', '(804) 837-9849', 'Ap #192-2573 Nisi. Rd.', 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam', '56150-173', 'Pelotas', 'PB', 'Águas Lindas de Goiás', 'lorem@nislelementum.co.uk', '0000-00-00', 'M', 'lorem, sit amet ultricies sem', '3.934354596780500', '0000-00-00', 'Wylie Hebert', '8'),
(27, 'Guy Waters', '6.68520499756', '(482) 945-4211', 'P.O. Box 278, 5868 Venenatis Ave', 'Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae', '75750-023', 'Crato', 'MA', 'Cascavel', 'urna@dolor.co.uk', '0000-00-00', 'M', 'in lobortis tellus justo sit', '7.524153012869235', '0000-00-00', 'Basia Bowen', '7'),
(28, 'Naomi Ross', '3.75337859831', '(509) 430-5097', '454-4697 Purus Av.', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', '74788-513', 'Cabo de Santo Agostinho', 'PR', 'Cabo de Santo Agostinho', 'posuere.cubilia@aliquamtinciduntnunc.com', '0000-00-00', '', 'Nunc ullamcorper, velit in aliquet', '5.141447537744887', '0000-00-00', 'Dora Roth', '9'),
(29, 'Tanisha Baird', '1.88538441027', '(755) 823-8556', '256-9749 Neque Rd.', 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet', '92323-465', 'Ribeirão Preto', 'BA', 'Criciúma', 'montes@sempernamtempor.co.uk', '0000-00-00', 'M', 'nunc est, mollis non, cursus', '7.127047279515357', '0000-00-00', 'Kane Sandoval', '8'),
(30, 'Charlotte Sparks', '4.91299723689', '(554) 362-5404', 'Ap #995-2204 Semper Avenue', 'Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a', '67284-609', 'Santa Rita', 'MG', 'São José', 'tellus.nunc.lectus@torquentper.com', '0000-00-00', '', 'et risus. Quisque libero lacus,', '12.656138870118564', '0000-00-00', 'Maia Pierce', '9'),
(31, 'Delilah Robles', '2.54226473219', '(421) 553-4724', 'P.O. Box 683, 3871 Aliquam Ave', 'nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', '62359-932', 'Blumenau', 'RS', 'Carapicuíba', 'faucibus@netus.org', '0000-00-00', '', 'nostra, per inceptos hymenaeos. Mauris', '2.977542205661798', '0000-00-00', 'Ivy Horne', '6'),
(32, 'Yoshi Daugherty', '5.92395776423', '(691) 208-2816', '821-6332 Lectus St.', 'quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus', '74785-184', 'Niterói', 'PR', 'Juiz de Fora', 'fusce@ipsumdolor.com', '0000-00-00', 'M', 'vulputate, lacus. Cras interdum. Nunc', '1.709844807973989', '0000-00-00', 'Sylvester Sampson', '8'),
(33, 'Sage Payne', '12.99327688232', '(657) 904-9616', 'P.O. Box 544, 1947 Faucibus Av.', 'neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec', '12461-984', 'Governador Valadares', 'RJ', 'Camaragibe', 'id@nullamenimsed.ca', '0000-00-00', '', 'parturient montes, nascetur ridiculus mus.', '3.805627509888258', '0000-00-00', 'Alika Tillman', '5'),
(34, 'Adria Haney', '5.84352575638', '(736) 162-0445', '184-8106 Ipsum Av.', 'montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec', '19463-631', 'Imperatriz', 'RJ', 'Anápolis', 'nunc.quisque.ornare@duis.org', '0000-00-00', '', 'sollicitudin adipiscing ligula. Aenean gravida', '4.523232358815315', '0000-00-00', 'Hu Norton', '5'),
(35, 'Blake Reyes', '9.06472671767', '(356) 634-9763', '987-9585 Aenean Street', 'sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac', '32517491', 'Juazeiro', 'PE', 'Águas Lindas de Goiás', 'hendrerit@penatibuset.com', '0000-00-00', 'M', 'ac turpis egestas. Aliquam fringilla', '3.288190783389982', '0000-00-00', 'Bruno Rush', '9'),
(36, 'Sierra Whitney', '5.97537088300', '(451) 293-1161', 'Ap #651-8978 Aliquet Rd.', 'lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a', '25461-567', 'Itapipoca', 'MG', 'Ilhéus', 'ultrices.iaculis@euismodet.net', '0000-00-00', 'M', 'accumsan convallis, ante lectus convallis', '8.376867065660964', '0000-00-00', 'Hilda Charles', '8'),
(37, 'Evangeline George', '6.70571562371', '(133) 881-0437', '130 Nec Av.', 'pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla.', '18428-568', 'Diadema', 'MA', 'Maringá', 'vel.arcu.eu@ametrisus.org', '0000-00-00', '', 'Sed congue, elit sed consequat', '4.846892587981340', '0000-00-00', 'Lewis Schroeder', '6'),
(38, 'Ray Torres', '7.91611588802', '(669) 400-0762', 'P.O. Box 145, 8899 Vivamus St.', 'vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at', '67182-732', 'Pelotas', 'CE', 'Paulista', 'magnis@sollicitudincommodoipsum.org', '0000-00-00', '', 'risus. Donec egestas. Duis ac', '7.032185300796872', '0000-00-00', 'Hayfa Rodriguez', '8'),
(39, 'Rigel Walton', '2.33805782290', '(752) 546-4316', 'Ap #610-8037 Dictum St.', 'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat,', '58436-539', 'Itajaí', 'PE', 'Juazeiro do Norte', 'pharetra.quisque@necleo.edu', '0000-00-00', '', 'blandit viverra. Donec tempus, lorem', '4.100506216542559', '0000-00-00', 'Deirdre Owen', '6'),
(40, 'Porter Kent', '7.96226853174', '(193) 377-7882', 'Ap #985-7321 Lorem Street', 'erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla', '32474403', 'Castanhal', 'MG', 'Bacabal', 'consectetuer.adipiscing@rutrumfusce.com', '0000-00-00', '', 'non enim commodo hendrerit. Donec', '7.208416771172798', '0000-00-00', 'Hu Sanford', '9'),
(41, 'Justin Collins', '5.57665127041', '(462) 234-9019', 'Ap #209-8548 Integer Av.', 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare', '18682-575', 'Aparecida de Goiânia', 'PB', 'Paulista', 'magna.suspendisse@adipiscingelit.com', '0000-00-00', '', 'egestas. Aliquam fringilla cursus purus.', '6.989304505915037', '0000-00-00', 'Fuller Benson', '4'),
(42, 'Carissa Haley', '3.38162427845', '(754) 542-5271', 'P.O. Box 776, 7179 Sit Street', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie', '68483-934', 'Itabuna', 'BA', 'Rio Verde', 'dictum.eu@est.ca', '0000-00-00', '', 'felis. Nulla tempor augue ac', '5.352569141762817', '0000-00-00', 'Micah Howell', '5'),
(43, 'Channing Larsen', '1.37742211819', '(245) 743-5531', 'Ap #723-6188 At Rd.', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui', '50696-694', 'Cabo de Santo Agostinho', 'SC', 'Santa Maria', 'vitae.erat@orcidonec.net', '0000-00-00', '', 'aliquam adipiscing lacus. Ut nec', '9.545822842572653', '0000-00-00', 'Brock Ochoa', '8'),
(44, 'Inez Benson', '6.10007076536', '(322) 753-6928', '9314 Mi Ave', 'nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', '89478-867', 'Itajaí', 'MA', 'Cabo de Santo Agostinho', 'suspendisse@quislectusnullam.com', '0000-00-00', '', 'Cras dictum ultricies ligula. Nullam', '0.288720047320109', '0000-00-00', 'Ciara Cummings', '6'),
(45, 'Leonard Mack', '3.17964958366', '(565) 771-7182', 'Ap #812-4923 Mauris Rd.', 'ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac,', '97213-792', 'Barra do Corda', 'PB', 'Juazeiro', 'facilisis@consectetuer.co.uk', '0000-00-00', 'M', 'nascetur ridiculus mus. Proin vel', '4.436847683959980', '0000-00-00', 'Micah Dalton', '4'),
(46, 'Troy Knox', '3.35515044615', '(716) 777-8584', '3233 Eu Rd.', 'tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi', '88305-115', 'Itajaí', 'RJ', 'Juazeiro', 'enim.nunc@nuncullamcorper.net', '0000-00-00', 'M', 'Pellentesque habitant morbi tristique senectus', '3.873867022380589', '0000-00-00', 'Ian Garrison', '9'),
(47, 'Xantha Sanford', '7.66455923179', '(251) 860-1126', '161-1610 Nam Rd.', 'porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin', '92288-773', 'Jundiaí', 'RJ', 'Jaboatão dos Guararapes', 'vulputate.risus@rutrum.org', '0000-00-00', 'M', 'semper et, lacinia vitae, sodales', '4.292742695300338', '0000-00-00', 'Daria Mcfarland', '9'),
(48, 'Ulla Byrd', '5.03708271261', '(275) 386-9980', 'Ap #796-5335 Elit Ave', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a', '37065546', 'Itapipoca', 'PA', 'Cajazeiras', 'tellus.lorem@laciniaatiaculis.com', '0000-00-00', '', 'Phasellus libero mauris, aliquam eu,', '3.719887148738152', '0000-00-00', 'Bevis Conway', '9'),
(49, 'Dominique Collier', '5.49778251592', '(442) 168-5061', '147-7001 Dolor St.', 'ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut', '24771-668', 'Piracicaba', 'SC', 'Patos', 'imperdiet.non@morbi.ca', '0000-00-00', 'M', 'luctus et ultrices posuere cubilia', '5.563886140503416', '0000-00-00', 'Chase Brewer', '9'),
(50, 'Guinevere Harding', '4.44197057042', '(624) 467-7086', 'P.O. Box 451, 8212 Dui Av.', 'ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus.', '24543-761', 'Caruaru', 'SP', 'Contagem', 'vestibulum.ut@nonummyipsum.edu', '0000-00-00', '', 'auctor vitae, aliquet nec, imperdiet', '2.228856059590506', '0000-00-00', 'Hu Trevino', '9'),
(51, 'Chava Gonzalez', '8.30407509698', '(823) 126-0457', '763-9595 Amet Rd.', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce', '66012-296', 'Bayeux', 'PA', 'Maranguape', 'purus.maecenas.libero@tinciduntdui.ca', '0000-00-00', 'M', 'Suspendisse aliquet, sem ut cursus', '4.263986708295530', '0000-00-00', 'Kirby Rodgers', '7'),
(52, 'Bertha Myers', '5.71738203721', '(120) 813-6437', '5849 Curae St.', 'blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus', '65457-842', 'Divinópolis', 'RS', 'Petrópolis', 'orci@imperdieterat.com', '0000-00-00', '', 'a sollicitudin orci sem eget', '7.889019393706995', '0000-00-00', 'Sydnee Albert', '8'),
(53, 'Kaye Rojas', '6.01501350593', '(623) 923-3362', '137-4397 Consectetuer Rd.', 'Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate', '46557-116', 'Cascavel', 'PB', 'Águas Lindas de Goiás', 'vestibulum.ut@necurna.co.uk', '0000-00-00', 'M', 'dolor. Quisque tincidunt pede ac', '8.814340971784592', '0000-00-00', 'Shelly Ellis', '9'),
(54, 'Kareem Malone', '4.38491798458', '(497) 514-5550', 'Ap #115-711 Sociis St.', 'Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae', '12143-587', 'Açailândia', 'MG', 'Duque de Caxias', 'sagittis.nullam@lectus.edu', '0000-00-00', '', 'turpis nec mauris blandit mattis.', '3.965184156622899', '0000-00-00', 'Alisa Ballard', '9'),
(55, 'Arden Wade', '4.03323824610', '(528) 614-2365', '407-7227 Orci. St.', 'eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices', '58142-912', 'Sousa', 'RS', 'Niterói', 'accumsan.neque.et@consequat.net', '0000-00-00', 'M', 'sociis natoque penatibus et magnis', '5.480182424726456', '0000-00-00', 'Chaney Fields', '9'),
(56, 'Nolan Steele', '4.62660075116', '(524) 747-6943', 'P.O. Box 961, 4914 Iaculis St.', 'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis', '43251-979', 'Itapipoca', 'PA', 'Petrópolis', 'ornare@vulputateposuere.org', '0000-00-00', 'M', 'nec enim. Nunc ut erat.', '7.369470278080881', '0000-00-00', 'Stuart Santos', '5'),
(57, 'Kelly York', '7.80921408675', '(671) 766-7468', 'Ap #476-620 Et, Road', 'auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum.', '17323-652', 'Belo Horizonte', 'SP', 'Rio Verde', 'ante.nunc@sedsapiennunc.org', '0000-00-00', '', 'purus, in molestie tortor nibh', '6.369038695774528', '0000-00-00', 'Cathleen Snider', '4'),
(58, 'Marsden Kidd', '8.73847639491', '(858) 764-1336', '870-1927 Curabitur Avenue', 'elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit', '42910-616', 'Ribeirão Preto', 'PA', 'Ananindeua', 'ac.orci@etlacinia.net', '0000-00-00', '', 'orci tincidunt adipiscing. Mauris molestie', '3.559308551910757', '0000-00-00', 'Gray Herring', '9'),
(59, 'Amos Skinner', '5.99298792386', '(620) 594-0124', 'Ap #542-1008 Fermentum Street', 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis', '58393-831', 'Caucaia', 'MG', 'Itajaí', 'dis@euismodac.edu', '0000-00-00', '', 'Curabitur vel lectus. Cum sociis', '3.741628198439861', '0000-00-00', 'Marah Cobb', '9'),
(60, 'Dean Bell', '5.98399713607', '(936) 476-1745', '581-5819 Id Rd.', 'eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante,', '61933-735', 'Foz do Iguaçu', 'GO', 'Londrina', 'convallis.convallis@ullamcorperviverramaecenas.co.uk', '0000-00-00', '', 'tellus faucibus leo, in lobortis', '2.525701031425228', '0000-00-00', 'Simon Benjamin', '7'),
(61, 'Sade Jacobson', '5.06283295469', '(350) 798-2719', 'Ap #354-4778 Dignissim Avenue', 'dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio', '58996-261', 'João Pessoa', 'MA', 'Divinópolis', 'sed.auctor@consequat.com', '0000-00-00', 'M', 'Sed dictum. Proin eget odio.', '4.232546084581426', '0000-00-00', 'Brielle Stokes', '8'),
(62, 'Sigourney Ramos', '8.80176919726', '(925) 778-8787', 'P.O. Box 209, 6334 Tincidunt St.', 'eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam', '44672-551', 'Novo Hamburgo', 'PB', 'Goiânia', 'magna.ut@semmollisdui.co.uk', '0000-00-00', 'M', 'Suspendisse tristique neque venenatis lacus.', '2.225746251624008', '0000-00-00', 'Destiny Alvarez', '7'),
(63, 'Salvador Skinner', '11.12937220397', '(259) 562-5718', 'P.O. Box 656, 1011 Vestibulum Road', 'lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum', '22981-569', 'Jaboatão dos Guararapes', 'PR', 'Parauapebas', 'fusce.aliquet@luctuset.co.uk', '0000-00-00', 'M', 'facilisis. Suspendisse commodo tincidunt nibh.', '7.594929409841892', '0000-00-00', 'Murphy Atkins', '6'),
(64, 'Miriam Glenn', '13.27097186094', '(243) 842-6333', 'Ap #869-8421 Sociis Rd.', 'Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae', '31167259', 'Uberaba', 'BA', 'Sobral', 'egestas.rhoncus@hendreritdonec.edu', '0000-00-00', 'M', 'malesuada fringilla est. Mauris eu', '3.959876689816904', '0000-00-00', 'Isabella Sellers', '6'),
(65, 'Phyllis Goff', '4.59629273175', '(627) 888-6416', 'P.O. Box 275, 4728 Sed St.', 'est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse', '61661-258', 'Bragança', 'PA', 'Governador Valadares', 'integer@duifusce.net', '0000-00-00', '', 'lacus. Ut nec urna et', '5.445596946583061', '0000-00-00', 'Suki Caldwell', '4'),
(66, 'Kiona Mcclain', '5.37381751000', '(960) 278-1571', 'Ap #798-6362 Nec Road', 'sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,', '58820-618', 'São Luís', 'MG', 'Niterói', 'enim.condimentum@incondimentumdonec.edu', '0000-00-00', '', 'ac sem ut dolor dapibus', '5.616079260450503', '0000-00-00', 'Keane Long', '7'),
(67, 'Aristotle Burton', '9.03951241101', '(648) 470-6684', 'Ap #334-1718 Morbi St.', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec', '95155-821', 'Santa Maria', 'BA', 'Imperatriz', 'proin.vel@venenatisa.co.uk', '0000-00-00', '', 'eu eros. Nam consequat dolor', '4.362948632995551', '0000-00-00', 'Ivan Wilkins', '8'),
(68, 'Jacqueline Norman', '7.04028190466', '(219) 684-3438', '5805 Vivamus Street', 'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.', '62739-001', 'Rio Grande', 'MG', 'Caxias do Sul', 'nec.mauris@nunc.net', '0000-00-00', 'M', 'risus. In mi pede, nonummy', '2.089488650245164', '0000-00-00', 'Keane Gardner', '8'),
(69, 'Yardley Foreman', '4.20425671760', '(811) 398-8587', 'Ap #520-2133 Eu Street', 'sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis', '90110-842', 'Olinda', 'MG', 'Maringá', 'sociosqu.ad@asollicitudinorci.edu', '0000-00-00', 'M', 'sit amet ultricies sem magna', '1.021769507293603', '0000-00-00', 'Rogan Stout', '10'),
(70, 'Felix Poole', '4.71836468548', '(998) 858-7418', '644-8651 Arcu. Avenue', 'luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum', '74793-786', 'Camaragibe', 'BA', 'São João de Meriti', 'mauris@sedlibero.edu', '0000-00-00', '', 'risus. Duis a mi fringilla', '3.711571098436261', '0000-00-00', 'Phillip Hall', '8'),
(71, 'Darius Blackburn', '7.94865357826', '(733) 317-8845', '9322 Parturient Road', 'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc,', '28056-151', 'Foz do Iguaçu', 'SC', 'Parauapebas', 'aliquet.magna@pede.edu', '0000-00-00', 'M', 'metus. Aliquam erat volutpat. Nulla', '3.726497561329085', '0000-00-00', 'Zoe Stanley', '5'),
(72, 'Barrett Whitley', '1.44798684709', '(680) 457-8255', 'Ap #661-4930 Nulla Av.', 'erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.', '65554-132', 'Fortaleza', 'PE', 'Açailândia', 'integer.urna@necmetusfacilisis.net', '0000-00-00', '', 'adipiscing elit. Etiam laoreet, libero', '3.005291031238712', '0000-00-00', 'Gil Barnett', '8'),
(73, 'Stuart Boyd', '8.85624828445', '(402) 547-8410', 'Ap #445-7600 Lorem, St.', 'ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut', '20763-989', 'Ponta Grossa', 'MG', 'Abaetetuba', 'nulla@ornarelectus.org', '0000-00-00', '', 'penatibus et magnis dis parturient', '2.727960628789624', '0000-00-00', 'Ariana Rodriguez', '10'),
(74, 'Jenette Pacheco', '5.34977766349', '(266) 238-1636', 'Ap #866-2629 Nascetur Avenue', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget', '33418538', 'Diadema', 'PE', 'Açailândia', 'lorem.eget@tellusaeneanegestas.edu', '0000-00-00', 'M', 'feugiat nec, diam. Duis mi', '7.011794214127153', '0000-00-00', 'Ria Tyler', '5'),
(75, 'Fleur Conner', '6.82673707024', '(601) 178-5786', 'P.O. Box 752, 6396 Amet Rd.', 'Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris', '82280-120', 'Belém', 'PE', 'São João de Meriti', 'imperdiet.ornare@sagittisfelisdonec.com', '0000-00-00', '', 'Donec egestas. Duis ac arcu.', '4.382482986732969', '0000-00-00', 'Lamar Hobbs', '8'),
(76, 'Caryn Lane', '5.29641145361', '(511) 488-9614', '533-5702 Tellus. Rd.', 'et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada', '65294-283', 'Águas Lindas de Goiás', 'SP', 'Feira de Santana', 'in.dolor@proinnon.co.uk', '0000-00-00', '', 'ac turpis egestas. Aliquam fringilla', '3.474200462927243', '0000-00-00', 'Jenna Farley', '9'),
(77, 'Phelan Atkinson', '5.49343403723', '(654) 685-4132', '871 Adipiscing St.', 'aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam', '88940-475', 'Crato', 'PE', 'Castanhal', 'dapibus@orciluctus.ca', '0000-00-00', '', 'sed leo. Cras vehicula aliquet', '3.944194154764488', '0000-00-00', 'Amaya Cannon', '7'),
(78, 'Iliana Robertson', '6.47813688521', '(415) 686-9641', '679-4026 Elit Rd.', 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor', '76786-470', 'Camaragibe', 'MG', 'Duque de Caxias', 'semper@primisin.com', '0000-00-00', 'M', 'Aenean euismod mauris eu elit.', '5.612686551153924', '0000-00-00', 'Howard Anderson', '7'),
(79, 'Marny Carr', '5.66235726954', '(134) 715-6751', 'Ap #620-7919 Metus. Road', 'Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a,', '53573-434', 'Ilhéus', 'CE', 'Porto Alegre', 'eros.nam.consequat@tempusnon.co.uk', '0000-00-00', 'M', 'diam vel arcu. Curabitur ut', '3.197973098047824', '0000-00-00', 'Jescie Moody', '7'),
(80, 'Nomlanga Reyes', '6.94942256439', '(845) 777-2872', 'Ap #343-7297 Quis, Rd.', 'erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.', '13338-856', 'Recife', 'MG', 'Santa Rita', 'nibh.enim@veliteu.co.uk', '0000-00-00', 'M', 'in, hendrerit consectetuer, cursus et,', '6.817019149674129', '0000-00-00', 'Shea Waller', '6'),
(81, 'Brynne Burnett', '7.36181128175', '(627) 713-7027', '8856 Fringilla Street', 'urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a,', '15168-500', 'Carapicuíba', 'MA', 'Caruaru', 'mattis.semper.dui@crassedleo.co.uk', '0000-00-00', '', 'tempor arcu. Vestibulum ut eros', '4.963057287036925', '0000-00-00', 'Roth Rocha', '9'),
(82, 'Keiko Knowles', '5.40994900120', '(863) 458-1223', '4856 Velit. Street', 'metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,', '96741-452', 'Chapecó', 'BA', 'Carapicuíba', 'molestie.orci@metuseu.ca', '0000-00-00', 'M', 'libero. Proin sed turpis nec', '8.122373099125916', '0000-00-00', 'Whitney Shepherd', '7'),
(83, 'Craig Sparks', '0.73412342922', '(341) 701-7045', '654-3761 Ante Rd.', 'nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec', '60158-781', 'Luziânia', 'PE', 'Colombo', 'a.facilisis@turpisnon.com', '0000-00-00', 'M', 'leo. Vivamus nibh dolor, nonummy', '6.788596226617971', '0000-00-00', 'Yvette Moses', '7'),
(84, 'Jamal Frazier', '1.89031672539', '(607) 577-5970', 'Ap #384-4129 Morbi Rd.', 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', '89313-792', 'Pelotas', 'MA', 'Divinópolis', 'penatibus@molestieorci.co.uk', '0000-00-00', 'M', 'malesuada fames ac turpis egestas.', '4.014285844267649', '0000-00-00', 'Renee Willis', '6'),
(85, 'Wylie Lyons', '1.30489645030', '(311) 292-7919', 'Ap #424-4544 Orci. Avenue', 'egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed', '67717-661', 'Porto Alegre', 'MG', 'Cascavel', 'vehicula.et.rutrum@auctornunc.edu', '0000-00-00', '', 'in lobortis tellus justo sit', '3.955120167865382', '0000-00-00', 'Lester Reese', '8'),
(86, 'Ayanna Allen', '7.65145373295', '(771) 772-3581', 'P.O. Box 283, 4197 Congue Rd.', 'Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor', '60855-850', 'Maracanaú', 'BA', 'Petrópolis', 'aliquam@ornarelectusjusto.net', '0000-00-00', 'M', 'Donec consectetuer mauris id sapien.', '5.173667066489450', '0000-00-00', 'Jael Bryan', '9'),
(87, 'Vernon Fowler', '4.01915680677', '(177) 890-1109', '944-9918 Enim Rd.', 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis', '15112-282', 'Colombo', 'PR', 'Mauá', 'adipiscing.enim@nectempus.org', '0000-00-00', '', 'posuere cubilia Curae Donec tincidunt.', '4.680160806599619', '0000-00-00', 'Henry Castaneda', '5'),
(88, 'Bianca Franklin', '8.66850310862', '(336) 116-2566', '8740 Posuere, St.', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', '15492-603', 'Açailândia', 'PR', 'Contagem', 'sed.est@montesnascetur.co.uk', '0000-00-00', '', 'in consectetuer ipsum nunc id', '7.081047325751422', '0000-00-00', 'Regina Adams', '5'),
(89, 'Halee Mayo', '11.06225162855', '(351) 138-8548', 'Ap #599-7547 Elit, Avenue', 'vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit', '96748-233', 'Diadema', 'MA', 'Vitória da Conquista', 'vulputate.nisi@risus.co.uk', '0000-00-00', 'M', 'Donec tincidunt. Donec vitae erat', '1.232087265650236', '0000-00-00', 'Gregory Lee', '9'),
(90, 'Matthew Hale', '3.61274450384', '(744) 371-6656', '4686 Dolor. Street', 'felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse', '81555-015', 'Belo Horizonte', 'SC', 'Parauapebas', 'cubilia.curae.donec@tinciduntdui.org', '0000-00-00', 'M', 'nascetur ridiculus mus. Proin vel', '6.187363992641887', '0000-00-00', 'Kaye Boyd', '5'),
(91, 'Kane Richards', '4.12772577162', '(787) 475-8380', 'Ap #127-1176 Lacinia St.', 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc.', '62108-635', 'Vitória da Conquista', 'SP', 'Canoas', 'nulla.interdum@donectempus.org', '0000-00-00', '', 'dictum sapien. Aenean massa. Integer', '5.318436371601783', '0000-00-00', 'Brynne Gregory', '8'),
(92, 'Ori Mcintyre', '0.02545741588', '(289) 884-4677', '416-7096 Porttitor Avenue', 'erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus', '83563-856', 'Maracanaú', 'GO', 'Mauá', 'pede.sagittis@tincidunttempusrisus.edu', '0000-00-00', '', 'leo elementum sem, vitae aliquam', '4.065962372031730', '0000-00-00', 'Desiree Maddox', '8'),
(93, 'Ali Byers', '11.05580136007', '(938) 942-0881', 'Ap #377-7780 Cursus Av.', 'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu', '17728-508', 'Santa Rita', 'PB', 'Timon', 'in@utpellentesqueeget.co.uk', '0000-00-00', 'M', 'Proin sed turpis nec mauris', '7.441509242873971', '0000-00-00', 'Price Velez', '9'),
(94, 'Callie Crosby', '5.33181513113', '(670) 448-4632', '602-1876 Augue Rd.', 'imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna', '58837-664', 'Jaboatão dos Guararapes', 'PA', 'Patos', 'nullam.velit@elementumsem.ca', '0000-00-00', '', 'ante ipsum primis in faucibus', '0.410487448436689', '0000-00-00', 'Haley Knowles', '7'),
(95, 'Kessie Watts', '6.48001416917', '(569) 840-6144', '421-1736 Massa Av.', 'est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse', '60413-425', 'Campos dos Goytacazes', 'PE', 'Paulista', 'tempus.non@aeneanegestashendrerit.edu', '0000-00-00', '', 'risus, at fringilla purus mauris', '4.963090377820730', '0000-00-00', 'Malcolm Bridges', '4'),
(96, 'Germane Gilbert', '7.41256694576', '(680) 446-6587', 'Ap #126-456 Praesent Rd.', 'facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo.', '45145-012', 'Betim', 'SC', 'Cascavel', 'turpis.egestas.fusce@egetmetusin.org', '0000-00-00', 'M', 'sollicitudin orci sem eget massa.', '5.171921415970138', '0000-00-00', 'Hall Dodson', '6'),
(97, 'Phoebe Middleton', '3.42736732009', '(232) 383-3996', 'Ap #453-121 Nunc Av.', 'varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.', '97871-242', 'Florianópolis', 'SP', 'Caxias', 'orci.lacus.vestibulum@metus.ca', '0000-00-00', 'M', 'dolor quam, elementum at, egestas', '4.275099874023518', '0000-00-00', 'Charlotte Oneal', '9'),
(98, 'Nita Lewis', '6.59773423363', '(126) 815-4128', '968-9835 Molestie Rd.', 'Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', '33251953', 'Salvador', 'MA', 'Patos', 'risus.a.ultricies@diamvel.org', '0000-00-00', '', 'volutpat. Nulla facilisis. Suspendisse commodo', '6.536211680419070', '0000-00-00', 'Sean Mitchell', '8'),
(99, 'Tanner Ford', '5.52569175447', '(540) 126-5702', '418-763 Nunc St.', 'eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', '34256798', 'Jundiaí', 'PE', 'Itabuna', 'vestibulum.neque@uttinciduntorci.com', '0000-00-00', '', 'lacus. Ut nec urna et', '0.048500543205613', '0000-00-00', 'Brett Moreno', '10'),
(100, 'Lionel Chambers', '9.90252912102', '(505) 570-5016', '527-3872 At Street', 'dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', '74755-044', 'Timon', 'CE', 'Pelotas', 'felis.nulla@nondapibus.com', '0000-00-00', 'M', 'blandit mattis. Cras eget nisi', '5.891837519173924', '0000-00-00', 'Meredith Crawford', '10'),
(101, 'Administrador do Sistema', '', '', '', '', '', '', '', '', '', '2021-10-02', 'M', '', '', '0000-00-00', '', '05a5cf06982ba7892ed2a6d38fe832d6'),
(102, 'Manutenção do Sistema', '', '(12) 3132-0000', '', '', '', '', '', '', '', '0000-00-00', 'M', '', '', '0000-00-00', 'adm', '05a5cf06982ba7892ed2a6d38fe832d6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_cadastro_paciente`
--

CREATE TABLE `tbl_cadastro_paciente` (
  `id` int(11) NOT NULL,
  `nome_pac` varchar(255) DEFAULT NULL,
  `cpf_pac` varchar(20) DEFAULT NULL,
  `telefone_pac` varchar(20) DEFAULT NULL,
  `endereco_pac` varchar(255) DEFAULT NULL,
  `complemento_pac` varchar(255) NOT NULL,
  `cep_pac` varchar(11) DEFAULT NULL,
  `cidade_pac` varchar(255) DEFAULT NULL,
  `estado_pac` varchar(2) DEFAULT NULL,
  `bairro_pac` varchar(255) DEFAULT NULL,
  `data_nasc_pac` date DEFAULT NULL,
  `sexo_pac` varchar(255) DEFAULT NULL,
  `plano_saude_pac` varchar(255) NOT NULL,
  `cartao_plano_pac` varchar(255) NOT NULL,
  `val_plano_pac` date NOT NULL,
  `email_pac` varchar(255) NOT NULL,
  `resp_pac` varchar(255) NOT NULL,
  `cpf_resp_pac` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbl_cadastro_paciente`
--

INSERT INTO `tbl_cadastro_paciente` (`id`, `nome_pac`, `cpf_pac`, `telefone_pac`, `endereco_pac`, `complemento_pac`, `cep_pac`, `cidade_pac`, `estado_pac`, `bairro_pac`, `data_nasc_pac`, `sexo_pac`, `plano_saude_pac`, `cartao_plano_pac`, `val_plano_pac`, `email_pac`, `resp_pac`, `cpf_resp_pac`) VALUES
(1, 'José Roberto Luz', '789.888.745-55', '(12) 3415-2222', 'Rua Brasil, 500', 'Casa A', '12850-900', 'Queluz', 'SP', 'Vila Brito', '1950-12-10', 'M', 'Amil Dental', '99999999999', '2050-10-10', 'jose.luz@email.com', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_prescricao`
--

CREATE TABLE `tbl_prescricao` (
  `id` int(11) NOT NULL,
  `desc_medicamento` varchar(255) DEFAULT NULL,
  `local_atendimento` varchar(255) NOT NULL,
  `cnes` int(11) NOT NULL,
  `end_empresa` varchar(255) NOT NULL,
  `bairro_empresa` varchar(255) NOT NULL,
  `cidade_empresa` varchar(255) NOT NULL,
  `estado_empresa` varchar(255) NOT NULL,
  `telefone_empresa` varchar(10) NOT NULL,
  `data_emissao` date NOT NULL,
  `cadMedico_presc` int(11) NOT NULL,
  `cadPac_presc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbl_cadastro_funcionario`
--
ALTER TABLE `tbl_cadastro_funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tbl_cadastro_paciente`
--
ALTER TABLE `tbl_cadastro_paciente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tbl_prescricao`
--
ALTER TABLE `tbl_prescricao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cadMedico_presc` (`cadMedico_presc`),
  ADD KEY `fk_cadPac_presc` (`cadPac_presc`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_cadastro_funcionario`
--
ALTER TABLE `tbl_cadastro_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de tabela `tbl_cadastro_paciente`
--
ALTER TABLE `tbl_cadastro_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbl_prescricao`
--
ALTER TABLE `tbl_prescricao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbl_prescricao`
--
ALTER TABLE `tbl_prescricao`
  ADD CONSTRAINT `fk_cadMedico_presc` FOREIGN KEY (`cadMedico_presc`) REFERENCES `tbl_cadastro_funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cadPac_presc` FOREIGN KEY (`cadPac_presc`) REFERENCES `tbl_cadastro_paciente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
