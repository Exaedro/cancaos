<?php
$titulo = $_POST['titulo'];
$duracion = $_POST['duracion'];
$lanzamiento = $_POST['lanzamiento'];
$descripcion = $_POST['descripcion'];
$genero = $_POST['genero'];
$imagen = $_POST['imagen'];
$idArtista = $_POST['idArtista'];
$ytlink = $_POST['ytlink'];

$conexion = new mysqli('localhost', 'root', '', 'canciones');

$sql = "INSERT INTO cancion (titulo, duracion, lanzamiento, descripcion, genero, img, idArtista, ytlink) VALUES ('$titulo', '$duracion', '$lanzamiento', '$descripcion', '$genero', '$imagen', '$idArtista', '$ytlink')";
$conexion -> query($sql);

header('Location: ../index.php');
?>