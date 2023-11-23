<?php
$conexion = new mysqli('localhost', 'root', '', 'canciones');

$cancion = $_GET['id'];

$sql = "SELECT * FROM cancion c JOIN artista a ON c.idArtista = a.idArtista WHERE idCancion = $cancion";
$resultado = $conexion -> query($sql);

while($fila = $resultado -> fetch_assoc()) {
    $idCancion = $fila['idCancion'];
    $titulo = $fila['titulo'];
    $duracion = $fila['duracion'];
    $lanzamiento = $fila['lanzamiento'];
    $genero = $fila['genero'];
    $descripcion = $fila['descripcion'];
    $imagen = $fila['img'];
    $nombreArtista = $fila['nombre'];
    $apellidoArtista = $fila['apellido'];
    $bandaArtista = $fila['banda'];

    echo '<section class="cancion-singular">';
            echo '<figure>';
                echo "<img src='$imagen' alt='$nombreArtista $apellidoArtista'>";
            echo '</figure>';
            echo '<div class="cancion-body">';
                echo "<h1>$titulo</h1>";
                echo "<p>$descripcion</p>";
                echo "<ul>";
                    echo "<li><strong>Artista:</strong> $nombreArtista $apellidoArtista</li>";
                    echo "<li><strong>Lanzamiento:</strong> $lanzamiento</li>";
                    echo "<li><strong>Duración:</strong> $duracion</li>";
                    echo "<li><strong>Genero:</strong> $genero</li>";
                echo "</ul>";
            echo '</div>';
    echo '</section>';
}
?>