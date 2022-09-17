<?php
include_once('conexao.php');

// Verificar se está sendo passado na URL a página atual, senao é atribuido a pagina 
$pagina = (isset($_GET['pagina'])) ? $_GET['pagina'] : 1;
// echo $pagina;

// Contar o total de cadastro
$result_cad = $conexao->prepare("SELECT COUNT(*) as id FROM tbl_cadastro_funcionario");
if ($result_cad->execute()) {
    if ($rs = $result_cad->fetch(PDO::FETCH_OBJ)) {
        $total_cad = $rs->id;
    }
}

//Seta a quantidade de cadastros por pagina
$quantidade_pg = 5;

//calcular o número de pagina necessárias para apresentar os cursos
$num_pagina = ceil($total_cad / $quantidade_pg);

//Calcular o inicio da visualizacao
$inicio = ($quantidade_pg * $pagina) - $quantidade_pg;

?>

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
        $(document).ready(function() {
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

        .row {
            margin-left: 20px;
        }
    </style>
</head>

<body>
    <?php
    $pesquisar_func = filter_input(INPUT_GET, 'pesquisar_func', FILTER_DEFAULT);
    //var_dump($_GET) //verificando se os dados estão chegando neste arquivo.

    //Pesquisa do cadastro por nome
    $sth = $conexao->prepare('SELECT * FROM tbl_cadastro_funcionario WHERE nome_func LIKE "%":pesquisar_func"%"');
    $sth->bindValue(':pesquisar_func', $pesquisar_func);
    $sth->execute();
    ?>

    <nav>
        <div class="nav-wrapper">
            <image src="img/icon_medicamento.png" class="brand-logo right" />
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a href="pesquisar_func.php">Voltar</a></li>
        </div>
    </nav>

    <div class="row">
        <table class="responsive-table">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                    <th>Especialidade</th>
                    <th>CRM/UF</th>
                    <th>Editar</th>
                </tr>
            </thead>

            <?php
            foreach ($sth as $res) :
                extract($res);
            ?>

                <!-- Selecionar os cadastros a serem apresentado na página -->
                <?php
                $result_cad = $conexao->prepare("SELECT * FROM tbl_cadastro_funcionario LIMIT $inicio, $quantidade_pg");
                if ($result_cad->execute()) {
                    while ($rows_cad = $result_cad->fetch(PDO::FETCH_OBJ)) {
                ?>
                        <tbody>
                            <tr>
                                <td>  <?php echo $nome_func;  ?> </td>
                                <td id="cpf"> <?php echo $cpf_func; ?> </td>
                                <td id="tel"> <?php echo $telefone_func; ?> </td>
                                <td> <?php echo $email_func; ?> </td>
                                <td> <?php echo $especialidade_func; ?> </td>
                                <td> <?php echo $crm_func; ?> </td>
                                <td> <a href="<?= INCLUDE_PATH ?>atualizar_func.php?id=<?= $id ?>"> Editar </a> </td>
                            </tr>
                        </tbody>
                <?php
                    }
                } ?>

            <?php
            endforeach;
            ?>

        </table>
    </div>

    <?php
    //Verificar a página anterior e posterior
    $pagina_anterior = $pagina - 1;
    $pagina_posterior = $pagina + 1;
    ?>
    <div class="row">
        <ul class="pagination">
            <li class="waves-effect" class="material-icons">
                <?php
                if ($pagina_anterior != 0) { ?>
                    <a href="pesquisar_func.php?pagina=<?php echo $pagina_anterior; ?>" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                <?php } else { ?>
                    <span aria-hidden="true">&laquo;</span>
                <?php }  ?>
            </li>
            <?php
            //Apresentar a paginação
            for ($i = 1; $i < $num_pagina + 1; $i++) { ?>
                <li class="waves-effect" class="material-icons"><a href="pesquisar_func.php?pagina=<?php echo $i; ?>"><?php echo $i; ?></a></li>
            <?php } ?>
            <li class="waves-effect" class="material-icons">
                <?php
                if ($pagina_posterior <= $num_pagina) { ?>
                    <a href="pesquisar_func.php?pagina=<?php echo $pagina_posterior; ?>" aria-label="Previous">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                <?php } else { ?>
                    <span aria-hidden="true">&raquo;</span>
                <?php }  ?>
            </li>
        </ul>
    </div>

    <script src="materialize/js/materialize.js"></script>

    <script>
        M.AutoInit();
    </script>

</body>

</html>