<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $dbname ="assurence";
    $servername="localhost";
    $username="root";
    $password="";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("La connexion a échoué : " . $conn->connect_error);
    }

    // Récupérer les données du formulaire
    $id = $_POST['id'];
    $name = $_POST['name'];
    $Lettre_motif = $_POST['Lettre_motif'];

    // Préparer et exécuter la requête SQL de modification
    $stmt = $conn->prepare("UPDATE motifs SET name = ?, Lettre_motif = ? WHERE id = ?");
    $stmt->bind_param("ssi", $name, $Lettre_motif, $id);

    if ($stmt->execute()) {
        echo "Motif modifié avec succès.";
    } else {
        echo "Erreur lors de la modification du motif : " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
