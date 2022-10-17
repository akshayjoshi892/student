<%-- 
    Document   : search
    Created on : 30 Nov, 2018, 6:24:50 PM
    Author     : HP
--%>

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
      <tr><td><center><font size="+5" color="GREEN"> STATUS DETAILS</center></td>
      </tr>
      <a href="emphome.jsp">BACK</a>
<hr size="10" color="green"></hr>

 <form action="VIEWRES.jsp">
<table BORDER="2" WIDTH="30$">
<tr>
<td>Leaveid</td>
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

String QueryString = "SELECT * from  status where leaveid='"+id+"'";
rs = statement.executeQuery(QueryString);
%>

<%
while (rs.next()) {
%>
<table bordercolor="black" border="5"  bgcolor="lightyellow"  cellpadding="0"
       cellspacing="2" WIDTH="40%">
    
     <TR>
        <TD><font color="green"></b><center>leaveid </center></td>
        <td><font  color="green"></b><center>status</center></td>
</TR>


    <tr><td></b><center><%=rs.getString(1)%></center>

      <td></b><center><%=rs.getString(2)%></center>
    
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