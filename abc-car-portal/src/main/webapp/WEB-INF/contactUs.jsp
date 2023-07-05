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

<link href="css/boxicons.min.css" rel="stylesheet">
<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body class="bg-light">


<style>
.contact .info-box {
  color: #444444;
  text-align: center;
  box-shadow: 0 0 30px rgba(214, 215, 216, 0.3);
  padding: 20px 0 30px 0;
}

.contact .info-box i {
  font-size: 32px;
  color: #106eea;
  border-radius: 50%;
  padding: 8px;
  border: 2px dotted #b3d1fa;
}

.contact .info-box h3 {
  font-size: 20px;
  color: #777777;
  font-weight: 700;
  margin: 10px 0;
}

.contact .info-box p {
  padding: 0;
  line-height: 24px;
  font-size: 14px;
  margin-bottom: 0;
}

.footer-newsletter {
  padding: 50px 0;
  background: #f1f6fe;
  text-align: center;
  font-size: 15px;
}

.footer-newsletter h4 {
  font-size: 24px;
  margin: 0 0 20px 0;
  padding: 0;
  line-height: 1;
  font-weight: 600;
}

.footer-newsletter form {
  margin-top: 30px;
  background: #fff;
  padding: 6px 10px;
  position: relative;
  border-radius: 4px;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.06);
  text-align: left;
}

.footer-newsletter form input[type=email] {
  border: 0;
  padding: 4px 8px;
  width: calc(100% - 100px);
}

.footer-newsletter form input[type=submit] {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  border: 0;
  background: none;
  font-size: 16px;
  padding: 0 20px;
  background: #106eea;
  color: #fff;
  transition: 0.3s;
  border-radius: 0 4px 4px 0;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
}

.footer-newsletter form input[type=submit]:hover {
  background: #0d58ba;
}
</style>
	<%@ include file="header.jsp"%>

    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h3><span>Contact Us</span></h3>
          <p>Feel free to contact us throough this means</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-3 col-md-6">
            <div class="info-box mb-4">
            <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p>473 Lemke Forest Suite 728</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box mb-4">
            <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>gethelp@abccar.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+1-469-704-3196</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
            <i class="bx bx-store"></i>
              <h3>our website</h3>
              <p>ABCCompany</p>
            </div>
          </div>
        </div>
        <div class="footer-newsletter">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-6">
                <h4>Join Our Newsletter</h4>
                <p>Join our newsletter and you won't miss a single car</p>
                <form>
                  <input type="email" name="email"><input type="submit" value="Subscribe">
                </form>
              </div>
            </div>
          </div>
        </div>
    </section>

	<%@ include file="footer.jsp"%>
</body>
</html>
