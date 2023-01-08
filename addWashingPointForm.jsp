<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Booking form</title>
    <%@ include file="./includes/head.jsp"%>
  </head>

  <body>
    <%@ include file="adminNavbar.jsp"%>
    <div class="container">
      <div class="modal-dialog">        
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add Washing Points</h4>
          </div>
          <div class="modal-body">
            <form method="post" action="verify_addWashingPoint.jsp">
              <p>
                <label for="washingPointName">Car Wash Point Name</label>
                <input
                  type="text"
                  id="washingPointName"
                  name="washingPointName"
                  class="form-control"
                  required
                  placeholder="Washing Point Name"
                />
              </p>

              <p>
                <label for="washingPointAddress">Adress</label>
                <textarea
                  id="washingPointAddress"
                  name="washingPointAddress"
                  class="form-control"
                  placeholder="Adress"
                ></textarea>
              </p>
              <p>
                <label for="contactNumber">Contact Number</label>

                <input
                  type="text"
                  id="contactNumber"
                  name="contactNumber"
                  class="form-control"
                  pattern="[0-9]{10}"
                  title="10 numeric characters only"
                  required
                  placeholder="Contact Number"
                />
              </p>

              <p>
                <input
                  type="submit"
                  class="btn btn-primary"
                  name="book"
                  value="Add"
                />
              </p>
            </form>
          </div>
        </div>
      </div>
    </div>
    <%@ include file="./includes/footer.jsp"%>
  </body>
</html>
