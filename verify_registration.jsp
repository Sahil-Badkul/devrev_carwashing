<%@ page import="java.sql.*"%>
<% 
try
{
    String u_id = "";
    String username = request.getParameter("username");
    String mobilenumber = request.getParameter("mobilenumber");
    String email  = request.getParameter("email");
    String password  = request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver").newInstance();

    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root","");

    PreparedStatement pst = conn.prepareStatement("INSERT INTO `userlogin` (`id`, `username`,  `mobilenumber`,  `email`, `password`) VALUES (default,?,?,?,?)");
    pst.setString(1,username);
    pst.setString(2,mobilenumber);
    pst.setString(3,email);
    pst.setString(4,password);

    int status = pst.executeUpdate();

    if(status!=0)
    {
      out.println("Success");
      response.sendRedirect("admin.jsp");
    }
    else
    {
      out.println("Not Successful");

    }//end of the if statement

}//try ended

catch(Exception e)
{
      out.println("Exception :- "+e);
}
%>
