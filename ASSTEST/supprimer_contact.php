<?php
// Vérifier si l'ID du contact est défini dans l'URL
if(isset($_GET['id'])) {
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

    // Récupérer l'ID du contact à supprimer
    $id = $_GET['id'];

    // Requête SQL pour supprimer le contact
    $sql = "DELETE FROM contactform_data WHERE id=$id";

    // Si l'utilisateur a confirmé la suppression
    if (isset($_GET['confirm']) && $_GET['confirm'] == 'yes') {
        if ($conn->query($sql) === TRUE) {
            // Redirection vers la page "contact.php" après la suppression
            header("Location: contact.php");
            exit(); // Assure que le script ne continue pas après la redirection
        } else {
            echo "Erreur lors de la suppression du contact : " . $conn->error;
        }
    } else {
        // Récupérer les informations du contact avant la suppression
        $sql_select = "SELECT Nom, Prenom FROM contactform_data WHERE id=$id";
        $result = $conn->query($sql_select);
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $nom = $row['Nom'];
            $prenom = $row['Prenom'];
            // Afficher la boîte de dialogue de confirmation en JavaScript
            echo "<script>
                    var confirmation = confirm('Êtes-vous sûr de vouloir supprimer le contact $nom $prenom ?');
                    if (confirmation) {
                        // Si l'utilisateur clique sur 'OK', rediriger vers la page de suppression avec confirmation
                        window.location.href = 'supprimer_contact.php?id=$id&confirm=yes';
                    } else {
                        // Si l'utilisateur clique sur 'Annuler', rediriger vers la page 'contact.php'
                        window.location.href = 'contact.php';
                    }
                  </script>";
        } else {
            echo "Contact non trouvé.";
        }
    }

    // Fermer la connexion à la base de données
    $conn->close();
} else {
    echo "ID du contact non spécifié.";
}
?>
