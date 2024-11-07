<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des assureurs</title>
        <!-- Inclure les fichiers CSS Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

        h2 {
            margin-bottom: 20px;
        }
        .btn-container {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
    </style>
    
</head>
<body>
    <?php include 'nav.php' ?>
    <h2>Liste des assureurs</h2>
    <div class="btn-container">
    <a href="ajouter_assureur.php" class="btn btn-primary">Ajouter assureur</a>    
    </div>
    <table border='1'>
        <?php
        // Votre code PHP pour afficher les assureurs ici
            
        // Connexion à la base de données
        $dbname = "assurence";
        $servername = "localhost";
        $username = "root";
        $password = "";

        $conn = new mysqli($servername, $username, $password, $dbname);

        // Vérifier la connexion
        if ($conn->connect_error) {
            die("La connexion a échoué : " . $conn->connect_error);
        }

        // Récupérer la liste des assureurs
        $result = $conn->query("SELECT * FROM assureurs");

        // Afficher la liste des assureurs
        echo "<tr><th>ID</th><th>Assureur</th><th>Adresse</th><th>Ville</th><th>Actions</th></tr>";

        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['assureur'] . "</td>";
            echo "<td>" . $row['adresse'] . "</td>";
            echo "<td>" . $row['ville'] . "</td>";
            echo "<td>
            <a href='modifier_assureur.php?id=" . $row['id'] . "' class='btn btn-primary btn-sm mr-1    '>Modifier</a>
            <a href='supprimer_assureur.php?id=" . $row['id'] . "' class='btn btn-danger btn-sm'>Supprimer</a>
            </td>";
            echo "</tr>";
        }

        echo "</table>";
      


        // Fermer la connexion
        $conn->close();
        ?>
    </table>
</body>
</html>
