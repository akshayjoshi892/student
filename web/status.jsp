<!DOCTYPE html>
<html lang="en">
<head>
<title>leavemanagament</title>

</head>
<body background="images/2.jpg">
<form method="post" action="statuscode.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightgreen"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Leave Status</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightgreen"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">Leaveid</td>
<td><input type="text" name="leaveid"  onkeypress="return event.charCode >=48 && event.charCode <=57" onpast="return false"/></td>
</tr>
<tr>
<td align="center">LeaveStatus</td>
<td><input type="text" name="status"  onkeypress="return event.charCode >=89 && event.charCode <=121" onpast="return false"/></td>
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
