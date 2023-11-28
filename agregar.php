<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <?php include 'partials/navbar.php' ?>
    <main class="agregar-cancion">
        <div>
            <form action="php/subir_cancion.php" method="post" class="agregar-form">
                <h2>Subir cancion</h2>
                <label>Titulo</label>
                <input type="text" placeholder=". . ." required name="titulo">
                <label>Duración</label>
                <input type="text" name="duracion" required placeholder=". . .">
                <label>Lanzamiento</label>
                <input type="date" name="lanzamiento" required placeholder=". . .">
                <label>Descripcion</label>
                <textarea name="descripcion" required placeholder=". . ."></textarea>
                <label>Genero</label>
                <select name="genero" id="">
                    <option value="Rock">Rock</option>
                    <option value="Rap">Rap</option>
                    <option value="Clasica">Musica Clasica</option>
                </select>
                <label>Imagen</label>
                <input type="text" required name="imagen" placeholder=". . .">
                <label>Id del artista</label>
                <input type="number" required name="idArtista" placeholder=". . .">
                <label>Link de youtube</label>
                <input type="text" required name="ytlink" placeholder=". . .">
                <button type="submit">Subir</button>
            </form>
        </div>
        <div class="containerArtistas">
            <div class="artistas">
                <div class="artista">
                    <span>ID</span>
                    <span>Nombre del artista</span>
                </div>
                <?php include './php/obtener_artistas.php' ?>
            </div>
        </div>
    </main>
</body>
</html>