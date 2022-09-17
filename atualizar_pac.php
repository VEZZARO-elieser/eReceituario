<?php
session_start();
if (!isset($_SESSION['usuario'])) {
    header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizar Cadastro</title>
    <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
    <script src="js/jquery.mask.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#cpf").mask("000.000.000-00");
            $("#tel").mask("(00) 0000-0000");
            $("#cep").mask("00000-000");
            $("#cpf_r").mask("000.000.000-00");
        })
    </script>
    <link rel="stylesheet" href="materialize/css/materialize.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">
        .nav-wrapper {
            background-color: #012840;
        }

        .brand-logo {
            width: 4.5%;
        }

        .btnSalvar {
            background-color: #012840;
            color: #f2f2f2;
            height: 35px;
            border-radius: 8px;
            border: none;
            font-size: 16px;
            margin: 5px;
        }

        .btnEditar {
            background-color: #18b5d9;
            color: #f2f2f2;
            height: 35px;
            border-radius: 8px;
            border: none;
            font-size: 16px;
            margin: 5px;
        }

        .btnCancelar {
            background-color: #cccc;
            color: red;
            height: 35px;
            border-radius: 8px;
            border: none;
            font-size: 16px;
            margin: 5px;
        }
    </style>
</head>

<body>
    <?php
    include_once('conexao.php');
    $id = filter_input(INPUT_GET, 'id', FILTER_DEFAULT);
    $sth = $conexao->prepare("select * from tbl_cadastro_paciente where id = :id");
    $sth->bindValue(":id", $id);
    $sth->execute();
    $row = $sth->fetch(PDO::FETCH_ASSOC);
    extract($row);
    ?>

    <nav>
        <div class="nav-wrapper">
            <image src="img/icon_medicamento.png" class="brand-logo right" />
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a href="home.php">Início</a></li>
                <li><a href="pesquisar_pac.php"><i class="material-icons">search</i></a></li>
        </div>
    </nav>

    <div class="row text-align: center">
        <h5>Atualizar Cadastro</h5>
    </div>

    <section>
        <div class="row">
            <form class="col s12" name="form_up_pac" action="update_pac.php" method="POST">
                <div class="row col s12">
                    <input type="hidden" name="id" value="<?= $id ?>" />
                    <div class="input-field col s6">
                        <i class="material-icons prefix">person</i>
                        <input id="" type="text" class="validate" name="nome_pac" value="<?= $nome_pac ?>" required>
                        <label for="">Nome</label>
                    </div>
                    <div class="input-field col s3">
                        <i class="material-icons prefix">folder</i>

                        <input id="cpf" type="text" class="validate" name="cpf_pac" value="<?= $cpf_pac ?>">
                        <label for="">CPF</label>
                    </div>
                    <div class="input-field col s3">
                        <i class="material-icons prefix">phone</i>
                        <input id="tel" type="tel" class="validate" name="telefone_pac" value="<?= $telefone_pac ?>">
                        <label for="">Telefone</label>
                    </div>
                    <div class="input-field col s8">
                        <input id="" type="text" class="validate" name="endereco_pac" value="<?= $endereco_pac ?>">
                        <label for="">Endereço</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="complemento_pac" value="<?= $complemento_pac ?>">
                        <label for="">Complemento</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="cep" type="text" class="validate" name="cep_pac" value="<?= $cep_pac ?>">
                        <label for="">CEP</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="cidade_pac" value="<?= $cidade_pac ?>">
                        <label for="">Cidade</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="" type="text" class="validate" name="estado_pac" value="<?= $estado_pac ?>">
                        <label for="">Estado</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="bairro_pac" value="<?= $bairro_pac ?>">
                        <label for="">Bairro</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="" type="date" class="validate" name="data_nasc_pac" value="<?= $data_nasc_pac ?>">
                        <label for="">Data Nascimento</label>
                    </div>
                    <div class="input-field col s1">
                        <select id="" name="sexo_pac" value="<?= $sexo_pac ?>">
                            <option value="M"> Masculino </option>
                            <option value="F"> Feminino </option>
                        </select>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="plano_saude_pac" value="<?= $plano_saude_pac ?>">
                        <label for="">Plano Saúde</label>
                    </div>
                    <div class="input-field col s3">
                        <input id="" type="text" class="validate" name="cartao_plano_pac" value="<?= $cartao_plano_pac ?>">
                        <label for="">Número Cartão</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="" type="date" class="validate" name="val_plano_pac" value="<?= $val_plano_pac ?>">
                        <label for="">Validade</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="email" class="validate" name="email_pac" value="<?= $email_pac ?>">
                        <label for="">E-mail</label>
                    </div>
                    <div class="input-field col s3">
                        <input id="" type="text" class="validate" name="resp_pac" value="<?= $resp_pac ?>">
                        <label for="">Responsável</label>
                    </div>
                    <div class="input-field col s3">
                        <input id="cpf_r" type="text" class="validate" name="cpf_resp_pac" value="<?= $cpf_resp_pac ?>">
                        <label for="">CPF</label>
                    </div>
                    <div class="input-field">
                        <button class="btnSalvar btn waves-effect col s2" type="submit" name="action">Salvar</button>
                        <button class="btnCancelar btn waves-effect col s2" type="reset" name="reset">Cancelar</button>
                    </div>
                </div>
            </form>
        </div>
    </section>


    <script src="materialize/js/materialize.js"></script>
    <script>
        M.AutoInit();
    </script>
</body>

</html>