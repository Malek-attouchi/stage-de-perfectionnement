<?php
// Vérifier si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Vérifier si les données POST contiennent un ID valide
    $motif_id = isset($_POST['id']) ? $_POST['id'] : null;
    
    if ($motif_id === null) {
        echo "L'ID du motif n'est pas spécifié.";
        // Redirection vers une autre page en cas d'erreur
        header("Location: liste_motifs.php");
        exit;
    }

    // Récupérer les données du formulaire
    $name = $_POST['name'];
    $lettre_motif = $_POST['Lettre_motif'];

    // Connexion à la base de données
    $dbname ="assurence";
    $servername="localhost";
    $username="root";
    $password="";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("La connexion a échoué : " . $conn->connect_error);
    }

    // Préparer et exécuter la requête de mise à jour
    $stmt = $conn->prepare("UPDATE motifs SET name = ?, Lettre_motif = ? WHERE id = ?");
    $stmt->bind_param("ssi", $name, $lettre_motif, $motif_id);

    if ($stmt->execute() === TRUE) {
        // Redirection vers la page liste_motifs.php après la modification réussie
        header("Location: liste_motifs.php");
        exit;
    } else {
        echo "Erreur lors de la modification du motif : " . $conn->error;
    }

    // Fermer la connexion
    $conn->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Motif</title>
    <link rel="stylesheet" type="text/css" href="md.css">
</head>
<body>
    
    <div class="container">
    <?php include 'nav.php' ?>
        <h2>Modifier Motif</h2>

        <?php
        // Récupérer l'ID du motif à modifier
        $motif_id = isset($_GET['id']) ? $_GET['id'] : null;

        // Vérifier si l'ID est défini
        if ($motif_id === null) {
            echo "L'ID du motif n'est pas spécifié.";
            // Vous pouvez rediriger l'utilisateur vers une autre page ou afficher un message d'erreur approprié
            exit;
        }

        // Connexion à la base de données
        $dbname ="assurence";
        $servername="localhost";
        $username="root";
        $password="";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("La connexion a échoué : " . $conn->connect_error);
        }

        // Récupérer les données du motif à modifier
        $result = $conn->query("SELECT * FROM motifs WHERE id = $motif_id");
        $row = $result->fetch_assoc();

        // Afficher le formulaire de modification avec les données existantes
        ?>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
            <input type="hidden" name="id" value="<?php echo $motif_id; ?>">
            
            <label for="name">Nom :</label>
            <input type="text" name="name" value="<?php echo $row['name']; ?>" required><br>

            <label for="Lettre_motif">Lettre Motif :</label>
            <textarea name="Lettre_motif" rows="4" required><?php echo $row['Lettre_motif']; ?></textarea><br>

            <input type="submit" value="Modifier Motif">
        </form>
        <?php

        // Fermer la connexion
        $conn->close();
        ?>
    </div>
</body>
</html>
