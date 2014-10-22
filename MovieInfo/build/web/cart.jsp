<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" type="text/css" href="cart.css">
</head>

<body>

    <div>HOME > CART </div> 
    
    <div id="topHeading1">Your Shopping Cart</div>
    <br><br>


<table border="0" cellpadding="5" width="650">
  <tr class="topTableColor">
    <th >Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>


<c:forEach var="item" items="${cart.items}">
    <tr valign="top" class = "rowBackColorNHover">
        
    <td>
      <form action="<c:url value='/cart' />">
        <input type="hidden" name="productCode" value="${item.product.code}">
        <input type=text size=2 name="quantity"  value="${item.quantity}">
        <input type="submit" value="Update" class="redButton">
      </form>
    </td>
    
    
    
    <td>${item.product.description} </td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>
      <form action="<c:url value='/cart' />">
        <input type="hidden" name="productCode" 
               value="${item.product.code}">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove Item" class="redButtonRemove">
      </form>
    </td>
  </tr>
</c:forEach>
  
  <tr class = "bottomTableColor">
    <td colspan="3" >
      <div>Total</div>
    </td>
    
 <td> 
<c:set var="costTotal" value="${0}" />
<c:forEach var="item" items="${cart.items}">
  <c:set var="costTotal" value="${ costTotal + item.total}" />    
</c:forEach>
<pre> $${costTotal} </pre>   </td>
<td><span>&nbsp;&nbsp;&nbsp;&nbsp;</span> </td>
</tr>
  
</table>

    
    
    
    




<!-- Count total items in cart -->
<c:set var="itemTotal" value="${0}" />
<c:forEach var="item" items="${cart.items}">
   <c:set var="itemTotal" value="${ itemTotal + item.quantity}" />    
</c:forEach>

<br>
<br>
<p>
<img src="http://www.inmotionhosting.com/support/images/stories/icons/ecommerce/64_64_add-to-cart-light.png" alt="HTML tutorial" width="40" height="40">
In Cart: ${itemTotal} item </p>
<!--  end     -->







<form action="<c:url value='/index.jsp' />" method="post">
  <input type="hidden" name="itemCount" value="${itemTotal} ">
  <input type="submit" value="Continue Shopping" id="resumeSubmitHover">
</form>

<form action="<c:url value='/checkout.jsp' />" method="post">
  <input type="submit" value="Checkout" id="submitButton9" class="animated tada">
</form>

</body>
</html>