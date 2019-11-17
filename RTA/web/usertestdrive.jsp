<%-- 
    Document   : usertestdrive
    Created on : 17-Nov-2018, 20:07:40
    Author     : harry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
         <%@page import ="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        <%
               String userid=request.getParameter("userid");
               String date=request.getParameter("date");
               try{
         Class.forName("com.mysql.jdbc.Driver").newInstance();
           java.sql.Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/proj1","root","905243");
          CallableStatement calstat=con.prepareCall("{call usertestdrive(?,?)}"); 
           calstat.setString(1,userid);
          calstat.setString(2,date); 
           ResultSet rs=calstat.executeQuery();
             con.close();
               calstat.close();
                //out.println("your data has been inserted into table.");
           response.sendRedirect("user.html");
               }
               catch(Exception e)
               {
                   out.println(e);
               }
        %>
    </body>
</html>
