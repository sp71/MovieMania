<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title><i>Welcome to Movie Mania</i></title>
    <link rel="stylesheet" type="text/css" href="index.css"/>
</head>


<body>
    
<!-- can insert a top banner/header and bottom banner/footer 
which is a seperate html page by using 
jsp:include page="somepage.jsp" />  look it up online-->
<div>HOME </div>
<div id="heading3d">Welcome to Movies Mania</div>

<table cellpadding="5" border=0 align = "center">
<tr> <td class="heading3d2">Newly Released!&#9889; </td> </tr>
</table>



<br><br><br>




<table cellpadding="5" border=1 align = "center">
  <tr valign="bottom">
    <td align="center"><b>Image</b></td>
    <td align="center"><b>Description</b></td>
    <td align="center"><b>Price</b></td>
    <td align="center"><b>Option</b></td>
  </tr>

  <tr valign="top" class ="rowRedHover">
    <td><img class="someImage" src="https://lh5.ggpht.com/jCid23k5jrPU-AMekhR-Mi9YXalg1H_MT-9fvea3sMHHDIiRURlv0Deuyaj428c6Q8o=w170"></td>
    <td><b>300</b></td>
    <td>$5.99</td>
    <td> <a href="<c:url value='/cart?productCode=8601' />"><img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" alt="HTML tutorial" width="40" height="40"></a>
    </td>
  </tr>

  <tr valign="top" class ="rowRedHover">
    <td><img class="someImage" src="https://pbs.twimg.com/profile_images/1993646613/hungergames_twitterprofpic_normal.jpg"></td>
    <td><b>Hunger Games</b></td>
    <td>$10.99</td>
    <td> 
    <a href="<c:url value='/cart?productCode=pf01' />"><img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" alt="HTML tutorial" width="40" height="40"></a>
    </td>
  </tr>

  <tr valign="top" class ="rowRedHover">
    <td><img class="someImage" src="http://www.spinningthereel.com/wp-content/themes/magazinum/scripts/timthumb.php?src=http://www.spinningthereel.com/wp-content/uploads/2013/07/Man-of-Steel-Wallpaper-1024x576.jpg&w=45&h=45&zc=1"></td>
    <td><b>Man of Steel</b></td>
    <td>$15.99</td>
    <td> 
    <a href="<c:url value='/cart?productCode=pf02' />"><img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" alt="HTML tutorial" width="40" height="40"></a>
    </td>
  </tr>

  <tr valign="top" class ="rowRedHover">
    <td><img class="someImage" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/t1.0-1/c4.4.48.48/p56x56/942448_387981777968457_300500445_n.jpg"></td>
    <td><b>12 Years a Slave</b></td>
    <td>$20.99</td>
    <td> 
    <a href="<c:url value='/cart?productCode=jr01' />"><img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" alt="HTML tutorial" width="40" height="40"></a>
    </td>
  </tr>
</table>
   
    
    
    
    
    
     
<!-- scriptlet -->    
<!-- Display cart item total,  Data come from cart.jsp, use if for NULL case when 1st load page -->
<%   
String itemCount = request.getParameter("itemCount");
if ( itemCount == null) { %>
<p class="centerShoppingCart"><a href="cart.jsp"><img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" class="itemCounter"
     alt="HTML tutorial" width="40" height="40"></a> 0 </p>
<% } else { %>
<p class="centerShoppingCart"><a href="cart.jsp"><img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" class="itemCounter"
     alt="HTML tutorial" width="40" height="40"></a> <%= itemCount%></p>
<% } %>










<br>
<br>

<table cellpadding="5" border=0 align="center" >
  <tr>
    <td class="expandWidth"> <img src="./images/m0.png"> </td>
    <td class="expandWidth"> <img src="./images/m1.png"> </td>
    <td class="expandWidth"> <img src="./images/m2.png"> </td>
  </tr>
  
   <tr>
    <td class="expandWidth"> <img src="./images/m3.png"> </td>
    <td class="expandWidth"> <img src="./images/m4.png"> </td>
    <td class="expandWidth"> <img src="./images/m5.png"> </td>
  </tr>
</table>

</body>
</html>