<%-- 
    Document   : jpreg
    Created on : 05-Nov-2018, 22:48:00
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
               String username=request.getParameter("username");
	    	String password=request.getParameter("password");
	    	String phoneno=request.getParameter("phoneno");
	    	String mobileno=request.getParameter("mobileno");
                String dob=request.getParameter("dob");
	    	String emailid=request.getParameter("emailid");
	    	String Age=request.getParameter("Age");
                String Gender=request.getParameter("Gender");
	    	String chouseno=request.getParameter("chouseno");
	    	String cstreetname=request.getParameter("cstreetname");
	    	String ccity=request.getParameter("ccity");
	    	String cstate=request.getParameter("cstate");
	    	String ccountry=request.getParameter("ccountry");
	    	String cpincode=request.getParameter("cpinno");
	    	String phouseno=request.getParameter("phouseno");
	    	String pstreetname=request.getParameter("pstreetname");
	    	String pcity=request.getParameter("pcity");
	    	String pstate=request.getParameter("pstate");
	    	String pcountry=request.getParameter("pcountry");
	    	String ppincode=request.getParameter("ppinno");
	    	String Trno=request.getParameter("trno");
                String vehiclecolor=request.getParameter("vehiclecolor");
                String typeofvehicle=request.getParameter("typeofvehicle");
                String vehiclemake=request.getParameter("vehiclemake");
                String typeofusc=request.getParameter("typeofusc");
		String chasisno=request.getParameter("chasisno");
                String location=request.getParameter("location");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
           java.sql.Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/proj1","root","905243");
          CallableStatement calstat=con.prepareCall("{call jpreg(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}"); 
           calstat.setString(1,userid);
          calstat.setString(2,username);
           calstat.setString(3,password);
           calstat.setString(4,phoneno);
           calstat.setString(5,mobileno);
           calstat.setString(6,dob);
           calstat.setString(7,emailid);
           calstat.setString(8,Age);
           calstat.setString(9,Gender);
           calstat.setString(10,chouseno);
           calstat.setString(11,cstreetname);
           calstat.setString(12,ccity);
           calstat.setString(13,cstate);
           calstat.setString(14,ccountry);
           calstat.setString(15,cpincode);
           calstat.setString(16,phouseno);
           calstat.setString(17,pstreetname);
           calstat.setString(18,pcity);
           calstat.setString(19,pstate);
           calstat.setString(20,pcountry);
           calstat.setString(21,ppincode);
             calstat.setString(22,Trno);
              calstat.setString(23,vehiclecolor);
               calstat.setString(24,typeofvehicle);
                calstat.setString(25,vehiclemake);
                 calstat.setString(26,typeofusc);
                  calstat.setString(27,chasisno);
                  
                   calstat.setString(28,location);
                      ResultSet rs=calstat.executeQuery();
                con.close();
               calstat.close();
                //out.println("your data has been inserted into table.");
           response.sendRedirect("user.html");
           
        %>
    </body>
</html>
