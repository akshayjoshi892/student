<!DOCTYPE html>
<html lang="en">
<head>
<title>college</title>

</head>
<form method="post" action="lcode_1.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightgreen"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Academic Year</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
    <a href="hodhome.jsp">HOME</a>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightyellow"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">Usn NO</td>
<td><input type="text" name="staffid" onkeypress="return event.charCode >=48 && event.charCode <=57" onpast="return false"/></td>
</tr>


<tr>
<td align="center">Academic Year</td>
<td><input type="text" name="fname"/></td>
</tr>

<tr>
<td align="center">Sem</td>
<td><input type="text" name="lname"/></td>
</tr>

<tr>
<td align="center">joining Date</td>
<td><input type="date" name="emailid"/></td>
</tr>

<tr>
<td align="center">IA Marks</td>
<td><input type="text" name="to"/></td>
</tr>

<tr>
<td align="center">category</td>
<td>
<select name="dept">
  <option value="hostel">Hostel</option>
  <option value="PaySchool">PaySchool</option>
</select>
<td>
</tr>

<tr>
<td align="center">Admission fee</td>
<td><input type="text" name="qualification" /></td>
</tr>
<tr>

<tr>
<td align="center">Computer Exeam Score</td>
<td><input type="text" name="dob"/></td>
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
