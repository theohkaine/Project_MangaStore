<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Project Finale de Web II">
  <meta name="author" content="Tristan Araujo">
    
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

<body style="background-image: linear-gradient(to bottom, #38adae, #009ed0, #5e82d8, #b156ad, #cd295a)">

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
  <!-- Navigation 2 -->
  <nav class="navbar navbar-light static-top navbar-custom shadow-lg navbarGradient">
    <div class="container-fluid ">
         <button class="navbar-toggler custom-toggler toggler-example" id="menu-toggle">
            <span class="dark-blue-text">
                <i class="fas fa-bars fa-1x"></i>
             </span>
          </button>
        <ul class ="navbar-nav ml-auto">
            <nav class="custom-color ">
                <li class="nav-item active ">
                    <a class="btn btn-primary" href="logoutServlet">Admin D&eacuteconnection</a>
                </li>               
            </nav>
        </ul>
      </div>
  </nav>   
    <!-- La page -->
<div class="d-flex" id="wrapper">
        
    <!-- Sidebar avec l'image -->
    <div class="bg-light navbarBackGradient" id="sidebar-wrapper">
            <div class="sidebar-heading"><a id = "BookChanMenu">Livre-Chan 
                <img class="img-fluid" src="img/book_menu.png" width="51" alt="bookIcon">
                </a>
            </div>
        <div class="list-group list-group-flush">    
        <ul id="accordion" class="accordion">
          <li>
            <div class="link"><i class="fa fa-book"></i>Manga<i class="fa fa-chevron-down"></i>
            </div>
            <ul class="submenu">
              <li><a href="ProductMainPageServlet">Acceuil</a></li>
              <li><a href="MangaHtml/Shounen.jsp">Shounen</a></li>
              <li><a href="MangaHtml/Seinen.jsp">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-book"></i>Light Novel<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="ProductMainPageServlet">Acceuil</a></li>
              <li><a href="LightNovelHtml/ShounenLN.jsp">Shounen</a></li>
              <li><a href="LightNovelHtml/SeinenLN.jsp">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-language"></i>Language<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="#" id="FrenchTranslate">French</a></li>
              <li><a href="#" id="EnglishTranslate">English</a></li>
            </ul>
          </li>            
	           <li>
                <a href="admin.jsp" style="color: #030303">
                    <div class="link">
                    <i class="fa fa-user-circle"></i>
                        Admin
                    </div>
                </a>
          </li>
        </ul>
        </div>
    </div>
   <div class = "container">
       <!--  
        <div class="container-fluid">
            <div class = "gradientImage shadow-lg">
               <h4>Upload Image</h4>
              </div>
          <div class="row">
              <div class="col-md-12 col-centered">
              
               
                    <form action="uploadImageManga" method="post" enctype="multipart/form-data">
		                <input type="file" name="file" />
		                <input type="submit" value="upload" />
           			</form>     
              </div>
        </div>
    </div> 
       -->
       <div class="container-fluid">
           <div class = "gradientImage shadow-lg">
               <h4>Que mettre à jour</h4>
              </div>
          <div class="row">
       <div class="col-md-6 col-centered">
              <h4>Manga/LightNovel</h4>
           <div class = "textCenter">
                    <h5>Quel livre vous souhaitez modifier</h5>                    
                    <select class="form-group-sm" style="min-width: 100px;" name="books" id="books">
                            <option value="1"></option>
                            <option value="2">Manga</option>
                            <option value="3">Light Novel</option>
                    </select>
           <br>
           <br>
           <h5>Type de livre</h5>                   
           <select class="form-group-sm" style="min-width: 100px;" name="bookType"  id="bookType">
                            <option value="1"></option>
                            <option value="2">Shounen</option>
                            <option value="3">Seinen</option>
                    </select>
               </div>
              </div>
        </div>
        <br>
        <!--  
        <div class = "row">                      
        <div class="col-lg-12">
               <div class = "creditCardButton">
                   <a href="CreditCardServlet" class="btn btn-primary btn-md">
                    <span class="glyphicon">
                        <i class="fab fa-cc-visa" aria-hidden="true"></i>
                        </span> Carte de crédit</a>
               </div>
        </div>
    </div>
    -->
    </div>        
       <div class="container-fluid">
                <div class = "gradientImage shadow-lg">
               <h4>Quel tableau à mettre à jour</h4>
              </div>
          <div class="row">
            <div class="table-responsive">
            <table class="table table-dark table-hover table-sm" >
                  <thead>
                    <tr>
                      <th scope="col"></th>
                      <th scope="col">Manga/LightNovel</th>
                      <th scope="col">Nom</th>
                      <th scope="col">Prix</th>
                      <th scope="col">Mise a jour</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row"></th>
                      <td class="w-25">
                         <h5>img/MangaPictures/bleach_vol_54.jpg</h5>
                      </td>
                        <td><h5>Bleach Volume, Vol. 54</h5></td>
                        <td><h5>CAD $6.49</h5></td>
                        <td>
                        <a class="btn btn-primary" href="login.html">Mise a jour</a>
                        </td>
                    </tr>
                  </tbody>
                </table>   
              </div>
        </div>       
    </div>           
    </div>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap core JavaScript -->
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/4.3.1/jquery.min.js"></script>	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
  	<!-- Menu Toggle Script -->
	<script src="js/MenuToggle.js"></script>     
    <!-- Accordion Script -->
	<script src="js/Accordion.js"></script> 
	<script src="js/Language.js"></script> 

    <script>    
    $(document).ready(function() {    
        $('#books').change(function(){
            // Chercher les valeurs et elements requis.
            var val = $(this).val();
            var bookType = $('#bookType');            
            bookType.empty();
            // Si la valeur de province n'est pas Aucune on continue.
            // Si elle est Aucune on disable les select pour ville
            if (val != "Aucune"){                                  
                                      $.ajax({
                                        type: "GET",
                                        url:'GetProductName',
                                        data: {book: val},
                                        success: function (data, status){
                                            // On append l'information de la base de donnees pour les villes dans
                                            // le select pour les villes et on enleve le disable dessus.
                                           
                                            $('#bookType').append(data);
                                            $('#bookType').prop('disabled', false);
                                        }
                                            });                                                                       
            } else {
                // Si la valeur de province est Aucune on disable ces select
                bookType.append('<option>Aucune</option>');
                bookType.prop('disabled', true);
            }
        });
    });
    </script>   
    <!-- Footer -->
  <footer class="footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <p class="text-muted small mb-4 mb-lg-0">&copy; Book-Chan 2019. All Rights Reserved.</p>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>