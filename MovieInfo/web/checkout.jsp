<!doctype html public "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>Checkout Information</title>
        <link rel="stylesheet" type="text/css" href="checkout.css"/>
      
</head>
<body>

<div id="upperLeftCorner">HOME > CHECKOUT </div>  

<div id="topHeadingCustomer">Customer Billing Information</div>

  
  
<p align="center"><i>${message}</i></p>

 
  <form action="addToEmailList" method="get" >
  <table cellspacing="5" border="0" align = "center" class="increaseText">
      
    <tr>
      <td align="right" >First name:</td>
      <td><input type="text" name="firstName" class="glowTextBlox" value="${user.firstName}"></td>
    </tr>
    
    <tr>
      <td align="right">Last name:</td>
      <td><input type="text" name="lastName" class="glowTextBlox" value="${user.lastName}">
      </td>
    </tr>
    
    <tr>
      <td align="right">Email address:</td>
      <td><input type="text" name="emailAddress" class="glowTextBlox" value="${user.emailAddress}">
      </td>
    </tr>
    
    <tr>
      <td></td>
      <td><br><input type="submit" value="Submit" id="submitButtonCheckout"></td>
    </tr>
  </table>
  </form>
    
      
      <a href ="select_email_list.jsp" STYLE ="text-decoration: none" > Forgot first and last Name?</a><br><br>
      <a href ="delete_email_list.jsp" > Delete Your Account and Unsubscribe </a><br><br>
      <a href ="update_email_list.jsp"  > Want to Change your Info? </a><br><br>
      <a href ="traffic.jsp"           > Traffic reports on login  </a><br><br>
  
      
</body>

</html>