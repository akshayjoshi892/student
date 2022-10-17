

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body BGCOLOR="LIGHTGREEN">
        <table  border="2"  cellpadding="2" cellspacing="0" bgcolor="skyblue" width="40%">
      <tr><td><center><font size="+5" color="GREEN">View Studens</center></td>
      </tr>
      <a href="INDEX.jsp">BACK</a>
<hr size="10" color="green"></hr>

 <form action="viewstd.jsp">
<table BORDER="2" WIDTH="30$">
<tr>
<td>Lecture_name</td>
<td><input type="text" name="txt1"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Search"/></td>
</tr>
</table>
    <hr color="purple" size="10" />
</form>
 
<%
try {
    String id=request.getParameter("txt1");

String connectionURL = "jdbc:mysql://localhost:3306/staff09";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL, "root", "root");

statement = connection.createStatement();

String QueryString = "SELECT * from  student  where lecture_name='"+id+"'";
rs = statement.executeQuery(QueryString);
%>

<%
while (rs.next()) {
%>
<table bordercolor="black" border="5"  bgcolor="lightyellow"  cellpadding="0"
       cellspacing="2" WIDTH="40%">
    
    
    <TR>
        <TD><font color="green"></b><center> Id</center></td>
        <td><font color="green"></b><center>Fname</center></td>
      <TD><font color="green"></b><center>Lname</center></td>
        <td><font  color="green"></b><center>Cnum</center></td>
        <td><font  color="green"></b><center>Emailid</center></td>
        <td><font  color="green"></b><center>Dept</center></td>
   <td><font  color="green"></b><center>Address</center></td>
     <td><font  color="green"></b><center>Dob</center></td>
     <td><font  color="green"></b><center>Usn</center></td>
   <td><font  color="green"></b><center>Sem</center></td>
     <td><font  color="green"></b><center>Attendance</center></td>

        </TR>

    <tr><td></b><center><%=rs.getString(1)%></center>
<td><center><%=rs.getString(2)%></center>
 <td> <center>  <%=rs.getString(3)%></center>
     <td></b><center><%=rs.getString(4)%></center>
 <td> <center>  <%=rs.getString(5)%></center>
     <td></b><center><%=rs.getString(6)%></center>
      <td></b><center><%=rs.getString(7)%></center>
      <td></b><center><%=rs.getString(8)%></center>
      <td></b><center><%=rs.getString(9)%></center>
        <td></b><center><%=rs.getString(10)%></center>
      <td></b><center><%=rs.getString(11)%></center>
    
</tr>

<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>

<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>
<TR>
<TD><FORM ACTION="welcome_to_database_query.jsp" method="get" >
</TD>
</TR>
</body>
</TABLE>
</font>

</body>
</html>