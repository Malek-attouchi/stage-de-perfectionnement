<?php
//session_start();
$connecte = false;
if (isset($_SESSION['users'])) {
    $connecte = true;
}
?>

<!DOCTYPE html>
<html lang="en" >
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
            background-color: #2C3E50;
            color: #1B254D;
        }

        .navbar-brand {
            font-size: 1.5em;
        }

        .navbar-nav .nav-link {
            color: white;
        }

        .navbar-nav .nav-link:hover {
            color: #ecf0f1;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Resiliatum</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <?php
            $currentPage = $_SERVER['PHP_SELF'];
            ?>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link <?php if ($currentPage == 'index.php') echo 'active' ?>"
                           aria-current="page" href="index.php"><i class="fa-solid fa-home"></i> Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <?php if ($currentPage == 'signup.php') echo 'active' ?>"
                           aria-current="page" href="signup.php"><i class="fa-solid fa-user-plus"></i>
                            Ajouter utilisateur</a>
                    </li>
                    <?php
                    if ($connecte) {
                        ?>
                        <li class="nav-item">
                            <a class="nav-link <?php if ($currentPage == 'liste_assureurs.php') echo 'active' ?>"
                               aria-current="page" href="liste_assureurs.php"><i
                                        class="fa-brands fa-dropbox"></i> Liste des Assureurs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?php if ($currentPage == 'liste_motifs.php') echo 'active' ?>"
                               aria-current="page" href="liste_motifs.php"><i class="fa-solid fa-tag"></i>
                                Liste des Motifs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="deconnexion.php"><i
                                        class="fa-solid fa-right-from-bracket"></i> Déconnexion</a>
                        </li>
                        <?php
                    } else {
                        ?>
                        <li class="nav-item">
                            <a class="nav-link <?php if ($currentPage == 'signin.php') echo 'active' ?>"
                               href="signin.php"><i class="fa-solid fa-arrow-right-to-bracket"></i> Connexion</a>
                        </li>
                        <?php
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
