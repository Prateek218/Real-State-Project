<%@ page  import="java.io.*" session="true" %>

<% if((request.getParameter("r1")).equals("Tenant"))
{
response.sendRedirect("t_add.jsp");
}
else
{
response.sendRedirect("l_add.jsp");
}




%>
