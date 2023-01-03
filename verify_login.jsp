<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
Class.forName("com.mysql.jdbc.Driver").newInstance();	
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root","");

    String user_email = request.getParameter("userName");
    String password = request.getParameter("password");
      
    Statement st = conn.createStatement();
    String query = "select * from adminlogin";
   
    ResultSet rs = st.executeQuery(query);
    int flag=0;
    
while(rs.next())
{
  if(rs.getString("email").equals(user_email) && rs.getString("password").equals(password))
  {
    flag=1;
    break;
  }
}

if(flag==1)
{
  String userids=rs.getString("id"); 
  session.setAttribute("username", user_email);
  session.setAttribute("id",userids);
  response.sendRedirect("index.jsp");
}
else
{
  %>
  
  <%     
    response.sendRedirect("login.jsp"); 
 }
%>
  <script>
      alert("Login Failed");
</script>
 <%
 rs.close();
 conn.close();
 %>       
