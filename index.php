<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>as melhores cancoes da historia</title>
</head>
<body>
    <header class="header-inicio">
        <h3>AS MELHORES CANCOES DA HISTORIA</h3>
    </header>
    <main class="container">
        <div class="buscador">
            <h1>Canciones</h1>
            <form action="buscador.php" method="get">
                <input type="text" name="cancion" placeholder=". . .">
                <button type="submit">Buscar</button>
            </form>
        </div>
        <section id="canciones" class="canciones">     
            <?php include 'php/obtener_canciones.php'; ?>
        </section>
        <h1>Albumes</h1>
        <section id="albumes" class="albumes">
            <?php include 'php/obtener_albumes.php' ?>
        </section>
    </main>
    <footer>
        <p>Hecho por Grippaldi y Leites</p>
    </footer>
</body>
</html>