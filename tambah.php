<?php
include("./config.php");

// Compruebe si se ha hecho clic en el botón de registro o no
if (isset($_POST['registrar'])) {
    // recuperar datos del formulario
    $nom = $_POST['nom'];
    $ape = $_POST['ape'];
    $idsuc = $_POST['idsuc'];
    $fenac = $_POST['fenac'];
    $feing = $_POST['feing'];
    $puesto = $_POST['puesto'];
    $sueldo = $_POST['sueldo'];

    // Consulta
    $query = "INSERT INTO fmoxxo(NombreEmp, ApellidoEmp, IdSuc, FechaNac, FechaIng, Puesto, Sueldo)
    VALUES('$nom', '$ape', '$idsuc', '$fenac', '$feing', '$puesto', '$sueldo')";
    $resultado = mysqli_query($conexion, $query);

    // ¿Comprueba si la consulta se guardó correctamente?
    if ($resultado)
        header('Location: ./index.php?resultado=exito');
    else
        header('Location: ./index.php?resultado=error');
} else
    die("Akses dilarang...");
