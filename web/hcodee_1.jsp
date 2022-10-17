<%@ page import ="java.sql.*" %>
<%
    String username  = request.getParameter("un");    
    String password = request.getParameter("pass");
    String designation  = request.getParameter("designation");    
    String  emailid= request.getParameter("emailid");
     String contact = request.getParameter("contact");
  
    
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  hod1(username,password,designation,emailid,contact) values ('" + username + "','" + password+ "','" + designation + "','" +emailid+ "','" + contact+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print(" Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='emphome.jsp'>BAck</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


