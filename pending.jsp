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
          <h2 style="text-align: center;">Pending Bookings</h2>
          <%             
          Class.forName("com.mysql.jdbc.Driver").newInstance(); 
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carwashing","root",""); 
          Statement st = conn.createStatement(); 
          String query = "select * from booknow where status='pending'";
          ResultSet rs = st.executeQuery(query); 
          int flag=0; 
          if(rs.next()){
            rs.previous();
          %>
          <table id="table">
            <thead>
              <tr>
                <th>Id</th>
                <th>Name</th>
                <th width="200">Pacakge Type</th>
                <th>Washing Point</th>
                <th>Washing Date/Time</th>  
                <th>Status</th>            
              </tr>
            </thead>
            <%
            while(rs.next()) {
            %>
            <tbody>
            <tr my-1>
                <td data-th="Id">
                <span id="abc" class="bt-content"><%=rs.getString("id")%></span>
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
                <td data-th="Status">
                  <span class="bt-content"><%=rs.getString("status")%></span>
              </td>  
            </tr>
            </tbody>
            <% 
            }}else{
                %>
                <hr>
                <br>
                <br>
                <h3 style="text-align: center;">Data not found</h3>
                <%
            }
            rs.close(); conn.close(); %>
          </table>
        </div>
      </div>
    </div>
    <%@ include file="./includes/footer.jsp"%>
  </body>
</html>
