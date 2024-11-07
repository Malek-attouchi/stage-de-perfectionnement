<?php
include 'nav.php';
// Connexion à la base de données
$dbname = "assurence";
$servername = "localhost";
$username = "root";
$password = "";

// Vérifier la connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Récupérer les données depuis la table form_data
$query = "SELECT id, nom, prenom, email, phone, assureur, numcontrat, motifselect, motiftext, fileinputs FROM form_data";
$resultat = $conn->query($query);

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Affichage des données</title>
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

    <br><h2>Tableau des données d'assurance</h2><br>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Email</th>
            <th>Téléphone</th>
            <th>Assureur</th>
            <th>Numéro Contrat</th>
            <th>Motif Sélectionné</th>
            <th>Motif Texte</th>
        </tr>

        <?php
        // Afficher les données dans le tableau
        while ($row = $resultat->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['nom'] . "</td>";
            echo "<td>" . $row['prenom'] . "</td>";
            echo "<td>" . $row['email'] . "</td>";
            echo "<td>" . $row['phone'] . "</td>";
            echo "<td>" . $row['assureur'] . "</td>";
            echo "<td>" . $row['numcontrat'] . "</td>";
            echo "<td>" . $row['motifselect'] . "</td>";
            echo "<td>" . $row['motiftext'] . "</td>";
            echo "<td>" . $row['fileinputs'] . "</td>";
            echo "</tr>";
        }

        // Fermer la connexion
        $conn->close();
        ?>

    </table>

</body>
</html>
