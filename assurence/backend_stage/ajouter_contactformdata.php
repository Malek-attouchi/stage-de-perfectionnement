<?php
require_once 'connexion.php';
$reponse = array();
if (isset($_POST['nom']) && isset($_POST['prenom']) && isset($_POST['email']) && isset($_POST['telephone']) && isset($_POST['sujet'])) {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $telephone = $_POST['telephone'];
    $sujet = $_POST['sujet'];
    $requete = $con->prepare("INSERT INTO contactform_data (nom,prenom,email,telephone,sujet) VALUES(?,?,?,?,?)");
    $requete->bind_param('sssss', $nom, $prenom, $email, $telephone, $sujet);
    if ($requete->execute()) {
        $reponse['error'] = false;
        $reponse['message'] = "votre donner est bien enregistrée";
        echo "donnée ajoutée";
    }
} else {
    echo "remplir tous les champs";
}
?>
