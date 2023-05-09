<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creation Du compte</title>
    <link rel="stylesheet" href="creationDuCompte.css" >
</head>
<body>
    <header >
        <div class="alignement">
            <Ul class="bar containerRow">
                <li class="containerRow "><button> <a href=""><img src="img/arrow-circle-left.png" alt="flechgauche"></a></button> <h5> Aller au journal</h5></li>
                <li><h2>OneMediaPiece Blog</h2> </li>
                <div class="containerRow">
                <li class=" containerRow"><h5>Sign In</h5> <button> <a href=""><img src="img/flecheDroite.png" alt="flechright"></a></button></li>
                <li><img src="img/menu.png" alt="menu"></li>
                </div>
            </Ul>
        </div>
    </header>
    <section>
        <div class="titre containerRow">
            <button><a href=""> <img src="img/home.png" alt="home"></button></a>
            <h1>Bienvenu Chez OneMediaPiece Blog</h1>

        </div>
        <div class="formulaire">
            <figure>
                <fieldset>
                    <legend>Si vous n'avez pas encore un compte, inscrivez-vous : </legend>
                    <form action="http://localhost:8080/blog-bge/compte" method="post" class="containerColunm" >
                        <label for="pseudonyme"> Pseudonyme * : </label> <input type="text" for = "pseudonyme" name="pseudonyme" required>
                        
                        <label for="email"> Email * :  </label> <input type="text" name="email" required >
                        
                        <label for="motDePass"> Votre mot de pass * :   </label> <input type="password" name="motDePass1" required>
                       
                        <label for="motDePass">Confirmation de votre mot de pass * : </label> <input type="password" name ="motDePass2" required> 
                        
                        <div class="submit"><input type="submit" value="Envoyer" > <img src="img/envoyer.png" alt=""></div>

                    </form>
                </fieldset>
            </figure>
            <figure>
                <fieldset>
                    <legend>Si vous avez déjà un compte, connectez-vous : </legend>

                    <form action="http://localhost:8080/blog-bge/connection" method="post" class="containerColunm"  >
                       
                        <label for="email"> Email * :  </label><input type="text" name="email" required>
                        
                        <label for="motDePass"> Votre mot de pass * : </label> <input type="password" name="motDePassConnection" required> 
                        
                        <div class="submit containerRow"> <a href=""><input type="submit" value="Envoyer " > <img src="img/envoyer.png" alt=""></a> </div>

                    </form>
                </fieldset>
            </figure>

        </div>

    </section>
    <footer class = " containerRow">
        
        <div class=" containerRow">
            <p>Copyright  ©2023</p>
            <p>Privacy</p>
            <p>Cookie Management</p>
        </div>
        <div class=" containerColumn droite">
            <div  id="contact" class="container containerRow " id="alignementBas">
                <div>Contactez-nous : </div>
                <div>
                    <button><img src="img/mail.png" alt="email"></button>
                    <button><img src="img/prime_instagram.png" alt="instegram"></button>
                    <button><img src="img/linkedin.png" alt="linkedin"></button>
                    <button><img src="img/facebook.png" alt="facebook"></button>
                    <button><img src="img/twitter.png" alt="twitter"></button>
                </div>  
            </div>
            <div class =" containerRow">
            <p><img src="img/location.png" alt="location"> adresse: XXX, rue XXX XXX France</p> 
            <p><img src="img/telephone.png" alt="telephone"> 05xxxxxxxx</p> 
            </div>
        </div>
    
    </footer>
    <script src = "creationDuCompte.js"></script>
</body>
</html>