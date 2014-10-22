<%-- 
    Document   : select_email_list
    Created on : May 31, 2014, 4:42:34 PM
    Author     : Satinder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Email</title>
        <link rel="stylesheet" type="text/css" href="checkout.css"/>
    </head>
    <body>
        <h1 align="center">Select User</h1>
        <p align="center"> Please enter user email to be selected from our list.</p>
   <p align="center"><i>${message}</i></p>
     
  <form action="selectEmailList" method="get">
  <table cellspacing="5" border="0" align = "center">
      
 
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
