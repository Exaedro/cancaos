<?php
if(!isset($_GET['id'])) return;

$idCancion = $_GET['id'];

$conexion = new mysqli('localhost', 'root', '', 'canciones');
$sql = "DELETE FROM cancion WHERE idCancion = $idCancion";

$conexion -> query($sql);

header('Location: index.php');
?>