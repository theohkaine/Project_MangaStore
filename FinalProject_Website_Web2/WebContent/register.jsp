<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
  	<!-- Tab Icon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">   
    <!-- Titre du site web -->
    <title>Livre-Chan Magasin Manga/LNovel</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Icons font CSS-->
    <link href="vendorRegister/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendorRegister/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Vendor CSS-->
    <link href="vendorRegister/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendorRegister/datepicker/daterangepicker.css" rel="stylesheet" media="all">	
    <!-- Main CSS-->
    <link href="css/mainRegister.css" rel="stylesheet" media="all">    
    <!-- Custom css pour le projet -->
    <link href="css/mySyle.css" rel="stylesheet">
    <link href="css/sideBar.css" rel="stylesheet">
    <script src="js/jquery/jquery-3.1.0.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>

</head>

<%String Wrong= (String) session.getAttribute("WrongEmailPassword"); 
     if (Wrong == null) 
		{
                	
        %>
       <body>
       <%}else{ %>
       <body onload="myFunction()">
       <%if(session!=null)
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
                  <h5 class="textCenter">Veuillez saisir un autre e-mail.</h5>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Fermer</button>
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
            <a class="title">Livre-Chan</a>
        </ul>
        <ul class ="navbar-nav mr-auto">
            <a class = "semi-title">Magasin Manga/LNovel</a>
         </ul>
  </nav>
      
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h1>Infos d'inscription</h1>
                    <form method="POST" name="myform" action="Servlet">
                        <div class="input-group" data-validate = "Full Name is required">
                            <input class="input--style-3" type="text" placeholder="Nom complet" name="FullName" required>
                        </div>
                        <div class="input-group" data-validate = "Date of birth is required">
                            <input class="input--style-3 js-datepicker"  type="text" READONLY placeholder="Date de naissance" name="BirthDate" required>
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>                        
                        <div class="input-group" data-validate = "Valid address is required: ex@abc.xyz">
                            <input class="input--style-3" type="text" placeholder="Address" name="Adresse" required>
                        </div>                        
                        <div class="input-group" data-validate = "Valid email is required: ex@abc.xyz">
                            <input class="input--style-3" type="email" placeholder="Email" name="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
                        </div>                                                
                        <div class="input-group" data-validate = "Password must be 8 characters including 1 uppercase letter, 1 lowercase letter and numeric characters">
                            <input class="input--style-3" type="password" placeholder="Mot de passe" name="pwd" id ="pwd" data-minlength="8" maxlength="20" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
                            
                        </div>                                             
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit" value="Submit" onClick="doSubmit()">Soumettre</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/rollups/aes.js"></script>
	<script>
	function myFunction() {
		$('#myModal').modal('show');
	}
	</script> 	
	<script src="js/enc.js"></script>       
    <!-- Jquery JS-->
    <script src="vendorRegister/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendorRegister/select2/select2.min.js"></script>
    <script src="vendorRegister/datepicker/moment.min.js"></script>
    <script src="vendorRegister/datepicker/daterangepicker.js"></script>
    <!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/4.3.1/jquery.min.js"></script>	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- Main JS-->
    <script src="js/global.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<!-- end document-->