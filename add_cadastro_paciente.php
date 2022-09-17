<?php 
include_once("conexao.php"); 
?>

<?php
$post = filter_input_array(INPUT_POST, FILTER_DEFAULT);

// Fazer a impressão na tela para testar a entrega do POST
// echo "<pre>";
// print_r($post);
// echo "</pre>";

$Dados = array(
    'nome_pac' => $post['nome_pac'],
    'cpf_pac' => $post['cpf_pac'],
    'telefone_pac' => $post['telefone_pac'],
    'endereco_pac' => $post['endereco_pac'],
    'complemento_pac' => $post['complemento_pac'],
    'cep_pac' => $post['cep_pac'],
    'cidade_pac' => $post['cidade_pac'],
    'estado_pac' => $post['estado_pac'],
    'bairro_pac' => $post['bairro_pac'],
    'email_pac' => $post['email_pac'],
    'data_nasc_pac' => $post['data_nasc_pac'],
    'sexo_pac' => $post['sexo_pac'],
    'plano_saude_pac' => $post['plano_saude_pac'],
    'cartao_plano_pac' => $post['cartao_plano_pac'],
    'val_plano_pac' => $post['val_plano_pac'],
    'email_pac' => $post['email_pac'],
    'resp_pac' => $post['resp_pac'],
    'cpf_resp_pac' => $post['cpf_resp_pac']
);

$Fields = implode(', ', array_keys($Dados));
$Places = ':' . implode(', :', array_keys($Dados));
$Tabela = 'tbl_cadastro_paciente';

$Create = "INSERT INTO {$Tabela} ({$Fields}) VALUES ({$Places})";
// echo $Create;
$sth = $conexao->prepare($Create);
$sth->execute($Dados);
// echo $conexao->lastInsertId(); //imprimi o ultimo dado do registrono bd

if($sth->rowCount()){
    echo "Usuário cadastrado com sucesso!";
    header("Location: cadastro_paciente.php");
}else{
    echo "ERRO: Usuário não cadastrado";
    header("Location: cadastro_paciente.php");
}

?>