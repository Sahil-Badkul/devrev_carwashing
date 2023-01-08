<%@ page import="java.sql.*"%>
<% 
try
{
    String u_id = "";
    String u_washingPointName = request.getParameter("washingPointName");
    String u_washingPointAddress = request.getParameter("washingPointAddress");
    String u_contactNumber = request.getParameter("contactNumber");

    Class.forName("com.mysql.jdbc.Driver").newInstance();

    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root","");

    PreparedStatement pst = conn.prepareStatement("INSERT INTO `washingpoints` (`id`, `washingPointName`,  `washingPointAddress`,  `contactNumber`) VALUES (default,?,?,?)");
    pst.setString(1,u_washingPointName);
    pst.setString(2,u_washingPointAddress);
    pst.setString(3,u_contactNumber);

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
