<%@ page import="java.sql.*"%>
<%

try
{
    String u_id = "";
    String u_bookingId = request.getParameter("bookingId");
    String u_packageType = request.getParameter("packageType");
    String u_carWashPoint = request.getParameter("carWashPoint");
    String u_fullName = request.getParameter("fullName");
    String u_mobileNumber = request.getParameter("mobileNumber");
    String u_washDate = request.getParameter("washDate");
    String u_washTime = request.getParameter("washTime");
    String u_message = request.getParameter("message");
   
    Class.forName("com.mysql.jdbc.Driver").newInstance();

    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root","");

    PreparedStatement pst = conn.prepareStatement("INSERT INTO `booknow` (`id`,`bookingId`, `packageType`,  `carWashPoint`,  `fullName`,  `mobileNumber`, `washDate`,`washTime`,`message` ) VALUES (default,?,?,?,?,?,?,?,?)");
    pst.setString(1,u_bookingId);
    pst.setString(2,u_packageType);
    pst.setString(3,u_carWashPoint);
    pst.setString(4,u_fullName);
    pst.setString(5,u_mobileNumber);
    pst.setString(6,u_washDate);
    pst.setString(7,u_washTime);
    pst.setString(8,u_message);

    int status = pst.executeUpdate();

    if(status!=0)
    {
      out.println("Success");
      response.sendRedirect("index.jsp");
    }
    else
    {
      out.println("NOT Successful");

    }//end of the if statement

}//try ended

catch(Exception e)
{
      out.println("Exception :- "+e);
}


%>
