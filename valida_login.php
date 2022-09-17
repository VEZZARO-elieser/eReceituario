<?php
session_start();
include_once ('conexao.php');
$post = filter_input_array(INPUT_POST, FILTER_DEFAULT);
if((isset($post['usuario'])) && (isset($post['senha']))){
    // $valida_login = filter_input(INPUT_GET, 'valida_login', FILTER_DEFAULT);
    $usuario = $post['usuario']; 
    $senha = $post['senha'];
    $senha = md5($post['senha']);

    $sth = $conexao->prepare('SELECT usuario, senha FROM tbl_cadastro_funcionario WHERE usuario = :usuario && senha = :senha');
    $sth->bindValue(':usuario', $usuario);
    $sth->bindValue(':senha', $senha);
    $sth->execute();

    if($sth->rowCount()>0){ 
        $_SESSION['usuario'] = $usuario;
        header("Location: home.php");
        // echo 1;
    }else{
        $_SESSION['loginErro'] = "Usuário ou Senha inválido!";
        header("Location: index.php");
        // echo 2;
        // echo $usuario;
        // echo $senha;
        // echo "<br/>";
        // echo md5('2021');
    }
}else{
    $_SESSION['loginErro'] = "Usuário ou Senha inválido!";
    // header("Location: index.php");
    // echo 3;
}

?>