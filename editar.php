<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<?php include './partials/navbar.php' ?>
<?php 
if(!isset($_GET['id'])) return;
$cancion = $_GET['id'];

$conexion = new mysqli('localhost', 'root', '', 'canciones');

$sql = "SELECT * FROM cancion WHERE idCancion = $cancion";

$result = $conexion -> query($sql);

while($fila = $result -> fetch_assoc()) {
    $titulo = $fila['titulo'];
    $duracion = $fila['duracion'];
    $lanzamiento = $fila['lanzamiento'];
    $descripcion = $fila['descripcion'];
    $genero = $fila['genero'];
    $imagen = $fila['img'];
    $ytlink = $fila['ytlink'];
    $idArtista = $fila['idArtista'];
}

echo "<form action='php/editar_cancion.php' method='post' class='agregar-form'>
        <input style='display:none;' value='$cancion' name='idCancion'>
        <h2>Editar cancion</h2>
        <label>Titulo</label>
        <input type='text' placeholder='. . .' required name='titulo' value='$titulo'>
        <label>Duración</label>
        <input type='text' name='duracion' required placeholder='. . .' value='$duracion'>
        <label>Lanzamiento</label>
        <input type='date' name='lanzamiento' required placeholder='. . .' value='$lanzamiento'>
        <label>Descripción</label>
        <textarea name='descripcion' required placeholder='. . .'>$descripcion</textarea>
        <label>Genero</label>
        <select name='genero' id='' value='$genero'>
            <option value='Rock'>Rock</option>
            <option value='Rap'>Rap</option>
            <option value='Clasica'>Musica Clasica</option>
        </select>
        <label>Imagen</label>
        <input type='text' required name='imagen' placeholder='. . .' value='$imagen'>
        <label>Id del artista</label>
        <input type='number' required name='idArtista' placeholder='. . .' value='$idArtista'>
        <label>Link de youtube</label>
        <input type='text' required name='ytlink' placeholder='. . .' value='$ytlink'>
        <button type='submit'>Subir</button>
    </form>";
?>
</body>
</html>