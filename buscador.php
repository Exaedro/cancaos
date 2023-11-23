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
    
    <main class="container">
        <div class="buscador">
            <h1>Canciones encontradas</h1>
            <form action="buscador.php" method="get">
                <select name="genero">
                    <option value="rap">Rap</option>
                    <option value="clasica">Musica Clasica</option>
                    <option value="rock">Rock</option>
                </select>
                <button type="submit">Filtrar</button>
            </form>
        </div>

        <?php include 'php/buscar.php' ?> 
    </main>   
</body>
</html>