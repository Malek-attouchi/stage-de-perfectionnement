<!doctype html>
<html lang="en">
<head>
    <title>Ajouter motif</title>
</head>
<body>
<?php
// Connexion à la base de données
$dbname = "assurence";
$servername = "localhost";
$username = "root";
$password = "";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

include 'nav.php';
?>
<div class="container py-2">
    <h4>Ajouter Motif</h4>
    <?php
    if (isset($_POST['ajouter'])) {
        $name = $_POST['name'];
        $Lettre_motif = $_POST['Lettre_motif'];
        if (!empty($name) && !empty($Lettre_motif)) {
            // Vérifier si l'enregistrement existe déjà
            $existingRecord = $pdo->prepare('SELECT COUNT(*) FROM motifs WHERE name = ? OR Lettre_motif = ?');
            $existingRecord->execute([$name, $Lettre_motif]);
            $count = $existingRecord->fetchColumn();

            if ($count == 0) {
                // Insérer l'enregistrement si le motif n'existe pas encore
                $sqlState = $pdo->prepare('INSERT INTO motifs (name, Lettre_motif) VALUES (?, ?)');
                $inserted = $sqlState->execute([$name, $Lettre_motif]);

                if ($inserted) {
                    header('location: liste_motifs.php');
                    exit(); // Ajoutez cette ligne pour arrêter l'exécution du script après la redirection
                } else {
                    ?>
                    <div class="alert alert-danger" role="alert">
                        Database error: <?= $sqlState->errorInfo()[2] ?? 'Unknown error'; ?>
                    </div>
                    <?php
                }
            } else {
                // Rediriger même si le motif existe déjà
                header('location: liste_motifs.php');
                exit(); // Ajoutez cette ligne pour arrêter l'exécution du script après la redirection
            }
        } else {
            ?>
            <div class="alert alert-danger" role="alert">
                name , Lettre_motif , sont obligatoires.
            </div>
            <?php
        }
    }
    ?>
    <form method="post" enctype="multipart/form-data">
        <label class="form-label">name</label>
        <input type="text" class="form-control" name="name">

        <label class="form-label">Lettre_motif</label>
        <textarea class="form-control" name="Lettre_motif"></textarea>

        <input type="submit" value="Ajouter Motif" class="btn btn-primary my-2" name="ajouter">
    </form>
</div>
</body>
</html>
