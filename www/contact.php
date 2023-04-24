<?php
//Traitement du formulaire
if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    // Connexion à la base de données
    $pdo = new PDO(
        'mysql:host=localhost;dbname=contact;',
        'root',
        'root',
        array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
    );
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

    // Insertion des données du formulaire
    $stmt = $pdo->prepare("INSERT INTO contact (name, email, message) VALUES (:name, :email, :message)");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':message', $message);
    $stmt->execute();

    $pdo = null;
    $message_envoye = "Votre message a été envoyé avec succès !";
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Me contacter</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/stylepage.css">
    <meta charset="UTF-8">
</head>
<body>
    <?php require_once "Config/config.php"?>
    <div class="navbar-fixed">  
        <nav>
            <div class="nav-wrapper #212121 grey darken-4" id="nav">
                <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <a href="index.php" class="brand-logo right" id="contact">Acceuil</a>
                <ul id="nav-mobile" class="left hide-on-med-and-down">
                    <li><a href="index.php">Accueil</a></li>
                    <li><a href="cv.php">CV</a></li>
                    <li>
                        <a class="dropdown-trigger" data-beloworigin="true" href="#!" data-target="dropdown1">
                            Jeux<i class="material-icons right">arrow_drop_down</i>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-trigger" data-beloworigin="true" href="#!" data-target="dropdown2">
                            Projects<i class="material-icons right">arrow_drop_down</i>
                        </a>
                    </li>
        
                </ul>       
            </div>
        </nav>


        <ul id="slide-out" class="sidenav">
            <li>
                <div class="user-view">
                        <div class="background">
                            <img src="img/black.jpg">
                        </div>
                    <a href="#user"><img class="circle" src="img/GRISEY2.jpg"></a>
                    <a href="#name"><span class="white-text name">GRISEY</span></a>
                    <a href="#email"><span class="white-text email">Léo</a></span></a>
                </div>
            </li>
            <li><a href="index.php">Acceuil</a></li>
            <li><a href="cv.php"> Mon CV</a></li>
            <li><div class="divider"></div></li>
            <li>
                <a class="dropdown-trigger" data-beloworigin="true" href="#!" data-target="dropdown3">
                    Jeux<i class="material-icons right">arrow_drop_down</i>
                </a>
            </li>
            <li><div class="divider"></div></li>
        
            <li>
                <a class="dropdown-trigger" data-beloworigin="true" href="#!" data-target="dropdown4">
                    Projects<i class="material-icons right">arrow_drop_down</i>
                </a>
            </li>

        </ul>


        <ul id="dropdown1" class="dropdown-content dropdown-color">
            
            <li><a href="games/loadings/loading_blackjack.php">Blackjack</a></li>
            <li><a href="games/loadings/loading_pendu.php">Pendu</a></li>
        </ul>

        <ul id="dropdown2" class="dropdown-content dropdown-color2">
            
            <?php
            $sql = "SELECT * FROM projects";
            $pre = $pdo_projects-> prepare($sql);
            $pre->execute();
            $projects = $pre->fetchall(PDO::FETCH_ASSOC);

            foreach($projects as $project){
            ?> 
            <li><a href="project.php?id=<?php echo $project['id'] ?>"><?php echo $project['projectname']?></a></li>
            <?php
            }
            ?>
        </ul>
        
        <ul id="dropdown3" class="dropdown-content dropdown-color">
            
            <li><a href="games/loadings/loading_blackjack.php">Blackjack</a></li>
            <li><a href="games/loadings/loading_pendu.php">Pendu</a></li>
        </ul>


        <ul id="dropdown4" class="dropdown-content dropdown-color2">
            
            <?php
            $sql = "SELECT * FROM projects";
            $pre = $pdo_projects-> prepare($sql);
            $pre->execute();
            $projects = $pre->fetchall(PDO::FETCH_ASSOC);

            foreach($projects as $project){
            ?> 
            <li><a href="project.php?id=<?php echo $project['id'] ?>"><?php echo $project['projectname']?></a></li>
            <?php
            }
            ?>
        </ul>
        
    </div>
    <div id="main">
        <section>
            <h1>Me contacter</h1>
            <?php if (isset($message_envoye)) { ?>
                <div class="success-message"><?php echo $message_envoye; ?></div>
                    <?php unset($message_envoye); } ?>
 

            <form action="" method="post">
                <input type="text" name="name" placeholder="Nom" required /><br />
                <input type="email" name="email" placeholder="Email" required /><br />
                <textarea name="message" placeholder="Votre message" required></textarea><br />
                <input type="submit" name="submit" value="Envoyer" class="oval-button" />
            </form>
        </section>
    
    
        <footer class="footer">
            © Mon site web - Tous droits réservés
        </footer>
    </div>

</body>
</html>
<script src="js/jqueryjsmin.js" ></script>
<script src="js/materialize.js"></script>
<script src="js/contact.js"></script>
