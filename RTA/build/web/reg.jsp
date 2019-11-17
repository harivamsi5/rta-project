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
           String _type=request.getParameter("type");
            String firstname=request.getParameter("firstname");
             String lastname=request.getParameter("lastname");
              String email=request.getParameter("email");
               String username=request.getParameter("username");
                String password=request.getParameter("password");
             try{   
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           java.sql.Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/proj1","root","905243");
           if(_type.equals("user"))
           {
               CallableStatement calstat=con.prepareCall("{call reg(?,?,?,?,?,?)}");
               calstat.setString(1,firstname); 
               calstat.setString(2,lastname);
               calstat.setString(3,email);                                                                                                                                                                                                                                                                                                                                                                                                                              
               calstat.setString(4,username);
               calstat.setString(5,password);
               calstat.setString(6,_type);
               ResultSet rs=calstat.executeQuery();
               con.close();
               calstat.close();
               //out.println("your data has been inserted into table.");
           response.sendRedirect("index.html");
           }
           else if(_type.equals("admin"))
           {
               CallableStatement calstat=con.prepareCall("{call reg(?,?,?,?,?,?)}");
               calstat.setString(1,firstname); 
               calstat.setString(2,lastname);
               calstat.setString(3,email);
               calstat.setString(4,username);
               calstat.setString(5,password);
               calstat.setString(6,_type);
               ResultSet rs=calstat.executeQuery();
               con.close();
               calstat.close();
               //out.println("your data has been inserted into table.");
           response.sendRedirect("index.html");
           }
           }
             catch(Exception e){
                 System.out.println(e);
             }
           
           %>
        
    </body>
</html>
