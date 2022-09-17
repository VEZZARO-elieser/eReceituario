<?php
include_once('conexao.php');

$id = filter_input(INPUT_POST, 'id', FILTER_DEFAULT);
$nome_pac = filter_input(INPUT_POST, 'nome_pac', FILTER_DEFAULT);
$cpf_pac = filter_input(INPUT_POST, 'cpf_pac', FILTER_DEFAULT);
$telefone_pac = filter_input(INPUT_POST, 'telefone_pac', FILTER_DEFAULT);
$endereco_pac = filter_input(INPUT_POST, 'endereco_pac', FILTER_DEFAULT);
$complemento_pac = filter_input(INPUT_POST, 'complemento_pac', FILTER_DEFAULT);
$cep_pac = filter_input(INPUT_POST, 'cep_pac', FILTER_DEFAULT);
$cidade_pac = filter_input(INPUT_POST, 'cidade_pac', FILTER_DEFAULT);
$estado_pac = filter_input(INPUT_POST, 'estado_pac', FILTER_DEFAULT);
$bairro_pac = filter_input(INPUT_POST, 'bairro_pac', FILTER_DEFAULT);
$data_nasc_pac = filter_input(INPUT_POST, 'data_nasc_pac', FILTER_DEFAULT);
$sexo_pac = filter_input(INPUT_POST, 'sexo_pac', FILTER_DEFAULT);
$plano_saude_pac = filter_input(INPUT_POST, 'plano_saude_pac', FILTER_DEFAULT);
$cartao_plano_pac = filter_input(INPUT_POST, 'cartao_plano_pac', FILTER_DEFAULT);
$val_plano_pac = filter_input(INPUT_POST, 'val_plano_pac', FILTER_DEFAULT);
$email_pac = filter_input(INPUT_POST, 'email_pac', FILTER_DEFAULT);
$resp_pac = filter_input(INPUT_POST, 'resp_pac', FILTER_DEFAULT);
$cpf_resp_pac = filter_input(INPUT_POST, 'cpf_resp_pac', FILTER_DEFAULT);

$sth = $conexao->prepare('UPDATE tbl_cadastro_paciente SET
nome_pac = :nome_pac,
cpf_pac = :cpf_pac,
telefone_pac = :telefone_pac,
endereco_pac = :endereco_pac,
complemento_pac = :complemento_pac,
cep_pac = :cep_pac,
cidade_pac = :cidade_pac,
estado_pac = :estado_pac,
bairro_pac = :bairro_pac,
data_nasc_pac = :data_nasc_pac,
sexo_pac = :sexo_pac,
plano_saude_pac = :plano_saude_pac,
cartao_plano_pac = :cartao_plano_pac,
val_plano_pac = :val_plano_pac,
email_pac = :email_pac,
resp_pac = :resp_pac,
cpf_resp_pac = :cpf_resp_pac
WHERE id=:id');

$sth->bindValue(':nome_pac', $nome_pac);
$sth->bindValue(':cpf_pac', $cpf_pac);
$sth->bindValue(':telefone_pac', $telefone_pac);
$sth->bindValue(':endereco_pac', $endereco_pac);
$sth->bindValue(':complemento_pac', $complemento_pac);
$sth->bindValue(':cep_pac', $cep_pac);
$sth->bindValue(':cidade_pac', $cidade_pac);
$sth->bindValue(':estado_pac', $estado_pac);
$sth->bindValue(':bairro_pac', $bairro_pac);
$sth->bindValue(':data_nasc_pac', $data_nasc_pac);
$sth->bindValue(':sexo_pac', $sexo_pac);
$sth->bindValue(':plano_saude_pac', $plano_saude_pac);
$sth->bindValue(':cartao_plano_pac', $cartao_plano_pac);
$sth->bindValue(':val_plano_pac', $val_plano_pac);
$sth->bindValue(':email_pac', $email_pac);
$sth->bindValue(':resp_pac', $resp_pac);
$sth->bindValue(':cpf_resp_pac', $cpf_resp_pac);
$sth->bindValue(':id', $id);

$sth->execute();

echo "<p>";
echo $_SESSION['msg'] = "<p style='color:green;'>CADASTRO ALTERADO COM SUCESSO.</p>";
// echo "<a href='".INCLUDE_PATH."pesquisar_pac.php'>Voltar</a>";
header("Location:pesquisar_pac.php");
echo "<p>";

?>