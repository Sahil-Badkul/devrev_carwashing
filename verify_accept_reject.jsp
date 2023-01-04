//update booknow set status = "value" where id = "id";
<%@ page language="java" import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<%
    Connection conn11 = null;
    ResultSet rs11 = null;
    Statement stmt11 = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root","");
    stmt11 = conn11.createStatement();

    String u_id = request.getParameter("user_id");
    String u_accept = request.getParameter("status");

    int stat = stmt11.executeUpdate("UPDATE booknow set status ='"+u_accept+"' where id = '"+u_id+"' ");
    
                if(stat!= 0)
                {
                 response.sendRedirect("admin.jsp");
                }
                else
                {
                  response.sendRedirect("admin.jsp");
                }

%>