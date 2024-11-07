<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ajouter assureur</title>
</head>
<body>
<?php
// Connexion à la base de données
$dbname = "assurence";
$servername = "localhost";
$username = "root";
$password = "";

// Création d'une instance PDO
try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Définir le mode de gestion des erreurs PDO sur exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Échec de la connexion : " . $e->getMessage();
    exit(); // Quitte le script en cas d'échec de la connexion PDO
}

include 'nav.php';
?>
<div class="container py-2">
    <h4>Ajouter assureur</h4>
    <?php
    if (isset($_POST['ajouter'])) {
        $assureur = $_POST['assureur'];
        $adresse = $_POST['adresse'];
        $ville = $_POST['ville']; // Corrected variable name here
        if (!empty($assureur) && !empty($adresse) && !empty($ville)) {
            try {
                // Spécifiez les colonnes dans la requête INSERT
                $sqlState = $pdo->prepare('INSERT INTO assureurs (assureur, adresse, ville) VALUES (?, ?, ?)'); // Corrected column name here
                $inserted = $sqlState->execute([$assureur, $adresse, $ville]); // Corrected variable name here

                if ($inserted) {
                    header('location: liste_assureurs.php');
                } else {
                    ?>
                    <div class="alert alert-danger" role="alert">
                        Erreur de base de données (40023).
                    </div>
                    <?php
                }
            } catch (PDOException $e) {
                echo "Erreur PDO : " . $e->getMessage();
            }
        } else {
            ?>
            <div class="alert alert-danger" role="alert">
                Assureur, adresse et ville sont obligatoires.
            </div>
            <?php
        }
    }
    ?>
    <form method="post" enctype="multipart/form-data">
        <label class="form-label">Assureur</label>
        <input type="text" class="form-control" name="assureur">

        <label class="form-label">Adresse</label>
        <input type="text" class="form-control" name="adresse">

        <label class="form-label">Ville</label>
        <input type="text" class="form-control" name="ville"> <!-- Corrected variable name here -->

        <input type="submit" value="Ajouter Assureur" class="btn btn-primary my-2" name="ajouter">
    </form>
</div>
</body>
</html>
