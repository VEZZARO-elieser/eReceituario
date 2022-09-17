<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="materialize/css/materialize.css">
    <title>Registro</title>
    <script src="js/jquery-3.6.0.min.js" type="text/javascript"></script>
    <script src="js/jquery.mask.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#cpf").mask("000.000.000-00");
            $("#tel").mask("(00) 0000-0000");
        })
    </script>
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
        .row{
            margin-left: 20px;
        }
    </style>
</head>

<body>
    <?php
    include('conexao.php');
    $pesquisar_pac = filter_input(INPUT_GET, 'pesquisar_pac', FILTER_DEFAULT);
    // var_dump($_GET) //verificando se os dados estão chegando neste arquivo.
    $sth = $conexao->prepare('SELECT * FROM tbl_cadastro_paciente WHERE nome_pac LIKE "%":pesquisar_pac"%"');
    $sth->bindValue(':pesquisar_pac', $pesquisar_pac);
    $sth->execute();
    ?>

    <nav>
        <div class="nav-wrapper">
            <image src="img/icon_medicamento.png" class="brand-logo right" />
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a href="pesquisar_pac.php">Voltar</a></li>
        </div>
    </nav>

    <div class="row">
        <table class="responsive-table">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Plano Saúde</th>
                    <th>Número Cartão</th>
                    <th>Validade</th>
                    <th>E-mail</th>
                    <th>Editar</th>
                </tr>
            </thead>

            <?php
            foreach ($sth as $res) :
                extract($res);
            ?>

                <tbody>
                    <tr>
                        <td> <a href="prescricao.php"> <?php echo $nome_pac;  ?> </a></td>
                        <td id="cpf"> <?php echo $cpf_pac; ?> </td>
                        <td id="tel"> <?php echo $telefone_pac; ?> </td>
                        <td> <?php echo $endereco_pac; ?> </td>
                        <td> <?php echo $plano_saude_pac; ?> </td>
                        <td> <?php echo $cartao_plano_pac; ?> </td>
                        <td> <?php echo $val_plano_pac; ?> </td>
                        <td> <?php echo $email_pac; ?> </td>
                        <td> <a href="<?=INCLUDE_PATH?>atualizar_pac.php?id=<?=$id?>"> Editar </a> </td>
                    </tr>
                </tbody>
            <?php
            endforeach;
            ?>
        </table>
    </div>

    <script src="materialize/js/materialize.js"></script>
    <script>
        M.AutoInit();
    </script>
</body>

</html>