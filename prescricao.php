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
    <title>Prescrição</title>
    <link rel="stylesheet" href="materialize/css/materialize.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">
        .nav-wrapper {
            background-color: #012840;
        }

        .brand-logo {
            width: 4.5%;
        }

        .btnAdicionar {
            background-color: #012840;
            color: #f2f2f2;
            height: 35px;
            border-radius: 8px;
            border: none;
            font-size: 16px;
            margin: 5px;
        }

        .btnExcluir {
            background-color: #DE1E04;
            color: #f2f2f2;
            height: 35px;
            border-radius: 8px;
            border: none;
            font-size: 16px;
            margin: 5px;
        }

        .btnImprimir {
            background-color: #18b5d9;
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
                <li><a href="pesquisar_pac.php">Registros</a></li>
            </ul>
        </div>
    </nav>
    <div class="row text-align: center">
        <h3>RECEITUÁRIO SIMPLES</h3>
    </div>
    <div class="row">
        <form class="col s12" method="POST" name="" action="add_prescricao.php">
            <div class="row col s12">
                <div class="input-field col s12">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">person</i>
                        <input id="" type="text"  name="nome_pac" value="" class="validate">
                        <label for="">Paciente</label>
                    </div>
                </div>
                <div class="row col s12">
                    <div class="input-field col s12">
                        <textarea id="textarea1" name="desc_medicamento" class="materialize-textarea" cols="30" rows="10"></textarea>
                        <label for="textarea1">Descrição do medicamento</label>
                    </div>
                </div>
                <div class="row col s6">
                    <div class="input-field col s12">
                        <input id="" type="text" class="validate">
                        <label for="">Nome do(a) médico(a)</label>
                    </div>
                </div>
                <div class="row col s6">
                    <div class="input-field col s12">
                        <input id="" type="text" class="validate">
                        <label for="">CRM/UF</label>
                    </div>
                </div>
                <div class="row col s8">
                    <div class="input-field col s12">
                        <input id="" name="local_atendimento" type="text" class="validate">
                        <label for="">Local de atendimento</label>
                    </div>
                </div>
                <div class="row col s4">
                    <div class="input-field col s12">
                        <input id="" name="cnes" type="text" class="validate">
                        <label for="">CNES</label>
                    </div>
                </div>
                <div class="row col s8">
                    <div class="input-field col s12">
                        <input id="" name="end_empresa" type="text" class="validate">
                        <label for="">Endereço</label>
                    </div>
                </div>
                <div class="row col s4">
                    <div class="input-field col s12">
                        <input id="" name="bairro_empresa" type="text" class="validate">
                        <label for="">Bairro</label>
                    </div>
                </div>
                <div class="row col s4">
                    <div class="input-field col s12">
                        <input id="" name="cidade_empresa" type="text" class="validate">
                        <label for="">Cidade</label>
                    </div>
                </div>
                <div class="row col s2">
                    <div class="input-field col s12">
                        <input id="" name="estado_empresa" type="text" class="validate">
                        <label for="">UF</label>
                    </div>
                </div>
                <div class="row col s3">
                    <div class="input-field col s12">
                        <input id="" name="telefone_empresa" type="text" class="validate">
                        <label for="">Telefone</label>
                    </div>
                </div>
                <div class="row col s3">
                    <div class="input-field col s12">
                        <input id="" name="data_emissao" type="date" class="validate">
                        <label for="">Data emissão</label>
                    </div>
                </div>
                <div class="input-field">
                    <button class="btnAdicionar btn waves-effect col s2" type="submit" name="action">Adicionar</button>
                    <button class="btnExcluir btn waves-effect col s2" type="edit" name="action">Cancelar</button>
                    <button class="btnImprimir btn waves-effect col s2" type="buttom" name="action">Imprimir</button>
                </div>
        </form>
    </div>
    <script src="materialize/js/materialize.js"></script>
    <script>
        M.AutoInit();
    </script>
</body>

</html>