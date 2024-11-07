<?php
/*if (isset($_POST['api_key'])) {
    $api_key = $_POST['api_key'];

    // Votre clé API secrète (à remplacer par votre propre clé)
    $clé_api_secrete = "test_key_api";

    // Vérifier si la clé API est valide
    if ($api_key != $clé_api_secrete) {
        $reponse['error'] = true;
        $reponse['message'] = "Clé API invalide.";
        echo json_encode($reponse);
        exit; // Arrêter l'exécution du script en cas de clé API invalide
    }
} else {
    $reponse['error'] = true;
    $reponse['message'] = "Clé API manquante.";
    echo json_encode($reponse);
    exit; // Arrêter l'exécution du script en cas de clé API manquante
}*/
header('Content-Type: application/json');
require_once 'connexion.php';
$reponse = array();

$query = $con->prepare("SELECT name,lettre_motif FROM motifs");

if ($query->execute()) {
    $motif = array();
    $resultat = $query->get_result();

    while ($elemt = $resultat->fetch_array(MYSQLI_ASSOC)) {
        $motif[] = $elemt;
    }

    $reponse['motif'] = $motif;
    echo json_encode($reponse); // Use json_encode to convert the array to JSON format
} else {
    $reponse['error'] = true;
    $reponse['message'] = 'impo';
    echo json_encode($reponse); // Use json_encode to convert the array to JSON format
}
?>