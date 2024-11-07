<?php
// Vérifier si l'ID du motif à supprimer est défini dans l'URL
if(isset($_GET['id'])) {
    // Récupérer l'ID du motif à supprimer
    $motif_id = $_GET['id'];

    // Connexion à la base de données
    $dbname = "assurence";
    $servername = "localhost";
    $username = "root";
    $password = "";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("La connexion a échoué : " . $conn->connect_error);
    }

    // Préparer et exécuter la requête SQL de suppression
    $sql = "DELETE FROM motifs WHERE id = $motif_id";

    if ($conn->query($sql) === TRUE) {
        // Afficher l'alerte
        echo '<script>
                alert("Motif supprimé avec succès.");
                window.location.href = "liste_motifs.php";
              </script>';
    } else {
        echo "Erreur lors de la suppression du motif : " . $conn->error;
    }

    // Fermer la connexion
    $conn->close();
} else {
    echo "ID du motif non spécifié.";
}
?>
