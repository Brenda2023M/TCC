<?php
session_start();
include("conexao.php");

// Coletar e tratar os dados do formulário
$nome = mysqli_real_escape_string($conexao, trim($_POST['nome']));
$usuario = mysqli_real_escape_string($conexao, trim($_POST['usuario']));
$senha = mysqli_real_escape_string($conexao, trim($_POST['senha']));
$telefone = mysqli_real_escape_string($conexao, trim($_POST['telefone']));
$cidade = mysqli_real_escape_string($conexao, trim($_POST['cidade']));
$especializacao = mysqli_real_escape_string($conexao, trim($_POST['especializacao']));
$mestrado = mysqli_real_escape_string($conexao, trim($_POST['mestrado']));
$doutorado = mysqli_real_escape_string($conexao, trim($_POST['doutorado']));
$email = mysqli_real_escape_string($conexao, trim($_POST['email']));

// Verificar se o usuário já existe
$sql = "SELECT COUNT(*) AS total FROM usuarioprof WHERE usuario = '$usuario'";
$result = mysqli_query($conexao, $sql);
$row = mysqli_fetch_assoc($result);

if ($row['total'] > 0) {
    $_SESSION['usuario_existe'] = true;
    header('Location: cadastro.php');
    exit;
}

// Inserir os dados no banco de dados
$sql = "INSERT INTO usuarioprof (nome, usuario, senha, telefone, cidade, especializacao, mestrado, doutorado, email) VALUES ('$nome', '$usuario', '$senha', '$telefone', '$cidade', '$especializacao', '$mestrado', '$doutorado', '$email')";

if (mysqli_query($conexao, $sql)) {
    $_SESSION['status_cadastro'] = true;
} else {
    $_SESSION['status_cadastro'] = false;
    echo "Erro: " . mysqli_error($conexao); // Exibir erro para depuração
}

// Fechar a conexão
mysqli_close($conexao);

// Redirecionar
header('Location: cadastro.php');
exit;
?>