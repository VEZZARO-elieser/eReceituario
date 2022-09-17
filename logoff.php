<?php
session_start();
include_once('conexao.php');

unset(
    $_SESSION['usuario'],
);

//redirecionar o usuário para a página de login
header("Location: index.php");

?>