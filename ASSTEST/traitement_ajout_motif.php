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
    $name = $_POST['name'];
    $Lettre_motif = $_POST['Lettre_motif'];

    // Préparer et exécuter la requête SQL d'insertion
    $stmt = $conn->prepare("INSERT INTO motifs (name, Lettre_motif) VALUES (?, ?)");
    $stmt->bind_param("ss", $name, $Lettre_motif);

    if ($stmt->execute()) {
        echo "Motif ajouté avec succès.";
    } else {
        echo "Erreur lors de l'ajout du motif : " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
