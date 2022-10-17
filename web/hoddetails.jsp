<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>college</title>
<body background="images/mee (1).jpg">

  <table  border="2"  cellpadding="2" cellspacing="0" bgcolor="skyblue" width="40%">
      <tr><td><center><font size="+5" color="GREEN">HOD DETAILS</center></td>
      </tr>
      <a href="hodhome.jsp">BACK</a>
<hr size="10" color="green"></hr>
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/staff09";

Connection connection = null;

Statement statement = null;

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

connection = DriverManager.getConnection(connectionURL, "root", "root");

statement = connection.createStatement();

String QueryString = "SELECT * from  hod";
rs = statement.executeQuery(QueryString);
%>

<%
while (rs.next()) {
%>
<table bordercolor="black" border="5"  bgcolor="lightyellow"  cellpadding="0"
       cellspacing="2" WIDTH="40%">
    
    <TR>

        <td><font color="green"></b><center>username</center></td>
       <td><font  color="green"></b><center>designation</center></td>
        <td><font  color="green"></b><center>dept</center></td>
        <td><font  color="green"></b><center>emailid</center></td>
   <td><font  color="green"></b><center>cnum</center></td>
        </TR>
       
    <tr><td></b><center><%=rs.getString(1)%></center>

 <td> <center>  <%=rs.getString(3)%></center>
     <td></b><center><%=rs.getString(4)%></center>
 <td> <center>  <%=rs.getString(5)%></center>
    <td> <center>  <%=rs.getString(6)%></center>
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
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="js/functions.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
  
</html>
    
    
    
