<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList" %>
 <%@page import="VO.*" %>
 <%@page import="DAO.*" %>

<% ArrayList<itemCart>itemCart = (ArrayList)request.getAttribute("products");%>
 <% System.out.println(itemCart.size() + " est la TAILLE"); %>

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
    <title>Book-Chan Manga/LNovel Store</title>

     <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Custom css pour le projet -->
    <link href="css/mySyle.css" rel="stylesheet">
    <link href="css/CreditCard.css" rel="stylesheet">
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
            <a class="title">Book-Chan</a>
        </ul>
        <ul class ="navbar-nav mr-auto">
            <a class = "semi-title">Manga/Light Novel Store</a>
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
                <a class="btn btn-primary" href="login.jsp">Sign In</a>
               <%  
               } else
               
               {
                %>             
                 Welcome </br><a class="btn btn-primary btn-md" href = "logoutServlet" type="submit">Logout</a>                      
               
                   
                    <a href="ShoppingCart.jsp" class="btn btn-primary btn-md">
                    <span class="glyphicon glyphicon-shopping-cart">
                        <i class="fa fa-shopping-cart"></i>
                        </span> Shopping Cart</a>
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
            <div class="sidebar-heading"><a id = "BookChanMenu">Book-Chan 
                <img class="img-fluid" src="img/book_menu.png" width="51" alt="bookIcon">
                </a>
            </div>
        <div class="list-group list-group-flush">    
        <ul id="accordion" class="accordion">
          <li>
            <div class="link"><i class="fa fa-book"></i>Manga<i class="fa fa-chevron-down"></i>
            </div>
            <ul class="submenu">
              <li><a href="ProductMainPageServlet">Home</a></li>
              <li><a href="ProductMangaShounenServlet">Shounen</a></li>
              <li><a href="ProductMangaSeinenServlet">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-book"></i>Light Novel<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="ProductMainPageServlet">Home</a></li>
              <li><a href="LightNovelHtml/ShounenLN.html">Shounen</a></li>
              <li><a href="LightNovelHtml/SeinenLN.html">Seinen</a></li>
            </ul>
          </li>
          <li>
            <div class="link"><i class="fa fa-language"></i>Language<i class="fa fa-chevron-down"></i></div>
            <ul class="submenu">
              <li><a href="#" id="FrenchTranslate">French</a></li>
              <li><a href="#" id="EnglishTranslate">English</a></li>
            </ul>
          </li>
          <!--  
          <li>
            <div class="link"><i class="fa fa-user-circle"></i>Publishers<i class="fa fa-chevron-down"></i>
            </div>
            <ul class="submenu">
             <li><a href="PublishersHtml/VizMedia.html">VIZ Media</a></li>
              <li><a href="PublishersHtml/J-NovelClub.html">J-Novel Club</a></li>
            </ul>
          </li>
          -->
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
 
<div class = "container containercreditCard">    
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">

        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fab fa-cc-visa" style="color:navy;"></i>
              <i class="fab fa-cc-amex" style="color:blue;"></i>
              <i class="fab fa-cc-mastercard" style="color:red;"></i>
              <i class="fab fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
        </div>
        <input type="submit" value="Payment" class="btnCheckOut">
      </form>
    </div>
  </div>

  <div class="col-25">
    <div class="container">
    
      <h4>Cart
        <span class="price" style="color:black">
          <i class="fa fa-shopping-cart"></i>
          <b><% out.print(itemCart.size()); %></b>
        </span>
      </h4>
      <%for(int i = 0 ; i < itemCart.size(); i++) {%>
      <%itemCart articleCourant = itemCart.get(i); %>
      <p><a><% out.print(articleCourant.getitemCartName()); %></a> <span class="price"><% out.print(articleCourant.getitemCartPrice()); %></span></p>
      <hr>
       <%}%>
      <p>Total <span class="price" style="color:black"><b>$30</b></span></p>
     
    </div>
  </div>
</div>
</div>  
    
    
</div>
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
    
    <!-- Accordion Script -->
    <script>
    $(function() {
	var Accordion = function(el, multiple) {
		this.el = el || {};
		this.multiple = multiple || false;

		// Variables privadas
		var links = this.el.find('.link');
		// Evento
		links.on('click', {el: this.el, multiple: this.multiple}, this.dropdown)
	}

	Accordion.prototype.dropdown = function(e) {
		var $el = e.data.el;
			$this = $(this),
			$next = $this.next();

		$next.slideToggle();
		$this.parent().toggleClass('open');

		if (!e.data.multiple) {
			$el.find('.submenu').not($next).slideUp().parent().removeClass('open');
		};
	}	

	var accordion = new Accordion($('#accordion'), false);
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