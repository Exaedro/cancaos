<?php
$conexion = new mysqli('localhost', 'root', '', 'canciones');

$sql = "SELECT * FROM album";

$resultado = $conexion -> query($sql);

while($fila = $resultado -> fetch_assoc()) {
    $nombre = $fila['nombre'];
    $año = $fila['año'];
    $descripcion = $fila['descripcion'];

    echo '<section class="album">';
        echo '<div class="album-header">';
            echo "<h2>$nombre / $año</h2>";
        echo '</div>';
        echo '<div class="album-body">';
            echo "<p>$descripcion</p>";
        echo '</div>';
    echo '</section>';
}
?>