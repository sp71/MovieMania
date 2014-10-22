<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Displaying Values</title>
     <link rel="stylesheet" type="text/css" href="checkout.css"/>
</head>
<body>
    <h1 align ="center" class="increaseText3">Thanks for shopping at our store</h1>

    <p align = "center" class="increaseText3"><b>We will make sure to send you our newsletters as well!!!</b></p>

  <table cellspacing="5" border="0" align = "center">
        <tr>
            <td class="increaseText4"  align="right">First name:</td>
            <td class="increaseText4">${user.firstName}</td>
        </tr>
        <tr>
            <td class="increaseText4"  align="right">Last name:</td>
            <td class="increaseText4">${user.lastName}</td>
        </tr>
        <tr>
            <td class="increaseText4" align="right">Email address:</td>
            <td class="increaseText4">${user.emailAddress}</td>
        </tr>
    </table>

        <h2 align="center" class="increaseText3">Your item has been shipped</h2>
    
</body>
</html>