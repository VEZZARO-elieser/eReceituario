<?php
session_start();
if (!isset($_SESSION['usuario'])) {
    header("Location: index.php");
}
include('conexao.php');
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Início</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="materialize/css/materialize.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">
        .nav-wrapper {
            background-color: #012840;
        }

        .brand-logo {
            width: 4.5%;
        }

        body {
            background-color: #f2f2f2;
        }

        .card-action {
            font-size: 15px;
            font-weight: bold;
        }

        .card-image {
            width: 10%;
        }

        .row {
            margin-left: 15px;
        }
        .whatsapp-link{
            position: fixed;
            width: 60px;
            height: 60px;
            bottom: 40px;
            right: 40px;
            background-color: #25d366;
            color: #fff;
            border-radius: 50px;
            text-align: center;
            font-size: 30px;
            box-shadow: 1px 1px 2px #888;
            z-index: 1000;
        }

        .fa-whatsapp{
            margin-top: 16px;
        }
    </style>
</head>

<body>
    <a class="whatsapp-link" href="https://web.whatsapp.com/send?phone=5512981436501" target="_blank">
        <i class="fa fa-whatsapp"></i>
    </a>
    <nav>
        <div class="nav-wrapper">
            <image src="img/icon_medicamento.png" class="brand-logo right" />
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <div class="row">
                    <li>
                        <p> <?php echo "Seja bem vindo(a) " . $_SESSION['usuario'] ?></p>
                    </li>
                    <li><a href="logoff.php"><i class="material-icons">exit_to_app</i></a></li>
                </div>
        </div>
    </nav>
    <br>
    <br>
    <div class="container">

        <div class="col s4 m4">
            <div class="card horizontal">
                <div class="card-image">
                    <img src="img/icon_cad_medico.png">
                </div>
                <div class="card-stacked">
                    <div class="card-content">
                        <h5>Cadastro Médico</h5>
                    </div>
                    <div class="card-action">
                        <a href="cadastro_medicos.php">Acesso</a>
                    </div>
                </div>
                <div class="card-image">
                    <img src="img/icon_cad_paciente.png">
                </div>
                <div class="card-stacked">
                    <div class="card-content">
                        <h5>Cadastro Paciente</h5>
                    </div>
                    <div class="card-action">
                        <a href="cadastro_paciente.php">Acesso</a>
                    </div>
                </div>
            </div>
        </div>

        <br>

        <div class="col s4 m4">
            <div class="card horizontal">
                <div class="card-image">
                    <img src="img/icon_register.png">
                </div>
                <div class="card-stacked">
                    <div class="card-content">
                        <h5>Registros de Médico</h5>
                    </div>
                    <div class="card-action">
                        <a href="pesquisar_func.php">Acesso</a>
                    </div>
                </div>
                <div class="card-image">
                    <img src="img/icon_register.png">
                </div>
                <div class="card-stacked">
                    <div class="card-content">
                        <h5>Registros de Paciente</h5>
                    </div>
                    <div class="card-action">
                        <a href="pesquisar_pac.php">Acesso</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="materialize/js/materialize.js"></script>
    <script>
        M.AutoInit();
    </script>
</body>

</html>