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
</head>

<body class="bg-light">
<style>
    .about .content h3 {
  font-weight: 600;
  font-size: 26px;
}

.about .content ul {
  list-style: none;
  padding: 0;
}

.about .content ul li {
  display: flex;
  align-items: flex-start;
  margin-bottom: 35px;
}

.about .content ul li:first-child {
  margin-top: 35px;
}

.about .content ul i {
  background: #fff;
  box-shadow: 0px 6px 15px rgba(16, 110, 234, 0.12);
  font-size: 24px;
  padding: 20px;
  margin-right: 15px;
  color: #106eea;
  border-radius: 50px;
}

.about .content ul h5 {
  font-size: 18px;
  color: #555555;
}

.about .content ul p {
  font-size: 15px;
}

.about .content p:last-child {
  margin-bottom: 0;
}

.team {
  padding: 60px 0;
}

.team .member {
  margin-bottom: 20px;
  overflow: hidden;
  border-radius: 4px;
  background: #fff;
  box-shadow: 0px 2px 15px rgba(16, 110, 234, 0.15);
}

.team .member .member-img {
  position: relative;
  overflow: hidden;
}

.team .member .social {
  position: absolute;
  left: 0;
  bottom: 30px;
  right: 0;
  opacity: 0;
  transition: ease-in-out 0.3s;
  text-align: center;
}

.team .member .social a {
  transition: color 0.3s;
  color: #222222;
  margin: 0 3px;
  padding-top: 7px;
  border-radius: 4px;
  width: 36px;
  height: 36px;
  background: rgba(16, 110, 234, 0.8);
  display: inline-block;
  transition: ease-in-out 0.3s;
  color: #fff;
}

.team .member .social a:hover {
  background: #3b8af2;
}

.team .member .social i {
  font-size: 18px;
}

.team .member .member-info {
  padding: 25px 15px;
}

.team .member .member-info h4 {
  font-weight: 700;
  margin-bottom: 5px;
  font-size: 18px;
  color: #222222;
}

.team .member .member-info span {
  display: block;
  font-size: 13px;
  font-weight: 400;
  color: #aaaaaa;
}

.team .member .member-info p {
  font-style: italic;
  font-size: 14px;
  line-height: 26px;
  color: #777777;
}

.team .member:hover .social {
  opacity: 1;
  bottom: 15px;
}

.section-title {
  text-align: center;
  padding-bottom: 30px;
}

.section-title h2 {
  font-size: 13px;
  letter-spacing: 1px;
  font-weight: 700;
  padding: 8px 20px;
  margin: 0;
  background: #e7f1fd;
  color: #106eea;
  display: inline-block;
  text-transform: uppercase;
  border-radius: 50px;
}

.section-title h3 {
  margin: 15px 0 0 0;
  font-size: 32px;
  font-weight: 700;
}

.section-title h3 span {
  color: #106eea;
}

.section-title p {
  margin: 15px auto 0 auto;
  font-weight: 600;
}

@media (min-width: 1024px) {
  .section-title p {
    width: 50%;
  }
}
</style>


	<%@ include file="header.jsp"%>

<section id="about" class="about section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h3>Find Out More <span>About Us</span></h3>
      </div>

      <div class="row">
        <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
          <img src="images/team.jpg" class="img-fluid" alt="">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="100">
          <h3>Brief history of ABCcar Company</h3>
          <p class="fst-italic">
            ABCCar was founded in the early 2000s by a group of passionate car enthusiasts who were frustrated with the lack of reliable and affordable car options in their city. They saw an opportunity to disrupt the traditional car industry and create a more customer-focused and accessible service. Today, ABCCar is one of the most popular car bidding companies in the region, with a large and diverse fleet of vehicles, a user-friendly app, and a dedicated team of customer service representatives. Despite facing stiff competition from established players in the industry, ABCCar has remained true to its original mission of providing reliable and affordable cars to everyone.
          </p>
        </div>
      </div>
    </div>
  </section>

  <section id="team" class="team section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Team</h2>
        <h3>Our Hardworking <span>Team</span></h3>
        <p>We at ABCcar hires the the most professional team to give you the best experience</p>
      </div>

      <div class="row">

        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
          <div class="member">
            <div class="member-img">
              <img src="images/male1.jpg" class="img-fluid" alt="">
            </div>
            <div class="member-info">
              <h4>Walter White</h4>
              <span>Chief Executive Officer</span>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
          <div class="member">
            <div class="member-img">
              <img src="images/female2.jpg" class="img-fluid" alt="">
            </div>
            <div class="member-info">
              <h4>Sarah Jhonson</h4>
              <span>Product Manager</span>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
          <div class="member">
            <div class="member-img">
              <img src="images/male2.jpg" class="img-fluid" alt="">

            </div>
            <div class="member-info">
              <h4>William Anderson</h4>
              <span>CTO</span>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
          <div class="member">
            <div class="member-img">
              <img src="images/female3.jpg" class="img-fluid" alt="">
            </div>
            <div class="member-info">
              <h4>Amanda Jepson</h4>
              <span>Accountant</span>
            </div>
          </div>
        </div>

      </div>

    </div>
  </section>
	<%@ include file="footer.jsp"%>
</body>
</html>
