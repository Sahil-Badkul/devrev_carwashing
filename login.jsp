<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
        <%@ include file="./includes/head.jsp"%>

        </head>

    <body>
        <%@ include file="navbar.jsp"%>        
        <div class="container">
            <div class="modal-dialog">            
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Login</h4>
                </div>
                <div class="modal-body">
                    <form method="post" action="verify_login.jsp">
                        <p>
                            <label for="userName">User Name</label>
                            <input type="text" id="userName" name="userName" class="form-control"required placeholder="Enter user name">
                        </p>
                        <p>
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" class="form-control"required placeholder="Password">
                        </p>
                        <p><input type="submit" class="btn btn-primary" name="login" value="login"></p>
                    </form>
                </div>
            </div>

            </div>
        </div>
        <%@ include file="./includes/footer.jsp"%>
    </body>

</html>