<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
    </head>
    <body bgcolor="lightgreen">
      <div>
        <form action="updatestd.jsp" method="post">
      <table cellpadding="10" cellspacing="10"  width="100%" bgcolor="#0099ff" style=" font-family:Times New Roman; font-size:35px; font-style:normal; font-weight:bolder; color:White;">
       <tr>
       <td align="center">
Update  Info 
       </td>
       </tr>
       </table> 
        <hr color="red" size="5">
        <a href="adminhome.jsp">Back</a>
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
<td align="center">Cnum</td>
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
       </table> 
        <%

    String id  = request.getParameter("staffid");    
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");    
    String cnum= request.getParameter("emailid");
    String emailid = request.getParameter("qualification");
     String dept = request.getParameter("dept");
         String address= request.getParameter("qualification");
      String dob= request.getParameter("dob");
       String USN = request.getParameter("USN");
         String sem= request.getParameter("sem");
      String Attendance= request.getParameter("Attendance");
         String lecture_name= request.getParameter("lecture");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09","root","root");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update student  set fname='"+fname+"',lname='"+lname+"',cnum='"+cnum+"',emailid='"+emailid+"',dept='"+dept+"',address='"+address+"',dob='" +dob+ "',USN='" +USN+ "',sem='" +sem+ "',Attendance='" +Attendance+ "',lecture_name='" +lecture_name+ "' where id ="+id +"");
}
catch(Exception e){
System.out.println(e);
    }


%>

        </form>
    </body>
</html>
