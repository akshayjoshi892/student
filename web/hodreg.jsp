<!DOCTYPE html>
<html lang="en">
<head>
<title>student</title>

</head>

<form method="post" action="hcodee.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightgreen"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Student Register</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:skyblue"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">UserName</td>
<td><input type="text" name="un" onkeypress="return event.charCode >=89 && event.charCode <=121" onpast="return false"/></td>
</tr>


<tr>
<td align="center">Password</td>
<td><input type="password" name="pass"/></td>
</tr>

<tr>
<td align="center">Course</td>
<td><input type="text" name="designation"  onkeypress="return event.charCode >=89 && event.charCode <=121" onpast="return false"/></td>
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
<td align="center">EmailId</td>
<td><input type="email" name="emailid"/></td>
</tr>

<tr>
<td align="center">Contact</td>
<td><input type="text" name="contact"  onkeypress="return event.charCode >=48 && event.charCode <=57" onpast="return false"/></td>
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
