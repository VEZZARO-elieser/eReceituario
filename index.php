<?php
session_start();
include_once('conexao.php');
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acesso</title>
    <link rel="stylesheet" href="materialize/css/materialize.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">
        .btn {
            background-color: #012840;
            border-color: #f2f2f2 2px solid;
            border-radius: 8px;
            width: 200px;
            height: 50px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <br>
    <br>
    <br>
    <div class="container">
        <div class="container text-align: center">
            <img src="img/icon_medicamento.png" alt="">
        </div>
        <div class="container text-align: center">
            <form class="col s12" method="POST" name="" action="valida_login.php">
                <div class="container">
                    <div class="input-field col s4">
                        <input id="usuario" type="text" name="usuario" class="validate">
                        <label for="email">Usuário</label>
                    </div>
                </div>
                <div class="container">
                    <div class="input-field col s4">
                        <input id="senha" type="password" name="senha" class="validate">
                        <label for="password">Password</label>
                    </div>
                </div>
                <button class="btn waves-effect" type="submit" name="">Entrar
                    <i class="material-icons right">check</i>
                </button>
            </form>

            <?php
            if (isset($_SESSION['loginErro'])) {
            ?>
                <div id="" class="card-panel color: red">
                    <span class="write-text text-darken-2">
                        <?php
                        echo $_SESSION['loginErro'];
                        unset($_SESSION['loginErro']);
                        ?>
                    </span>
                </div>
            <?php
            }
            ?>




        </div>
    </div>
    <script src="materialize/js/materialize.js"></script>
    <script>
        M.AutoInit();
    </script>
</body>

</html>