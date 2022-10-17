<%@ page import ="java.sql.*" %>
<%
         String username  = request.getParameter("un");   
      String password = request.getParameter("password");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/staff09",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from hod where username ='" + username + "' and password='" +password+ "'");
    if (rs.next()) {
        session.setAttribute("customerid", username );
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("hodhome.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>