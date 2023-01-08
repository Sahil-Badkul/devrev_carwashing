<%@ page language="java" import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <title>Admin</title>
    <%@ include file="./includes/head.jsp"%>
    <link rel="stylesheet" href="tablesytle.css" />
  </head>
  <body>
    <%@ include file="adminNavbar.jsp"%>
    <div class="container">
      <div class="agile-tables">
        <div class="w3l-table-info">
          <h2 style="text-align: center;">All Bookings</h2>
          <table id="table">
            <thead>
              <tr>
                <th>Id</th>
                <th>Name</th>
                <th width="200">Pacakge Type</th>
                <th>Washing Point</th>
                <th>Washing Date/Time</th>
                <th>Action</th>
              </tr>
            </thead>
            <%             
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root",""); 
            Statement st = conn.createStatement(); 
            String query = "select * from booknow";
            ResultSet rs = st.executeQuery(query); 
            int flag=0; 
            while(rs.next()) {
            %>
            <tbody>
              <tr my-1>
                <td data-th="Id">
                <%
                  String u_id = rs.getString("id");
                  String status = rs.getString("status");
                %>
                  <span id="abc" class="bt-content"><%=u_id%></span>
                </td>
                <td data-th="Name">
                  <span class="bt-content"><%=rs.getString("fullName")%></span>
                </td>
                <td width="50" data-th="Pacakge Type">
                  <span class="bt-content"><%=rs.getString("packageType")%></span>
                </td>
                <td data-th="Washing Point ">
                  <span class="bt-content"><%=rs.getString("carWashPoint")%><br/></span>
                </td>
                <td data-th="Washing Date/Time ">
                  <span class="bt-content"><%=rs.getString("washDate")%>/<%=rs.getString("washTime")%></span>
                </td>
                <td data-th="Action">
                  <%if(status.equals("pending"))
                  {%>
                  <form action="verify_accept_reject.jsp">
                    <input type="hidden" value="<%=u_id%>" name="user_id">
                    <button type = "submit" value="accept" name="status" class="btn btn-primary btn-sm">Accept</button>
                    <button type = "submit" value="reject" name="status" class="btn btn-primary btn-sm">Reject</button>
                  </form>
                  <%}
                  else
                  {%>
                      <button type = "submit" value="accept" name="status" class="btn btn-primary btn-sm disabled"><%=status%></button>                      
                    <%}
                  %>
                </td>
              </tr>
            </tbody>
            <% 
            }
            rs.close(); conn.close();%>
          </table>
        </div>
      </div>
    </div>
    <%@ include file="./includes/footer.jsp"%>
  </body>
</html>
