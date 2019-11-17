<%-- 
    Document   : login1
    Created on : 13-Nov-2018, 08:36:32
    Author     : harry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String type=request.getParameter("type");
if(type.equals("admin"))
{
    response.sendRedirect("admin.html");
}
else
{
    response.sendRedirect("user.html");
}
%>