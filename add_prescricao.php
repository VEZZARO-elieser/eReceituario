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
    'desc_medicamento' => $post['desc_medicamento'],
    'local_atendimento' => $post['local_atendimento'],
    'cnes' => $post['cnes'],
    'end_empresa' => $post['end_empresa'],
    'bairro_empresa' => $post['bairro_empresa'],
    'cidade_empresa' => $post['cidade_empresa'],
    'estado_empresa' => $post['estado_empresa'],
    'telefone_empresa' => $post['telefone_empresa'],
    'data_emissao' => $post['data_emissao'],
);

$Fields = implode(', ', array_keys($Dados));
$Places = ':' . implode(', :', array_keys($Dados));
$Tabela = 'tbl_prescricao';

$Create = "INSERT INTO {$Tabela} ({$Fields}) VALUES ({$Places})";
// echo $Create;
$sth = $conexao->prepare($Create);
$sth->execute($Dados);
// echo $conexao->lastInsertId(); //imprimi o ultimo dado do registrono bd

if($sth->rowCount()){
    echo "Receituário cadastrado com sucesso!";
    header("Location: home.php");
}else{
    echo "ERRO: Falha no cadastrado";
    header("Location: prescricao.php");
}

?>