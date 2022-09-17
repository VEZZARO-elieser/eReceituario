<?php
session_start();
if (!isset($_SESSION['usuario'])) {
    header("Location: index.php");
}
include('conexao.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="materialize/css/materialize.css">
    <title>Registro</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">
        .nav-wrapper {
            background-color: #012840;
        }

        .brand-logo {
            width: 4.5%;
        }

        .btnPesquisar {
            background-color: #012840;
            color: #f2f2f2;
            height: 35px;
            border-radius: 8px;
            border: none;
            font-size: 16px;
            margin: 5px;
        }
    </style>
</head>

<body>
    <nav>
        <div class="nav-wrapper">
            <image src="img/icon_medicamento.png" class="brand-logo right" />
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a href="home.php">Início</a></li>
                <li><a href="cadastro_medicos.php">Cadastro Médico</a></li>
        </div>
    </nav>

    <div class="row">
        <form class="col s12" name="form_pesquisar_func" action="search_func.php" method="get">
            <div class="row">
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="icon_prefix" type="text" name="pesquisar_func" class="validate">
                    <label for="icon_prefix">Nome</label>
                </div>
                <br>
                <button class="btnPesquisar btn waves-effect waves-light" type="Submit">Pesquisar
                    <i class="material-icons right">search</i>
                </button>
            </div>
        </form>
    </div>

    <script src="materialize/js/materialize.js"></script>
    <script>
        M.AutoInit();
    </script>
</body>

</html>