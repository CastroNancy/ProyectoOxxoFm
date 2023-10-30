<?php
include("./config.php");

// Compruebe si se ha hecho clic en el botón de editar o no
if (isset($_POST['editar_cliente'])) {
    // recuperar datos del formulario
    $id_cliente = $_POST['id_cliente'];
    $edit_nom = $_POST['edit_nom'];
    $edit_ape = $_POST['edit_ape'];
    $edit_suc = $_POST['edit_suc'];
    $edit_fenac = $_POST['edit_fenac'];
    $edit_feing = $_POST['edit_feing'];
    $edit_puesto = $_POST['edit_puesto'];
    $edit_sueldo = $_POST['edit_sueldo'];


    // Consulta
    $query = "UPDATE fmoxxo SET NombreEmp='$edit_nom', ApellidoEmp='$edit_ape', IdSuc='$edit_suc', FechaNac='$edit_fenac', FechaIng='$edit_feing', Puesto='$edit_puesto', Sueldo='$edit_sueldo' WHERE idEmp = '$id_cliente'";
    $resultado = mysqli_query($conexion, $query);

    // ¿Comprueba si la consulta se guardó correctamente?
    if ($resultado)
        header('Location: ./index.php?actualizar=exito');
    else
        header('Location: ./index.php?actualizar=error');
} else
    die("Acceso prohibido...");
