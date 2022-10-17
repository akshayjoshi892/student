<!DOCTYPE html>
<html lang="en">
<head>
<title>college</title>

</head>

<form method="post" action="lcode.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightgreen"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Personal info</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
    <a href="hodhome.jsp">HOME</a>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightyellow"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">Id</td>
<td><input type="text" name="staffid" onkeypress="return event.charCode >=48 && event.charCode <=57" onpast="return false"/></td>
</tr>


<tr>
<td align="center">Fname</td>
<td><input type="text" name="fname"/></td>
</tr>

<tr>
<td align="center">Lname</td>
<td><input type="text" name="lname"/></td>
</tr>

<tr>
<td align="center">CSN</td>
<td><input type="text" name="emailid"/></td>
</tr>

<tr>
<td align="center">EmailID</td>
<td><input type="email" name="to"/></td>
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
<td align="center">Address</td>
<td><input type="text" name="qualification" /></td>
</tr>
<tr>

<tr>
<td align="center">DateOfBirth</td>
<td><input type="date" name="dob"/></td>
</tr>
<tr>
<td align="center">USN</td>
<td><input type="text" name="USN"/></td>
</tr>
<tr>
<td align="center">SEM</td>
<td><input type="text" name="sem"/></td>
</tr>
<tr>
<td align="center">Attendance</td>
<td><input type="text" name="Attendance"/></td>
</tr>
<tr>
<td align="center">Lecture_name</td>
<td><input type="text" name="lecture"/></td>
</tr>

<tr>
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
