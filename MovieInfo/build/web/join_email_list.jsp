<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <title>Email List Entered</title>
    <link rel="stylesheet" type="text/css" href="checkout.css"/>
</head>

<body>

  <p align="center" class="increaseText3"><i>${message}</i></p>

  <form action="addToEmailList" method="get">
  <table cellspacing="5" border="0" align = "center">
      
    <tr>
      <td align="right">First name:</td>
      <td><input type="text" name="firstName" 
          value="${user.firstName}">
      </td>
    </tr>
    
    <tr>
      <td align="right">Last name:</td>
      <td><input type="text" name="lastName"
          value="${user.lastName}">
      </td>
    </tr>
    
    <tr>
      <td align="right">Email address:</td>
      <td><input type="text" name="emailAddress"
          value="${user.emailAddress}">
      </td>
    </tr>
    <tr>
      <td></td>
      <td><br><input type="submit" value="Submit"></td>
    </tr>
  </table>
  </form>
</body>

</html>