<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>list TypeCompte</title>
<link rel="stylesheet" href="css/listDeTypeCompte.css">
</head>
<body>
	<header>
		<div class="alignement">
			<Ul class="bar containerRow">
				<li class="containerRow "><button>
						<a href=""><img src="img/arrow-circle-left.png"
							alt="flechgauche"></a>
					</button>
					<h5>Aller au journal</h5></li>
				<li><h2>OneMediaPiece Blog</h2></li>
				<div class="containerRow">
					<li>
						<button>
							<a href="creation du compte.html" class=" containerRow"><h5>Sign
									In</h5> <img src="img/flechDroite.png" alt="flechright"></a>
						</button>
					</li>
					<li><img src="img/menu.png" alt="menu"></li>
				</div>
			</Ul>
		</div>
	</header>
	<section>
		<div class="titre ">

			<h1>List de type compte</h1>

		</div>

		<div class=" containerColunm ">
			<c:forEach items="${typeComptes}" var="typeCompte">
			<div class = "containerRow listTypeCompte">	
				<c:out value="${typeCompte.label}" />
				<div class="detail containerRow">
			    <button>
			    	<a href="http://localhost:8080/OneMediaPieceServlet/UpdateTypeCompte?id=${typeCompte.typeCompte}"> Mis à jour
			    	</a>
			    </button>
			    <button> 
				    <a href="http://localhost:8080/OneMediaPieceServlet/DeleteTypeCompte?id=${typeCompte.typeCompte}">  
				    <img src ="img/supprimer.png">
			    	</a>
			    </button>
			   
			    </div>
			</div>	
			</c:forEach>
		</div>
		


	</section>

	<footer class=" containerRow">

		<div class=" containerRow">
			<p>Copyright ©2023</p>
			<p>Privacy</p>
			<p>Cookie Management</p>
		</div>
		<div class=" containerColumn droite">
			<div id="contact" class="container containerRow " id="alignementBas">
				<div>Contactez-nous :</div>
				<div>
					<button>
						<img src="img/mail.png" alt="email">
					</button>
					<button>
						<img src="img/prime_instagram.png" alt="instegram">
					</button>
					<button>
						<img src="img/linkedin.png" alt="linkedin">
					</button>
					<button>
						<img src="img/facebook.png" alt="facebook">
					</button>
					<button>
						<img src="img/twitter.png" alt="twitter">
					</button>
				</div>
			</div>
			<div class=" containerRow">
				<p>
					<img src="img/location.png" alt="location"> adresse: XXX, rue
					XXX XXX France
				</p>
				<p>
					<img src="img/telephone.png" alt="telephone"> 05xxxxxxxx
				</p>
			</div>
		</div>

	</footer>
</body>

</html>