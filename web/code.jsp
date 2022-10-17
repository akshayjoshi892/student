<%@ page import ="java.sql.*" %>
<%
    String employeeid  = request.getParameter("staffid");    
    String username = request.getParameter("fname");
    String password = request.getParameter("lname");    
    String employeetype= request.getParameter("emailid");
    String designation = request.getParameter("dd");
     String dept = request.getParameter("dept");
         String emailid= request.getParameter("qualification");
          String contact= request.getParameter("contact");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  employee(employeeid,username,password,employeetype,designation,dept,emailid,contact) values ('" +employeeid + "','" +username+ "','" + password  + "','" +employeetype+ "','" +designation+ "','" +dept+ "','" +emailid+ "','" +contact+ "')");
       if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print("Registration Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='emplogin.jsp'>LOGIN</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


