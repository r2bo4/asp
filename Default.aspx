<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_frkvyd1w" %>

<%@ Register src="bloklar/Kategoriler.ascx" tagname="Kategoriler" tagprefix="uc1" %>

<%@ Register src="bloklar/sag.ascx" tagname="sag" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Electronix Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
    <style type="text/css">
        .ince 
        {
            border:#dde6e1 1px solid; border-collapse:collapse;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server">

<div id="main_container">
	<div class="top_bar">
    	<div class="top_search">
        	<div class="search_text"><a href="#">Advanced Search</a></div>
            <input type="text" class="search_input" name="search" />
            <input type="image" src="images/search.gif" class="search_bt"/>
        </div>
        
        <div class="languages">
        	<div class="lang_text">Languages:</div>
            <a href="#" class="lang"><img src="images/en.gif" alt="" title="" border="0" /></a>
            <a href="#" class="lang"><img src="images/de.gif" alt="" title="" border="0" /></a>       
        </div>
    
    </div>
	<div id="header">
        
        <div id="logo">
            <a href="#"><img src="images/logo.png" alt="" title="" border="0" width="237" height="140" /></a>
	    </div>
        
        <div class="oferte_content">
        	<div class="top_divider"><img src="images/header_divider.png" alt="" title="" width="1" height="164" /></div>
        	<div class="oferta">
            
           		<div class="oferta_content">
                	<img src="images/laptop.png" width="94" height="92" border="0" class="oferta_img" />
                	
                    <div class="oferta_details">
                            <div class="oferta_title">Samsung GX 2004 LM</div>
                            <div class="oferta_text">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            </div>
                            <a href="details.html" class="details">details</a>
                    </div>
                </div>
                <div class="oferta_pagination">
                
                     <span class="current">1</span>
                     <a href="#?page=2">2</a>
                     <a href="#?page=3">3</a>
                     <a href="#?page=3">4</a>
                     <a href="#?page=3">5</a>  
                             
                </div>        

            </div>
            <div class="top_divider"><img src="images/header_divider.png" alt="" title="" width="1" height="164" /></div>
        	
        </div> <!-- end of oferte_content-->
        

    </div>
    
   <div id="main_content"> 
   
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
                         <li><a href="Default.aspx" class="nav1">  AnaSayfa </a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav2">Products</a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav3">Specials</a></li>
                         <li class="divider"></li>
                         <li><a href="Default.aspx?ad=uyegirisi" class="nav4">My account</a></li>
                         <li class="divider"></li>
                         <li><a href="Default.aspx?ad=uyekayit" class="nav4">Sign Up</a></li>
                         <li class="divider"></li>                         
                         <li><a href="Default.aspx?ad=sepetim" class="nav5">Shipping </a></li>
                         <li class="divider"></li>
                         <li><a href="#" class="nav6">Contact Us</a></li>
                         <li class="divider"></li>
                         
                    </ul>

             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
            
    
    
    
   <div class="left_content">
    <!-- <div class="title_box">Categories</div> -->
    
       
        
    
       <uc1:Kategoriler ID="Kategoriler1" runat="server" />
    
       
        
    
   </div><!-- end of left content -->
   
   
   <div class="center_content">
   	<!-- <div class="center_title_bar">Latest Products</div>-->
    
    	
    
   
       <asp:PlaceHolder ID="plchold" runat="server"></asp:PlaceHolder>
       <asp:Label ID="lbldurum" runat="server"></asp:Label>
    
    	
    
   
   </div><!-- end of center content -->
   
   <div class="right_content">
   		<!--<div class="shopping_cart">
        	<div class="cart_title">Shopping cart</div>-->
            
            
   
     
     
        <uc2:sag ID="sag1" runat="server" />
            
            
   
     
     
   </div><!-- end of right content -->   
   
            
   </div><!-- end of main content -->
   
   
   
   <div class="footer">
   

        
</div>
<!-- end of main_container -->
    </form>
</body>
</html>
