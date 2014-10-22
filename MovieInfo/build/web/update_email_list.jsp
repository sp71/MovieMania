<%-- 
    Document   : update_email_list
    Created on : May 31, 2014, 3:01:12 PM
    Author     : Satinder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Update user</title>
        <link rel="stylesheet" type="text/css" href="checkout.css"/>
    </head>
    <body>
        <h1 align="center">Update User</h1>
        <p align="center"> Please enter user first name and last name to update their email.</p>
        
   <p align="center"><i>${message}</i></p>
     
  <form action="upEmailList" method="get">
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
      <td align="right">original Email address:</td>
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

