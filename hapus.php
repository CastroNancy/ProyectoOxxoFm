<?php
include("./config.php");

if (isset($_POST['borrar_cliente'])) {
    // Agarrar el id del registro que se va a borrar
    $id_cliente = $_POST['id_cliente'];

    // Consulta de borrado
    $query = "DELETE FROM fmoxxo WHERE idEmp = '$id_cliente'";
    $resultado = mysqli_query($conexion, $query);

    // ¿Se eliminó correctamente la consulta?
    if ($resultado) {
        header('Location: ./index.php?eliminar=exito');
    } else
        die('Location: ./index.php?eliminar=error');
} else
    die("acceso prohibido...");
