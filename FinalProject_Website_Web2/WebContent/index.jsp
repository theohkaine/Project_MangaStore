<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList" %>
 <%@page import="VO.*" %>
  <%@page import="DAO.*" %>
 <% ArrayList<ProductMainPage>products = (ArrayList)request.getAttribute("products");%>
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
    <title id="titre">Livre-Chan Magasin Manga/LNovel</title>
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
            <a class="title" id="navTitre">Livre-Chan</a>
        </ul>
        <ul class ="navbar-nav mr-auto">
            <a class = "semi-title" id="navSemiTitle">Magasin Manga/LNovel</a>
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
                   <% 
                String Name= (String) session.getAttribute("Email");  
                String AdminName= (String) session.getAttribute("Admin"); 
                
                if (Name == null && AdminName == null) 
                {
                	
                %>
                <a class="btn btn-primary" id="SignIn" href="login.jsp">Enregistrer</a>
               <%  
               } else
               
               {
                %>             
                 Bonjour </br><a class="btn btn-primary btn-md" href = "logoutServlet" id = "logout" type="submit">D&eacuteconnecter</a>                      
               
                    <a href="DirectionCartServlet" type="submit" id = "cart" class="btn btn-primary btn-md">
                    <span class="glyphicon glyphicon-shopping-cart">
                        <i class="fa fa-shopping-cart"></i>
                        </span> Panier</a>
                        <%  } %>
                </li>               
            </nav>
        </ul>
      </div>
  </nav>
    
    <!-- La page -->
<div class="d-flex" id="wrapper">       
    <!-- Sidebar avec l'image -->
    <div class="bg-light navbarBackGradient" id="sidebar-wrapper">
            <div class="sidebar-heading"><a id = "BookChanMenu" >Livre-Chan </a>
                <img class="img-fluid" src="img/book_menu.png" width="51" alt="bookIcon">
                
            </div>
        <div class="list-group list-group-flush">    
        <ul id="accordion" class="accordion">
          <li>
            <div class="link"><i class="fa fa-book"></i>Manga<i class="fa fa-chevron-down"></i>
            </div>
            <ul class="submenu">
              <li><a id="home" href="ProductMainPageServlet">Acceuil</a></li>
              <li><a href="ProductMangaShounenServlet">Shounen</a></li>
              <li><a href="ProductMangaSeinenServlet">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-book"></i>Light Novel<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a id="home2" href="ProductMainPageServlet">Acceuil</a></li>
              <li><a href="ProductLNShounenServlet">Shounen</a></li>
              <li><a href="ProductLNSeinenServlet">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-language"></i>Language<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="#" id="langue">Anglais</a></li>
            </ul>
          </li>
                       <%                                  
                if (AdminName != null) 
                {
                	
                %>
            <li>
                <a href="admin.jsp" style="color: #030303">
                    <div class="link">
                    <i class="fa fa-user-circle"></i>
                        Admin
                    </div>
                </a>
          </li>
           <%  } %>          
        </ul>
        </div>
    </div>
    
    <!-- Page Content -->
 <div class = "container">
 <div class="modal fade" id="myModal">
            <div class="modal-dialog">
              <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                  <h4 id="modal" class="modal-title">Il semble y avoir un probl&egraveme ...</h4>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                  <h5 id="modalText" class="textCenter">Veuillez vous connecter avant d'acheter notre s&eacutelection</h5>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                  <button id="modalButton" type="button" class="btn btn-danger" data-dismiss="modal">Fermer</button>
                </div>
              </div>
            </div>
          </div>
 
    <div class = "row">                      
        <div class="col-lg-12 ">
                <div id="carouselExampleIndicators" class="carousel slide my-4 shadow-lg" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                  </ol>
                  <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                      <img class="d-block img-fluid" src="img/Banner_One.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block img-fluid" src="img/Banner_Two.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block img-fluid" src="img/Banner_Three.png" alt="Third slide">
                    </div>
                      <div class="carousel-item">
                      <img class="d-block img-fluid" src="img/Banner_Four.png" alt="Third slide">
                    </div>
                      </div>
                  </div>
                </div>
            </div>
          <div class="container-fluid">
         
                
               <%for(int i = 0 ; i < products.size(); i++) {%>
            	<%ProductMainPage articleCourant = products.get(i); %>
            	
            	 <%if(i == 0 ){%>
            	<div class = "gradientImage shadow-lg">
               		<h4 id="feature">S&eacutelection</h4>
              	</div>
              <%}else if(i == 4 ){%>
				<div class = "gradientImage shadow-lg">
               		<h4>Manga</h4>
              	</div>
              <%}else if(i == 8){%>
              <div class = "gradientImage shadow-lg">
               	<h4>Light Novel</h4>
              </div>
              <%}%>
              <%if(i%4 == 0 ){%>
          <div class="row">
          <%}%>
            <div class="col-md-3 d-flex align-items-stretch">
                <div class="card h-100">             
                <div class="col-item">
                    <div class="card shadow-lg"> 
                        <div class = "inner">
                        
						<form method="POST" action="Cart">
                            <img class="card-img-top" src="<% out.print(articleCourant.getPhoto()); %>" name ="photo1" class="img-fluid" alt="Berserk">
                            </div>
                            
                        <div class="card-body">
                            <h5><%out.print(articleCourant.getName()); %></h5>
                                <p class="card-text"></p>
                        </div>
                        <div class="card-footer">
                             <h5>
                                 <div id="feature"><% out.print(articleCourant.getPrice()); %>$ CAD </div>
                            </h5>
                            <div class="form-group">                     
                                    <select class="form-control" id="bookForm<% out.print(articleCourant.getProductID()); %>" name="bookForm">   
                                    	  <option value ="1"></option>                                      
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                          <option value="4">4</option>
                                          <option value="5">5</option>
                                    </select>
                            </div> 
                            <%if (Name == null) 
			                {
			                %>
			                
			                <a class="btn btn-outline-primary" id="addCart" href="ProductMainPageServlet" data-toggle="modal" data-target="#myModal"><i class="fa fa-cart-plus" aria-hidden="true"> $$$ </i>
                            </a>
   
                            <%} else { %>	 
                             <button type="submit" id="addCart2" name="button" value= "button<% out.print(articleCourant.getProductID()); %>" class="btn btn-outline-primary"><i class="fa fa-cart-plus" aria-hidden="true"> $$$ </i>
                             </button>
                            <%} %>
                            </form>						
				        </div>
                    </div>  
                </div>
                </div>  
            </div>
             
            <%if((i+1)%4 == 0 || (i+1) == products.size()){%>
        </div>
        <%}%>
        <%}%>
    </div>     
  </div>
</div>  

  	<!-- Bootstrap core JavaScript -->
 	<script src="vendor/jquery/jquery.min.js"></script>
  	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
  	<!-- Menu Toggle Script -->
	<script src="js/MenuToggle.js"></script>     
    <!-- Accordion Script -->
	<script src="js/Accordion.js"></script> 
	<script src="js/Language.js"></script> 
    <!-- Footer -->
  <footer class="footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <p id="copyright" class="text-muted small mb-4 mb-lg-0">&copy; Livre-Chan 2019. Tous les droits sont r&eacuteserv&eacutes</p>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>