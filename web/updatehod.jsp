<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body bgcolor="lightgreen">
      <div>
        <form action="updatehod.jsp" method="post">
      <table cellpadding="10" cellspacing="10"  width="100%" bgcolor="#0099ff" style=" font-family:Times New Roman; font-size:35px; font-style:normal; font-weight:bolder; color:White;">
       <tr>
       <td align="center">
Update  Info 
       </td>
       </tr>
       </table> 
        <hr color="red" size="5">
        <a href="emphome.jsp">Back</a>
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
</td>
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
       </table> 
        <%

   String employeeid  = request.getParameter("staffid");    
    String username = request.getParameter("fname");
    String password = request.getParameter("lname");    
    String employeetype= request.getParameter("emailid");
    String designation = request.getParameter("dd");
     String dept = request.getParameter("dept");
         String emailid= request.getParameter("qualification");
          String contact= request.getParameter("contact");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09","root","root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update employee set username='"+username+"',password='"+password+"',employeetype='"+employeetype+"',designation='"+designation+"',dept='"+dept+"',emailid='"+emailid+"',contact='"+contact+"' where employeeid="+employeeid+"");
}
catch(Exception e){
System.out.println(e);
    }


%>

        </form>
    </body>
</html>
