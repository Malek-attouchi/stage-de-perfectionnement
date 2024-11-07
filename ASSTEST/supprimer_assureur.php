<?php
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

// Si l'ID de l'assureur à supprimer est défini dans l'URL
if (isset($_GET['id'])) {
    // Récupérer l'ID de l'assureur à supprimer
    $id = $_GET['id'];

    // Préparer la requête SQL pour la suppression
    $sql = "DELETE FROM assureurs WHERE id=$id";

    // Si l'utilisateur a confirmé la suppression
    if (isset($_GET['confirm']) && $_GET['confirm'] == 'yes') {
        if ($conn->query($sql) === TRUE) {
            // Redirection vers la liste des assureurs après la suppression
            header("Location: liste_assureurs.php");
            exit(); // Assure que le script ne continue pas après la redirection
        } else {
            echo "Erreur lors de la suppression de l'assureur : " . $conn->error;
        }
    } else {
        // Afficher un message de confirmation en JavaScript
        echo '<script>
                if (confirm("Êtes-vous sûr de vouloir supprimer cet assureur ?")) {
                    // Exécuter la requête de suppression si lutilisateur confirme
                    window.location.href = "supprimer_assureur.php?id=' . $id . '&confirm=yes";
                } else {
                    // Redirection vers la liste des assureurs si lutilisateur annule
                    window.location.href = "liste_assureurs.php";
                }
              </script>';
    }
}

// Fermer la connexion
$conn->close();
?>
