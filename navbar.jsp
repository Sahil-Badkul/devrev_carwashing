        <%
        String username = (String)session.getAttribute("username");  
        %>
     <!-- Navbar start -->
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp" style="color: rgb(255, 255, 255)">CarWash</a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
  
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Washing Plans</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="registrationForm.jsp">User login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="loginForm.jsp">Admin</a>
            </li>
            <%
            if(username != null){
            %>
            <li class="nav-item">
              <a class="nav-link" href="verify_logout.jsp">Logout</a>
            </li>
            <% } %>
        </div>
      </nav>
      <!-- Navbar end -->