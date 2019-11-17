<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String date = request.getParameter("date");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "proj1";
String userId = "root";
String password = "905243";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>VEHICLE REGISTRATION DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>USERNAME</b></td>
<td><b>GENDER</b></td>
<td><b>AGE</b></td>
<td><b>PHONENO</b></td>
<td><b>EMAILID</b></td>
<td><b>TRNO</b></td>
<td><b>VEHICLE COLOR</b></td>
<td><b>VEHICLE TYPE</b></td>
<td><b>VEHICLE MAKE</b></td>
<td><b>USC TYPE</b></td>
<td><b>CHASIS NO</b></td>
<td><b>LOCATION</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select r.username,r.phoneno,r.Gender,r.age,r.emailid,r.trno,r.vehiclecolor,r.typeofvehicle,r.vehiclemake,r.typeofusc,r.chasisno,r.location from jpreg r";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("phoneno") %></td>
<td><%=resultSet.getString("Gender") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("emailid") %></td>
<td><%=resultSet.getString("trno") %></td>
<td><%=resultSet.getString("vehiclecolor") %></td>
<td><%=resultSet.getString("typeofvehicle") %></td>
<td><%=resultSet.getString("vehiclemake") %></td>
<td><%=resultSet.getString("typeofusc") %></td>
<td><%=resultSet.getString("chasisno") %></td>
<td><%=resultSet.getString("location") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>