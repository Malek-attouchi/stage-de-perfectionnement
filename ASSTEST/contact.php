<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Contacts</title>
    <style>
        h2 {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-left: 10px;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
    </style>
</head>
<body>
    <?php include 'nav.php'; ?>

    <?php
    // Connexion à la base de données
    $dbname = "assurence";
    $servername = "localhost";
    $username = "root";
    $password = "";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Vérifier la connexion
    if ($conn->connect_error) {
        die("Échec de la connexion à la base de données : " . $conn->connect_error);
    }

    // Requête SQL pour récupérer la liste des contacts
    $sql = "SELECT id, Nom, Prenom, Email, Telephone, Sujet FROM contactform_data";

    $resultat = $conn->query($sql);

    // Vérifier si la requête a réussi
    if ($resultat) {
        // Afficher la liste des contacts
        echo "<h2>Liste des contacts :</h2>";
        echo "<table border='1'>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Email</th>
                    <th>Téléphone</th>
                    <th>Sujet</th>
                    <th>Action</th>
                </tr>";

        while ($row = $resultat->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['Nom']}</td>
                    <td>{$row['Prenom']}</td>
                    <td>{$row['Email']}</td>
                    <td>{$row['Telephone']}</td>
                    <td>{$row['Sujet']}</td>
                    <td><a href='mailto:{$row['Email']}?subject=Réponse à votre sujet'>Répondre</a> | <a href='supprimer_contact.php?id={$row['id']}'>Supprimer</a></td>
                </tr>";
        }

        echo "</table>";
    } else {
        echo "Erreur lors de l'exécution de la requête : " . $conn->error;
    }

    // Fermer la connexion à la base de données
    $conn->close();
    ?>
</body>
</html>
