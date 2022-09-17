<?php
include_once('conexao.php');

$id = filter_input(INPUT_POST, 'id', FILTER_DEFAULT);
$nome_func = filter_input(INPUT_POST, 'nome_func', FILTER_DEFAULT);
$cpf_func = filter_input(INPUT_POST, 'cpf_func', FILTER_DEFAULT);
$telefone_func = filter_input(INPUT_POST, 'telefone_func', FILTER_DEFAULT);
$endereco_func = filter_input(INPUT_POST, 'endereco_func', FILTER_DEFAULT);
$complemento_func = filter_input(INPUT_POST, 'complemento_func', FILTER_DEFAULT);
$cep_func = filter_input(INPUT_POST, 'cep_func', FILTER_DEFAULT);
$cidade_func = filter_input(INPUT_POST, 'cidade_func', FILTER_DEFAULT);
$estado_func = filter_input(INPUT_POST, 'estado_func', FILTER_DEFAULT);
$bairro_func = filter_input(INPUT_POST, 'bairro_func', FILTER_DEFAULT);
$email_func = filter_input(INPUT_POST, 'email_func', FILTER_DEFAULT);
$data_nasc_func = filter_input(INPUT_POST, 'data_nasc_func', FILTER_DEFAULT);
$sexo_func = filter_input(INPUT_POST, 'sexo_func', FILTER_DEFAULT);
$especialidade_func = filter_input(INPUT_POST, 'especialidade_func', FILTER_DEFAULT);
$crm_func = filter_input(INPUT_POST, 'crm_func', FILTER_DEFAULT);
$val_crm_func = filter_input(INPUT_POST, 'val_crm_func', FILTER_DEFAULT);
// $usuario = filter_input(INPUT_POST, 'usuario', FILTER_DEFAULT);
// $senha = filter_input(INPUT_POST, 'senha', FILTER_DEFAULT);

$sth = $conexao->prepare('UPDATE tbl_cadastro_funcionario SET
nome_func = :nome_func,
cpf_func = :cpf_func,
telefone_func = :telefone_func,
endereco_func = :endereco_func,
complemento_func = :complemento_func,
cep_func = :cep_func,
cidade_func = :cidade_func,
estado_func = :estado_func,
bairro_func = :bairro_func,
email_func = :email_func,
data_nasc_func = :data_nasc_func,
sexo_func = :sexo_func,
especialidade_func = :especialidade_func,
crm_func = :crm_func,
val_crm_func= :val_crm_func
-- usuario = :usuario,
-- senha = :senha
WHERE id=:id');

$sth->bindValue(':nome_func', $nome_func);
$sth->bindValue(':cpf_func', $cpf_func);
$sth->bindValue(':telefone_func', $telefone_func);
$sth->bindValue(':endereco_func', $endereco_func);
$sth->bindValue(':complemento_func', $complemento_func);
$sth->bindValue(':cep_func', $cep_func);
$sth->bindValue(':cidade_func', $cidade_func);
$sth->bindValue(':estado_func', $estado_func);
$sth->bindValue(':bairro_func', $bairro_func);
$sth->bindValue(':email_func', $email_func);
$sth->bindValue(':data_nasc_func', $data_nasc_func);
$sth->bindValue(':sexo_func', $sexo_func);
$sth->bindValue(':especialidade_func', $especialidade_func);
$sth->bindValue(':crm_func', $crm_func);
$sth->bindValue(':val_crm_func', $val_crm_func);
// $sth->bindValue(':usuario', $usuario);
// $sth->bindValue(':senha', $senha);
$sth->bindValue(':id', $id);

$sth->execute();

echo "<p>";
echo $_SESSION['msg'] = "<p style='color:green;'>CADASTRO ALTERADO COM SUCESSO.</p>";
// echo "<a href='".INCLUDE_PATH."pesquisar_func.php'>Voltar</a>";
header("Location:pesquisar_func.php");
echo "<p>";

?>