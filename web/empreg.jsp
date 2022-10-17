<!DOCTYPE html>
<html lang="en">
<head>
<title>college</title>

</head>
<body background="images/123 41).jpg">
<form method="post" action="code.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightgreen"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Faculty Register</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightyellow"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">Faculty_id</td>
<td><input type="text" name="staffid" onkeypress="return event.charCode >=48 && event.charCode <=57" onpast="return false"/></td>
</tr>


<tr>
<td align="center">UserName </td>
<td><input type="text" name="fname" onkeypress="return event.charCode >=89 && event.charCode <=121" onpast="return false"/></td>
</tr>

<tr>
<td align="center">Password</td>
<td><input type="password" name="lname"/></td>
</tr>

<tr>
<td align="center">EmployeeType</td>
<td><input type="text" name="emailid"/></td>
</tr>

<tr>
<td align="center">Designation</td>
<td><input type="text" name="dd" onkeypress="return event.charCode >=89 && event.charCode <=121" onpast="return false"/></td>
</tr>


<tr>
<td align="center">Dept</td>
<td>
<select name="dept">
  <option value="CS">CS</option>
  <option value="IS">IS</option>
  <option value="CIVIL">CIVIL</option>
  <option value="ECE">ECE</option>
</select>
<td>
</tr>

<tr>
<td align="center">EmailId </td>
<td><input type="email" name="qualification"/></td>
</tr>
<tr>
    
    <td align="center">Contact</td>
    <td><input type="text" name="contact" onkeypress="return event.charCode >=48 && event.charCode <=57" onpast="return false"/></td>
    
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit" />
<input type="reset" value="Reset"/>
</td>
</tr>
</table>
</form>
</body>
</html>
