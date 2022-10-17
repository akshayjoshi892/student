<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>std</title>

  <table  border="2"  cellpadding="2" cellspacing="0" bgcolor="skyblue" width="60%">
      <tr><td><center><font size="+5" color="GREEN"> ACADEMIC DETAILS</center></td>
      </tr>
      <a href="emphome.jsp">BACK</a>
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

String QueryString = "SELECT * from   student1";
rs = statement.executeQuery(QueryString);
%>
<table bordercolor="black" border="5"  bgcolor="lightyellow"  cellpadding="2"
       cellspacing="2" WIDTH="60%">
    
    <TR>
        <TD><font color="green"></b><center>usn no</center></td>
        <td><font color="green"></b><center>Academic Year</center></td>
      
        <TD><font color="green"></b><center>Sem </center></td>
        <td><font  color="green"></b><center>Joining Date</center></td>
        <td><font  color="green"></b><center>IA marks</center></td>
        <td><font  color="green"></b><center>Category</center></td>
   <td><font  color="green"></b><center>Admission Fee </center></td>
     <td><font  color="green"></b><center>CS Score</center></td>
        </TR>
<%


while (rs.next()) {
%>

       
    <tr><td></b><center><%=rs.getString(1)%></center>
<td><center><%=rs.getString(2)%></center>
<td><center><%=rs.getString(3)%></center>
     <td></b><center><%=rs.getString(4)%></center>
 <td> <center>  <%=rs.getString(5)%></center>
     <td></b><center><%=rs.getString(6)%></center>
     <td></b><center><%=rs.getString(7)%></center>
       <td></b><center><%=rs.getString(8)%></center>
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
    
    
    
