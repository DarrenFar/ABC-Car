<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>



	<%@ include file="header.jsp"%>


<div class="px-4 py-5 px-md-5 text-center text-lg-start bg-light">
    <div class="container">
      <div class="row gx-lg-5 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h1 class="my-5 display-3 fw-bold ls-tight">
            ABC
            <span class="text-primary">Car</span>
          </h1>
          <p style="color: hsl(217, 10%, 50.8%)">
            Welcome to ABCCar, the premier destination for car enthusiasts looking to buy and sell cars through an exciting bidding process. We're thrilled to have you here and can't wait to help you find your dream car or sell your beloved ride to a new owner.
          </p>
        </div>
        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card">
            <div class="card-body py-5 px-md-5">

                <h4 class="fw-bold">Sign in</h4>
                <p>Please input all of the form below to sign in to ABC Cars</p>
                <hr class="my-4">
                <c:if test="${error_string != null}">

			<div class="alert alert-danger">${error_string} Click here to <a href="register_user">
			Register</a></div>
		</c:if>
        <c:url var="post_url" value="/login" />
        <form action="${post_url}" method="post" class="was-validated">
            <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
                <div class="form-outline mb-4">
                    <label for="username" class="form-label">Username:</label> <input
					type="text" class="form-control" id="userName"
					placeholder="Enter username" name="username" value="" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
                </div>

                <div class="form-outline mb-4">
                    <label for="password" class="form-label">Password:</label> <input
					type="password" class="form-control" id="password"
					placeholder="Enter password" name="password" value="" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
                </div>

                <div class="text-center text-lg-start">
                  <p class="small fw-bold">Don't have an account? <a href="register_user"
                      class="link-primary">Register</a></p>
                </div>
                <input type="submit" name="Login" value="Sign In"
				class="btn btn-primary"></input>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>





	<%@ include file="footer.jsp"%>

</body>
</html>
