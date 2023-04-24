<!DOCTYPE html>
<html>
    <head>
        <title>Portfoleo</title>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="/css/styleindex.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

    </head>

    
    <body>

        <?php require_once "Config/config.php"?>
        <div class="navbar-fixed">  
            <nav>
                <div class="nav-wrapper #212121 grey darken-4" id="nav">
                    <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                    <a href="contact.php" class="brand-logo right" id="contact">Contact</a>
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
        
            <section >
                <div class="parallax-container">
                    <div class="parallax"><img src="img/cutimg1.jpg"></div>
                </div>
                <div class="section white">
                    <div class="row container">
                        <h1 class="header">Bienvenue sur mon portfolio !</h1>
                        <div class="row">
                            <div class="col s12 m6 l4">
                                <img src="img/GRISEY.jpg" alt="Grisey Léo" id="grisey">
                            </div>
                            <div class="col s12 m6 l7">
                                <p class="grey-text text-darken-3 lighten-3"> 
                                    Bonjour et bienvenue sur mon portfolio! Je suis Léo Grisey, un étudiant passionné de cybersécurité âgé de 18 ans et résidant dans la ville de Lyon. Actuellement en première année à Guardia, je suis déterminé à acquérir toutes les compétences nécessaires pour devenir un expert en sécurité informatique.
                                    <br>
                                    <br>
                                    En dehors des cours, je suis également très actif et je m'implique dans différentes activités. J'aime la musique et je joue de la basse depuis plusieurs années. J'adore aussi les sports de plein air comme la randonnée, le parkour et le hand. J'ai également participé à plusieurs compétitions de jeux en ligne, notamment des tournois de jeux de stratégie.
                                    <br>
                                    <br>
                                    Je suis un travailleur acharné et je suis constamment à la recherche de nouveaux défis pour améliorer mes compétences en cybersécurité. J'aime également travailler en équipe et je crois que la collaboration est essentielle pour réussir dans ce domaine.
                                    <br>
                                    <br>
                                    Si vous cherchez un professionnel passionné, compétent et dévoué dans le domaine de la cybersécurité, je suis votre homme! N'hésitez pas à me contacter pour discuter de tout projet ou opportunité que vous pourriez avoir en tête
                                    <br>
                                    <br>
                                    Merci de votre intérêt et j'espère avoir l'occasion de discuter avec vous prochainement.
                                </p>
                            </div>
                            <div class="socialmedia col s12 m12">
                                <br>
                                <br>
                                <h2 class="socialmediatitle grey-text text-darken-3 lighten-3" id="retrouve"> Ou me retrouver ? </h2>
                                <br>
                                <div class="socialmediapictures col s12 m4 l4" >
                                <a href="https://github.com/requinxv" > <img src="img/github.png" alt="requinxv" id="pictures" onmouseover="grossirImage(this)" onmouseout="retrecirImage(this)"></a>
                                    <br>
                                    <a href="https://github.com/Sharkosss" id="color"> requinxv </a> 
                                    <br>
                                    <br>
                                </div>
                                <div class="socialmediapictures col s12 m4 l4">
                                    <a href="https://github.com/Sharkosss" > <img src="img/github.png" alt="Sharkosss" id="pictures"onmouseover="grossirImage(this)" onmouseout="retrecirImage(this)" > </a>
                                    <br>
                                    <a href="https://github.com/Sharkosss" id="color"> Sharkosss </a>
                                    <br>
                                    <br>
                                </div>
                                <div class="socialmediapictures col s12 m4 l4">
                                    <a href="https://www.linkedin.com/in/l%C3%A9o-grisey-6035a6241" > <img src="img/linkedin.png" alt="Sharkosss" id="pictures" onmouseover="grossirImage(this)" onmouseout="retrecirImage(this)"> </a>
                                    <br>
                                    <a href="https://www.linkedin.com/in/l%C3%A9o-grisey-6035a6241" id="color" > Léo </a>
                                    <br>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="parallax-container">
                    <div class="parallax"><img src="img/cut2img1.jpg"></div>
                </div>

            </section>
           
            <footer>
                © Mon site web - Tous droits réservés
            </footer>
        </div>
        
        <script src="js/jqueryjsmin.js" ></script>
        <script src="js/materialize.js"></script>
        <script src="js/index.js"></script>
       
        <!-- <div class="sidenav-overlay"></div> -->

    </body>
</html>
