<?php
$cont = 2;
while($cont < 3000){
	echo "INSERT INTO `tbl_cadastro_funcionario`(`nome_func`, `cpf_func`, `telefone_func`, `endereco_func`, `complemento_func`, 
	`cep_func`, `cidade_func`, `estado_func`, `bairro_func`, `email_func`, `data_nasc_func`, `sexo_func`, `especialidade_func`, `crm_func`, 
	`val_crm_func`, `usuario`, `senha`) VALUES
	('João Paulo$cont', '11144433300', '1231561800', 'Rua 01, 100$cont', 'Casa1$cont', 
	'12800000', 'Aparecida', 'SP', 'Centro', 'joao.paulo$cont@email.com', '2020-10-10', 'M', 'Cirurgião', '1$cont',
	'2020-10-10', 'João$cont', '2021')<br>";
	
	('Rafaela Prado$cont', '11144433300', '1231561800', 'Rua Castro Alves, 1$cont', 'Casa1$cont', 
	'12800000', 'Guaratinguetá', 'SP', 'Centro', 'joao.paulo$cont@email.com', '2020-10-10', 'F', 'Ginecologista', '1$cont',
	'2020-10-10', 'Rafaela$cont', '2022')<br>";
	
	('Bruna de Assis$cont', '11144433300', '1231561800', 'Rua Castro Alves, 1$cont', 'Casa1$cont', 
	'12800000', 'Guaratinguetá', 'SP', 'Centro', 'joao.paulo$cont@email.com', '2020-10-10', 'F', 'Pediatra', '1$cont',
	'2020-10-10', 'Bruna$cont', '2023')<br>";
	
	$cont = $cont + 1;
}