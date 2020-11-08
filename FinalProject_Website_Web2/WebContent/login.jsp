<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
     <!-- Tab Icon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">    
    <!-- Titre du site web -->
    <title>Livre-Chan Magasin Manga/LNovel</title>
     <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">   
    <!-- Custom css pour le projet -->
    <link href="css/mySyle.css" rel="stylesheet">
    <link href="css/sideBar.css" rel="stylesheet">
    <!-- Custom css pour les symboles -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">	
</head>
<%String Wrong= (String) session.getAttribute("WrongEmailPassword2"); 
     if (Wrong == null) 
		{
                	
        %>
       <body>
       <%}else{ %>
       <body onload="myFunction()">
       <%  if(session!=null)
			session.invalidate();} %>

 <div class="modal show fade" id="myModal">
            <div class="modal-dialog">
              <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                  <h4 class="modal-title">Il semble y avoir un probl&egraveme ....</h4>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                  <h5 class="textCenter">Email ou mot de passe invalide. Veuillez r&eacuteessayer.</h5>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>

              </div>
            </div>
          </div>
            
	<!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top shadow-sm p-1 navbarBackGradient">
        <ul class ="navbar-nav">
            <div class = "bookIcon">
                <a href="ProductMainPageServlet"><img class="img-fluid" src="img/boook_Icon.png" alt="bookIcon"></a>
            </div>
        </ul>
        <ul class ="navbar-nav">
            <a class="title" id="title">Livre-Chan</a>
        </ul>
        <ul class ="navbar-nav mr-auto">
            <a class = "semi-title">Magasin Manga/LNovel</a>
         </ul>
  </nav>
    
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="img/test3.gif"alt="IMG">
				</div>

				<form method="POST"  name="myform" action="loginServlet" class="login100-form validate-form">
					<span class="login100-form-title">
                        Livre-Chan </br>
                        Identifiant
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="Email" placeholder="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password must be 8 characters including 1 uppercase letter, 1 lowercase letter and numeric characters">
						<input class="input100" type="password" name="pwd" id ="pwd" placeholder="Mot de passe" data-minlength="8" maxlength="20" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" value="Submit" onClick="doSubmit()">
							S'identifier
							</button>
						
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="register.jsp">
							Cr&eacuteez votre compte
							<i class="fa fa-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>	
	<script>
	function myFunction() {
		$('#myModal').modal('show');
	}
	</script> 
	<script src="js/enc.js"></script>
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>