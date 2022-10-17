<%@ page import ="java.sql.*" %>
<%
    String id  = request.getParameter("staffid");    
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");    
    String cnum= request.getParameter("emailid");
    String emailid = request.getParameter("to");
     String dept = request.getParameter("dept");
     String address= request.getParameter("qualification");
      String dob= request.getParameter("dob");
      
      
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  student1(id,fname,lname,cnum,emailid,dept,address,dob) values ('" +id+ "','" +fname+ "','" +lname+ "','" +cnum+ "','" +emailid+ "','" +dept+ "','" +address+ "','" +dob+ "')");
       if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print("Registration Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='hodhome.jsp'>Back</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print("Registration UnSuccessfull");
    }
%>


