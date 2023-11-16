<?php
$conexion = new mysqli('localhost', 'root', '', 'canciones');

$sql = "SELECT * FROM cancion c JOIN artista a ON c.idArtista = a.idArtista";

$resultado = $conexion -> query($sql);

while($fila = $resultado -> fetch_assoc()) {
    $titulo = $fila['titulo'];
    $duracion = $fila['duracion'];
    $lanzamiento = $fila['lanzamiento'];
    $nombreArtista = $fila['nombre'];
    $apellidoArtista = $fila['apellido'];
    $bandaArtista = $fila['banda'];

    echo '<section class="cancion">';
        echo '<div class="artista">';
            echo "<h2>$nombreArtista $apellidoArtista</h2>";
        echo '</div>';
        echo '<div class="cancion-body">';
            echo "<h3>$titulo</h3>";
            echo "<p>$duracion / $lanzamiento</p>";
        echo '</div>';
    echo '</section>';
}
?>