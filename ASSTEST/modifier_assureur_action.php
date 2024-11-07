<?php
// Connexion à la base de données
$dbname ="assurence";
$servername="localhost";
$username="root";
$password="";

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

// Récupérer les données du formulaire de modification
$id = $_POST['id'];
$assureur = $_POST['assureur'];
$adresse = $_POST['adresse'];
$ville = $_POST['ville'];

// Préparer la requête SQL pour la modification
$sql = "UPDATE assureurs SET assureur='$assureur', adresse='$adresse', ville='$ville' WHERE id=$id";

// Exécuter la requête
if ($conn->query($sql) === TRUE) {
    // Redirection vers la liste des assureurs
    header("Location: liste_assureurs.php");
    exit();
} else {
    echo "Erreur lors de la modification de l'assureur : " . $conn->error;
}

// Fermer la connexion
$conn->close();
?>
