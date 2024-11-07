<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            background-image: url('admin2.jpg');
            background-size: cover;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        h4 {
            color: #333;
        }

        /* Style pour la barre de navigation (nav.php) */
        nav {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }

        /* Ajoutez d'autres styles selon vos besoins */
    </style>
</head>
<body>
    <?php include 'nav.php' ?>
    <div class="container py-2">
        <h4>Bienvenue sur votre tableau de bord admin</h4>
        <!-- Ajoutez ici le contenu de votre tableau de bord -->
    </div>
</body>
</html>
