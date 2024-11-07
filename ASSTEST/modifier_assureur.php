<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier un Assureur</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            max-width: 400px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<?php include 'nav.php' ?>
<?php
// Connexion à la base de données
$dbname = "assurence";
$servername = "localhost";
$username = "root";
$password = "";

// Vérifier la connexion
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Récupérer l'ID de l'assureur à modifier
$id = $_GET['id'];

// Récupérer les données actuelles de l'assureur
$result = $conn->query("SELECT * FROM assureurs WHERE id=$id");

// Vérifier si la requête SELECT a réussi
if ($result !== false) {
    $row = $result->fetch_assoc();

    echo "<h2>Modifier un assureur</h2>";

    echo "<form id='modificationForm' action='modifier_assureur_action.php' method='POST'>";
    echo "<input type='hidden' name='id' value='" . $row['id'] . "'>";
    echo "Assureur : <input type='text' name='assureur' value='" . $row['assureur'] . "' required><br>";
    echo "Adresse : <input type='text' name='adresse' value='" . $row['adresse'] . "' required><br>";
    echo "Ville : <input type='text' name='ville' value='" . $row['ville'] . "' required><br>";
    echo "<input type='submit' value='Enregistrer les modifications'>";
    echo "</form>";

    // Ajouter le script JavaScript
    echo "<script>
        document.getElementById('modificationForm').addEventListener('submit', function() {
            alert('Assureur modifié');
            window.location.href = 'liste_assureurs.php';
        });
    </script>";
} else {
    echo "Erreur lors de la récupération des données de l'assureur : " . $conn->error;
}

// Fermer la connexion
$conn->close();
?>

</body>
</html>
