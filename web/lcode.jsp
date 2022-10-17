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
      String USN = request.getParameter("USN");
         String sem= request.getParameter("sem");
      String Attendance= request.getParameter("Attendance");
         String lecture_name= request.getParameter("lecture");
      
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09",
            "root","root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into  student(id,fname,lname,cnum,emailid,dept,address,dob,USN,sem,Attendance,lecture_name) values ('" +id+ "','" +fname+ "','" +lname+ "','" +cnum+ "','" +emailid+ "','" +dept+ "','" +address+ "','" +dob+ "','" +USN+ "','" +sem+ "','" +Attendance+ "','" +lecture_name+ "')");
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


