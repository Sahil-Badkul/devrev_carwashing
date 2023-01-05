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
    <%@ include file="navbar.jsp"%>
    <!--Model-->
    <div class="container">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Car Wash Booking</h4>
          </div>
          <div class="modal-body">
            <form method="post" action="verify_booknow.jsp">
              <p>
                <label for="packageType">Package Type</label>
                <select
                  id="packageType"
                  name="packageType"
                  class="form-control"
                >
                  <option value="">Package Type</option>
                  <option value="BASIC CLEANING">
                    BASIC CLEANING ($10.99)
                  </option>
                  <option value="PREMIUM CLEANING">
                    PREMIUM CLEANING ($20.99)
                  </option>
                  <option value=" COMPLEX CLEANING">
                    COMPLEX CLEANING($30.99)
                  </option>
                </select>
                <br />
                <br />
                <label for="carWashPoint">Select Washing Point</label>

                <select
                  id="carWashPoint"
                  name="carWashPoint"
                  class="form-control"
                >
                  <option value="">Select Washing Point</option>
                  <option value=" ABC Street New Jabalpur 400266">
                    ABC Street New Jabalpur 400266
                  </option>
                  <option value="XYZ block Sector 1 - Seoni 480222">
                    A3263 Sector 1- Seoni' 480222
                  </option>
                  <option value="H911 Indira Puram Lakhnadon 480886">
                    Lakhnadon 480886
                  </option>
                </select>
              </p>

              <p>
                <label for="fullName">Full Name</label>
                <input
                  type="text"
                  id="fullName"
                  name="fullName"
                  class="form-control"
                  required
                  placeholder="Full Name"
                />
              </p>
              <p>
                <label for="mobileNumber">Mobile Number</label>

                <input
                  type="text"
                  id="mobileNumber"
                  name="mobileNumber"
                  class="form-control"
                  pattern="[0-9]{10}"
                  title="10 numeric characters only"
                  required
                  placeholder="Mobile No."
                />
              </p>

              <p>
                <label for="washDate">Wash Date</label><br /><input
                  type="date"
                  id="washDate"
                  name="washDate"
                  required
                  class="form-control"
                />
              </p>
              <p>
                <label for="washTime">Wash time</label><br /><input
                  type="time"
                  id="washTime"
                  name="washTime"
                  required
                  class="form-control"
                />
              </p>
              <label for="message">Message</label>

              <p>
                <textarea
                  id="message"
                  name="message"
                  class="form-control"
                  placeholder="Message if any"
                ></textarea>
              </p>
              <p>
                <input
                  type="submit"
                  class="btn btn-primary"
                  name="book"
                  value="Book Now"
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
