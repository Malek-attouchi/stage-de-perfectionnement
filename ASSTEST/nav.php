<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
// Fonction de vérification de connexion
function estConnecte() {
    return isset($_SESSION['utilisateur_connecte']) && $_SESSION['utilisateur_connecte'] === true;
}

// Vérifie si le formulaire de connexion est soumis
if (isset($_POST['connexion'])) {
    // Dans une application réelle, vous devriez valider les informations d'identification
    // et définir la variable de session en conséquence.
    // Ici, je vais simplement simuler une connexion réussie.
    $_SESSION['utilisateur_connecte'] = true;
}

// Vérifie si le formulaire de déconnexion est soumis
if (isset($_POST['deconnexion'])) {
    // Détruit la session et redirige vers la page de connexion
    session_destroy();
    header("Location: signin.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            width: 100%;
        }

        .navbar {
            background-color: #2C3E50; /* Couleur de fond */
            color: white; /* Couleur du texte */
        }

        .navbar-brand {
            font-size: 1.5em; /* Taille du texte de la marque */
        }

        .navbar-nav .nav-link {
            color: white; /* Couleur du texte des liens */
        }

        .navbar-nav .nav-link:hover {
            color: #ecf0f1; /* Couleur du texte au survol */
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary w-100">
        <div class="container-fluid">
        <a class="navbar-brand" href="#">
                <img src="logo1.png" alt="Logo" height="60">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Accueil</a>
                    </li>
                    <?php
                    // Si l'utilisateur est connecté, affichez ces éléments supplémentaires
                    if (estConnecte()) {
                        echo "<li class='nav-item'>";
                        echo "<a class='nav-link' href='liste_assureurs.php'>Liste des assureurs</a>";
                        echo "</li>";
                        echo "<li class='nav-item'>";
                        echo "<a class='nav-link' href='liste_motifs.php'>Liste des motifs</a>";
                        echo "</li>";
                        echo "</li>";
                        echo "<li class='nav-item'>";
                        echo "<a class='nav-link' href='client.php'>Liste des client</a>";
                        echo "</li>";
                        echo "<li class='nav-item'>";
                        echo "<a class='nav-link' href='contact.php'>Liste des contact</a>";
                        echo "</li>";
                        echo "<li class='nav-item'>";
                        echo "<form method='post' action=''>";
                        echo "<button type='submit' class='nav-link btn btn-link' name='deconnexion'>Déconnexion</button>";
                        echo "</form>";
                        echo "</li>";
                    } else {
                        // Si l'utilisateur n'est pas connecté, affichez le lien de connexion
                        echo "<li class='nav-item'>";
                        echo "<a class='nav-link' href='signin.php'>Connexion</a>";
                        echo "</li>";
                        echo "<li class='nav-item'>";
                        echo "<a class='nav-link' href='signup.php'>Ajouter utilisateur</a>";
                        echo "</li>";
                    }
                    ?>
                </ul>
            </div>
        </div>
    </nav>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>

</html>
