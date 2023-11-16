<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>as melhores cancoes da historia</title>
</head>
<body>
    <header>
        <h3>AS MELHORES CANCOES DA HISTORIA</h3>
    </header>
    <main class="container">
        <h1>Canciones</h1>
        <section class="canciones">     
            <?php include 'php/obtener_canciones.php'; ?>
        </section>
        <h1>Albumes</h1>
        <section class="albumes">
            <?php include 'php/obtener_albumes.php' ?>
        </section>
    </main>
    <footer>
        <p>Hecho por los anasheis</p>
    </footer>
</body>
</html>