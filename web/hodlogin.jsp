<!DOCTYPE html>
<html lang="en">
<head>
<title> leavemanagament</title>
<style>
    .link{
        text-decoration: none;
        border: .5px solid black;
        background-color: white;
    }
</style>
</head>

<form method="post" action="hlcode.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightyellow"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Student Login</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:pink"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">UserName</td>
<td><input type="text" name="un"/></td>
</tr>
<tr>
<td align="center">Password</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit" />
<input type="reset" value="Reset"/>
<a href="hodreg.jsp" class="link">NEW USER</a>
</td>
</tr>

</table>
</form>
</body>
</html>
