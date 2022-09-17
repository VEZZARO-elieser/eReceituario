<?php 
session_start();
include_once("conexao.php"); 
?>

<?php
$post = filter_input_array(INPUT_POST, FILTER_DEFAULT);

// Fazer a impressão na tela para testar a entrega do POST
// echo "<pre>";
// print_r($post);
// echo "</pre>";

$Dados = array(
    'nome_func' => $post['nome_func'],
    'cpf_func' => $post['cpf_func'],
    'telefone_func' => $post['telefone_func'],
    'endereco_func' => $post['endereco_func'],
    'complemento_func' => $post['complemento_func'],
    'cep_func' => $post['cep_func'],
    'cidade_func' => $post['cidade_func'],
    'estado_func' => $post['estado_func'],
    'bairro_func' => $post['bairro_func'],
    'email_func' => $post['email_func'],
    'data_nasc_func' => $post['data_nasc_func'],
    'sexo_func' => $post['sexo_func'],
    'especialidade_func' => $post['especialidade_func'],
    'crm_func' => $post['crm_func'],
    'val_crm_func' => $post['val_crm_func'],
    'usuario' => $post['usuario'],
    'senha' => md5($post['senha'])
);

$Fields = implode(', ', array_keys($Dados));
$Places = ':' . implode(', :', array_keys($Dados));
$Tabela = 'tbl_cadastro_funcionario';

$Create = "INSERT INTO {$Tabela} ({$Fields}) VALUES ({$Places})";

// echo $Create;
$sth = $conexao->prepare($Create);
$sth->execute($Dados);
// echo $conexao->lastInsertId(); //imprimi o ultimo dado do registrono bd
// header("Location:add_cadastro_medicos.php");
if($sth->rowCount()){
    echo "Usuário cadastrado com sucesso!";
    header("Location: cadastro_medicos.php");
}else{
    echo "ERRO: Usuário não cadastrado";
    header("Location: cadastro_medicos.php");
}
?>