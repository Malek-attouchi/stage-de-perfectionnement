<?php
require_once 'connexion.php';
$reponse = array();
if (
    isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['email']) && isset($_POST['phone']) &&
    isset($_POST['assureur']) && isset($_POST['numcontrat']) && isset($_POST['motifselect']) && isset($_POST['motiftext'])
) {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $assureur = $_POST['assureur'];
    $numcontrat = $_POST['numcontrat'];
    $motifselect = $_POST['motifselect'];
    $motiftext = $_POST['motiftext'];

    // Gestion du fichier envoyé
    $fileinputs = null; // Initialisez à null


    $requete = $con->prepare("INSERT INTO form_data (nom,prenom,email,phone,assureur,numcontrat,motiftext,motifselect,fileinputs) VALUES(?,?,?,?,?,?,?,?,?)");
    $requete->bind_param('ssssssssb', $nom, $prenom, $email, $phone, $assureur, $numcontrat, $motiftext, $motifselect, $fileinputs);

    if ($requete->execute()) {
        $reponse['error'] = false;
        $reponse['message'] = "Votre donnée a bien été enregistrée";
        echo "Donnée ajoutée";
    } else {
        $reponse['error'] = true;
        $reponse['message'] = "Erreur lors de l'insertion des données : " . $requete->error;
        echo $reponse['message'];
    }
} else {
    $reponse['error'] = true;
    $reponse['message'] = "Remplir tous les champs";
    echo $reponse['message'];
}
?>
