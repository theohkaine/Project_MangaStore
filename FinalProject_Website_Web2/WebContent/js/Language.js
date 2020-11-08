//changement de contenu selon la langue

    $( "#langue" ).click(function() {
         if($( "#langue" ).html() == "Anglais")
         {
	         $( "#langue" ).html("Francais");
	         $("#titre").html("Book-Chan Manga/LNovel Store")
	         $("#navTitre").html("Book-Chan")
	         $("#semi-title").html("Manga/LNovel Store")
	         $("#SignIn").html("Sign In")
	         $("#cart").html("Shopping Cart")
	         $("#logout").html("Logout")
	         $("#home").html("Home")
	         $("#home2").html("Home")
	         $("#BookChanMenu").html("Book-Chan")
	         $("#modal").html("There is seem to be a problem....")
	         $("#modalText").html("Please Sign In before buying our selection")
	         $("#modalButton").html("Close") 
	         $("#feature").html("Feature")       
	         $("#copyright").html("Book-Chan 2019. All Rights Reserved.") 
         }
         
         else if($( "#langue" ).html() == "Francais") 
         {
            $( "#langue" ).html("Anglais");
            $("#titre").html("Livre-Chan Magasin Manga/LNovel")
            $("#navTitre").html("Livre-Chan")
            $("#semi-title").html("Magasin Manga/LNovel")
            $("#SignIn").html("Enregistrer")
            $("#cart").html("Panier")
            $("#logout").html("D&eacuteconnecter")
            $("#home").html("Acceuil")
            $("#home2").html("Acceuil")
            $("#BookChanMenu").html("Livre-Chan")
            $("#modal").html("Il semble y avoir un probl&egraveme ...")
            $("#modalText").html("Veuillez vous connecter avant d'acheter notre s&eacutelection")
            $("#modalButton").html("Fermer")
            $("#feature").html("S&eacutelection")
	        $("#copyright").html("Livre-Chan 2019. Tous les droits sont r&eacuteserv&eacutes..") 
         }
});