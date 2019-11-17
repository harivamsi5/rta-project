<%-- 
    Document   : login
    Created on : 23-Oct-2018, 14:09:12
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
           String _username=request.getParameter("username");
            String _password=request.getParameter("password");
            String _type=request.getParameter("type");
            try
            {
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           java.sql.Connection conn=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/proj1","root","905243");
           if(_type.equals("admin"))
           {
               String Query="select *from user where username=? and password=?";
               PreparedStatement psm=conn.prepareStatement(Query);
               psm.setString(1, _username);
               psm.setString(2, _password);
               ResultSet rs=psm.executeQuery();
               if(rs.next())
               {
                   response.sendRedirect("admin.html");
               }
               else
            {
                  response.sendError(401,"Invalid Credentials");
            }
           }
               else if(_type.equals("user"))
           {
               String Query="select *from user where username=? and password=?";
               PreparedStatement psm=conn.prepareStatement(Query);
               psm.setString(1, _username);
               psm.setString(2, _password);
               ResultSet rs=psm.executeQuery();
               if(rs.next())
               {
                   response.sendRedirect("user.html");
               }
               else
            {
                  response.sendError(401,"Invalid Credentials");
            }
           }
           
           
            }
        catch(Exception e)
        {
            out.println(e);
        }

           
  
%>
    </body>
</html>
