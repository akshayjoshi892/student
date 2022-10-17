<%@ page import ="java.sql.*" %>
<%
    String username  = request.getParameter("un");    
    String password = request.getParameter("pass");
    String designation  = request.getParameter("designation");    
    String dept= request.getParameter("dept");
    String  emailid= request.getParameter("emailid");
     String contact = request.getParameter("contact");
  
    
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection db=DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09","root","root");
    Statement st = db.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  hod(username,password,designation,dept,emailid,contact) values ('" + username + "','" + password+ "','" + designation + "','" +dept+ "','" +emailid+ "','" + contact+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print("Registration Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='hodlogin.jsp'>LOGIN</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


