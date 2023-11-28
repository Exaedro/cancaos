<?php
$conexion = new mysqli('localhost', 'root', '', 'canciones');

$sql = "SELECT idArtista, nombre, apellido FROM artista";
$result = $conexion -> query($sql);

while($fila = $result -> fetch_assoc()) {
    $idArtista = $fila['idArtista'];
    $nombre = $fila['nombre'];
    $apellido = $fila['apellido'];

    echo '<div class="artista">';
        echo "<span class='id'>$idArtista</span>";
        echo "<span class='nombre'>$nombre $apellido</span>";
    echo '</div>';
}
?>