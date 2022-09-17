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
    <title>Cadastro Funcionário</title>
    <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
    <script src="js/jquery.mask.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#cpf").mask("000.000.000-00");
            $("#tel").mask("(00) 0000-0000");
            $("#cep").mask("00000-000");
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
    <nav>
        <div class="nav-wrapper">
            <image src="img/icon_medicamento.png" class="brand-logo right" />
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a href="home.php">Início</a></li>
                <li><a href="pesquisar_func.php"><i class="material-icons">search</i></a></li>
        </div>
    </nav>
    <div class="row text-align: center">
        <h5>Cadastro Médico</h5>
    </div>
    <section>
        <div class="row">
            <form class="col s12" action="add_cadastro_medicos.php" method="POST">
                <div class="row col s12">
                    <div class="input-field col s6">
                        <i class="material-icons prefix">person</i>
                        <input id="" type="text" class="validate" name="nome_func" required>
                        <label for="">Nome</label>
                    </div>
                    <div class="input-field col s3">
                        <i class="material-icons prefix">folder</i>

                        <input id="cpf" type="text" class="validate" name="cpf_func">
                        <label for="">CPF</label>
                    </div>
                    <div class="input-field col s3">
                        <i class="material-icons prefix">phone</i>
                        <input id="tel" type="tel" class="validate" name="telefone_func">
                        <label for="">Telefone</label>
                    </div>
                    <div class="input-field col s8">
                        <input id="" type="text" class="validate" name="endereco_func">
                        <label for="">Endereço</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="complemento_func">
                        <label for="">Complemento</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="cep" type="text" class="validate" name="cep_func">
                        <label for="">CEP</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="cidade_func">
                        <label for="">Cidade</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="" type="text" class="validate" name="estado_func">
                        <label for="">Estado</label>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="bairro_func">
                        <label for="">Bairro</label>
                    </div>
                    <div class="input-field col s5">
                        <input id="" type="text" class="validate" name="email_func">
                        <label for="">E-mail</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="" type="date" class="validate" name="data_nasc_func">
                        <label for="">Data Nascimento</label>
                    </div>
                    <div class="input-field col s1">
                        <select id="" name="sexo_func">
                            <option value="M"> Masculino </option>
                            <option value="F"> Feminino </option>
                        </select>
                    </div>
                    <div class="input-field col s4">
                        <input id="" type="text" class="validate" name="especialidade_func">
                        <label for="">Especialidade</label>
                    </div>
                    <div class="input-field col s3">
                        <input id="" type="text" class="validate" name="crm_func">
                        <label for="">CRM/UF</label>
                    </div>
                    <div class="input-field col s2">
                        <input id="" type="date" class="validate" name="val_crm_func">
                        <label for="">Validade</label>
                    </div>
                    <div class="input-field col s4">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="" type="text" class="validate" name="usuario">
                        <label for="">Usuário</label>
                    </div>
                    <div class="input-field col s3">
                        <i class="material-icons prefix">enhanced_encryption</i>
                        <input id="" type="password" class="validate" name="senha">
                        <label for="">Senha</label>
                    </div>
                    <div class="input-field">
                        <button class="btnSalvar btn waves-effect col s2" type="submit" name="action">Salvar</button>
                        <button class="btnCancelar btn waves-effect col s2" type="cancel" name="action">Cancelar</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- </section> -->
        <script src="materialize/js/materialize.js"></script>
        <script>
            M.AutoInit();
        </script>
</body>

</html>