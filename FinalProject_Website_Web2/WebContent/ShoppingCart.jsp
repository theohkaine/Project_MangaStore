<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList" %>
 <%@page import="VO.*" %>
  <%@page import="DAO.*" %>
<% ArrayList<itemCart>itemCart = (ArrayList)request.getAttribute("products");%>
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
                   <% 
                String Name= (String) session.getAttribute("Email");  
                String AdminName= (String) session.getAttribute("Admin"); 
                
                if (Name == null && AdminName == null) 
                {
                	
                %>
                <a class="btn btn-primary" href="login.jsp">Enregistrer</a>
               <%  
               } else
               
               {
                %>             
                </br><a class="btn btn-primary btn-md" href = "ProductMainPageServlet">Acceuil</a>                      
                                 
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
              <li><a href="ProductMangaShounenServlet">Shounen</a></li>
              <li><a href="ProductMangaSeinenServlet">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-book"></i>Light Novel<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="ProductMainPageServlet">Acceuil</a></li>
              <li><a href="ProductLNShounenServlet">Shounen</a></li>
              <li><a href="ProductLNSeinenServlet">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-language"></i>Language<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="#" id="FrenchTranslate" disabled>French</a></li>
              <li><a href="#" id="EnglishTranslate" disabled>English</a></li>
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
    <%for(int i = 0 ; i < itemCart.size(); i++) {%>
    <%itemCart articleCourant = itemCart.get(i); %>
        <div class = "row">                      
                <div class="col-lg-12 ">
                        <table class="table table-image">
                  <thead>
                    <tr>
                      <th scope="col"></th>
                      <th scope="col">Manga/LightNovel</th>
                      <th scope="col">Nom</th>
                      <th scope="col">Prix</th>
                      <th scope="col">Quantit&eacutee</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>                  
                      <th scope="row"></th>
                      <td class="w-25">
                      <div class="shadow-lg">
                          <img class="card-img-top img-thumbnail" src=<% out.print(articleCourant.getitemCartImage()); %> class="img-fluid" alt="Berserk">
                          </div>
                      </td>
                        <td><h5><%out.print(articleCourant.getitemCartName()); %></h5></td>
                        <td><h5><%out.print(articleCourant.getitemCartPrice()); %></h5></td>
                        <td><h5><%out.print(articleCourant.getitemCartQuantity()); %></h5></td>
                    </tr>
                  </tbody>
                </table>               
            </div>           
        </div>
         <%}%>
    <div class = "row" >                      
        <div class="col-lg-12">
                        <div class = "creditCardButton">                      
                            <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                                <input name="currency_code" type="hidden" value="CAD" />
                                <input name="shipping" type="hidden" value="0.00" />
                                <input name="tax" type="hidden" value="0.00" />
                                <input name="item_name" type="hidden" value="Manga/LightNovel" />
                                <input type="hidden" name="amount" value="<%=request.getAttribute("price")%>" />                              
                                <input name="return" type="hidden" value= "http://localhost:8080/FinalProject_Website_Web2/ProductMainPageServlet" />
                                <input name="cancel_return" type="hidden" value="http://localhost:8080/FinalProject_Website_Web2/ProductMainPageServlet" />
                                <input name="notify_url" type="hidden" value="http://votredomaine/validationPaiement.php" />
                                <input name="cmd" type="hidden" value="_xclick" />
                                <input name="business" type="hidden" value="tristan.araujo@gmail.com" />
                                <input name="no_note" type="hidden" value="1" />
                                <input name="lc" type="hidden" value="FR" />
                                <input name="bn" type="hidden" value="PP-BuyNowBF" />
                                <input name="custom" type="hidden" value="Merci" />
                                <input alt="Effectuez vos paiements via PayPal : une solution rapide, gratuite et sécurisée" name="submit" src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/ppcredit-logo-large.png" type="image" />
                            </form>
                        </div>             
        </div>
    </div>
    </div>
    </div>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Menu Toggle Script -->
  <script src="js/MenuToggle.js"></script>  
    <!-- Accordion Script -->
    <script src="js/Accordion.js"></script>   
    <!-- Footer -->
  <footer class="footer bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
          <p class="text-muted small mb-4 mb-lg-0">&copy; Livre-Chan 2019. Tous les droits sont r&eacuteserv&eacutes..</p>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>