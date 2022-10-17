<%@ page import ="java.sql.*" %>
<%
    String leaveid = request.getParameter("leaveid");    

         String LeaveStatus = request.getParameter("status");   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  status(leaveid,LeaveStatus) values ('" + leaveid  + "','" +LeaveStatus+ "')");
    if (i > 0)
    {
        //session.setAttribute("userid", user);
       
        out.print("Successfull");
        out.print("<html>");
				  out.print("<body bgcolor='lightgreen'>");
				                           			  
				out.print("<a href='hodhome.jsp'>BACK</a>");
				                                    			  
				 out.print("</body>");
				   out.print("</html>");
    }else {
        out.print(" UnSuccessfull");
    }
%>


