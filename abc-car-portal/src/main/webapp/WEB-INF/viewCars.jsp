<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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

<body class="bg-light">

<style>
#hero {
  width: 100%;
  height: 75vh;
  background: url("images/background.jpeg");
  background-size: cover;
  position: relative;
}

#hero:before {
  content: "";
  background: rgba(255, 255, 255, 0.6);
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
}

#hero .container {
  position: relative;
}

#hero h1 {
  margin: 0;
  font-size: 48px;
  font-weight: 700;
  line-height: 56px;
  color: #222222;
  font-family: "Poppins", sans-serif;
}

#hero h1 span {
  color: #106eea;
}

#hero h2 {
  color: #555555;
  margin: 5px 0 30px 0;
  font-size: 24px;
  font-weight: 400;
}

#hero .btn-get-started {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  font-weight: 500;
  font-size: 14px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 10px 28px;
  border-radius: 4px;
  transition: 0.5s;
  color: #fff;
  background: #106eea;
}

#hero .btn-get-started:hover {
  background: #247cf0;
}

#hero .btn-watch-video {
  font-size: 16px;
  transition: 0.5s;
  margin-left: 25px;
  color: #222222;
  font-weight: 600;
  display: flex;
  align-items: center;
}

#hero .btn-watch-video i {
  color: #106eea;
  font-size: 32px;
  transition: 0.3s;
  line-height: 0;
  margin-right: 8px;
}

#hero .btn-watch-video:hover {
  color: #106eea;
}

#hero .btn-watch-video:hover i {
  color: #3b8af2;
}

@media (min-width: 1024px) {
  #hero {
    background-attachment: fixed;
  }
}

@media (max-width: 768px) {
  #hero {
    height: 100vh;
  }

  #hero h1 {
    font-size: 28px;
    line-height: 36px;
  }

  #hero h2 {
    font-size: 18px;
    line-height: 24px;
    margin-bottom: 30px;
  }

  #hero .btn-get-started,
  #hero .btn-watch-video {
    font-size: 13px;
  }
}

@media (max-height: 500px) {
  #hero {
    height: 120vh;
  }
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

<section id="hero" class="d-flex align-items-center">
    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <h1>Welcome to <span>ABCcar</span></h1>
      <h2>Sell your car easily with us</h2>
      <sec:authorize access="hasRole('Users')">
        <button type="button" class="btn-get-started" data-bs-toggle="modal"
        data-bs-target="#exampleModal">
        Sell Now</button>

        <div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true"
						role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">

								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Sell Your
										Car Today!</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<c:if test="${success_post != null}">
										<div class="alert alert-success">${success_post}</div>
									</c:if>

									<!-- Car Post Form -->
									<sf:form action="car_post" method="post" class="was-validated"
										modelAttribute="car" enctype="multipart/form-data">
										<div class="mb-3 mt-3">
											<label for="name" class="d-flex form-label">Name:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter car name" name="name" path="name"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="model" class="d-flex form-label">Model:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter model" name="model" path="model"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="price" class="d-flex form-label">Price
												USD:</label>
											<sf:input type="text" class="form-control" id="price"
												placeholder="Enter car price" name="price" path="price"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="make" class="d-flex form-label">Make
												Year:</label>
											<sf:input type="text" class="form-control"
												placeholder="Enter make year" name="make" path="make"
												required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label for="registeration" class="d-flex form-label">Registration
												Date:</label>
											<sf:input type="text" class="form-control" id="registeration"
												placeholder="Enter registeration date" name="registeration"
												path="registeration" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>
										<div class="mb-3">
											<label class="d-flex form-label">Photo:</label> <input
												type="file" class="form-control" name="fileImage" id="photo"
												accept="image/png, image/jpeg" required="true" />
											<div class="valid-feedback">Valid.</div>
											<div class="invalid-feedback">Please fill out this
												field.</div>
										</div>

										<div class="holder"
											style="height: 300px; width: 300px; margin: auto;">
											<img id="imgPreview" src="#" alt="image preview"
												style="width: inherit;" />
										</div>

										<button type="submit" class="btn btn-primary d-flex">Post</button>
									</sf:form>
									<script>
						            $(document).ready(() => {
						            	
						                $("#photo").change(function () {
						                    const file = this.files[0];
						                    if (file) {
						                        let reader = new FileReader();
						                        reader.onload = function (event) {
						                            $("#imgPreview")
						                              .attr("src", event.target.result);
						                        };
						                        reader.readAsDataURL(file);
						                    }
						                });
						            });
						        </script>
									<!-- Car Post Form -->
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>

								</div>
							</div>
						</div>

					</div>
				</div>
    </sec:authorize>
  </section>

	<div class="container">
	<div class="section-title">
          <h2>CARS</h2>
          <h3>Check our selection of <span>cars</span></h3>
          <p>Bid on your dream car!</p>
        </div>
		<div class="row" style="gap: 60px;">
			<c:forEach items="${cars}" var="c">
				<c:set var="id" value="${c.id}"></c:set>
				<c:if test="${success_post == null}">

					<c:if test="${c.sellStatus != 'sold'}">
						<div class="card" style="width: 400px">
							<img class="card-img-top pt-2" src="${c.photoImagePath}"
								alt="${c.photos}" style="width: 375px; height: 211px;">
							<div class="card-body">
								<h4 class="card-title">${c.name}</h4>
								<p class="card-text">
									<i class="fas fa-tags"></i>&nbsp;USD ${c.price}
								</p>

								<!--<a href="#" class="btn"
							style="background-color: red; margin-right: 40px;">Book a
							Test Drive</a>-->
								<a href="/car_detail?cid=${c.id}" class="btn btn-primary">View
									Car Details</a>
							</div>
						</div>
					</c:if>

				</c:if>
			</c:forEach>
			<c:if test="${success_post != null}">
				<div class="alert alert-success">${success_post}
					Click here to <a href="/car_detail?cid=${id}">View</a> your car
					post
				</div>
			</c:if>
		</div>
		<!-- list of all cars posted -->
	</div>



	<%@ include file="footer.jsp"%>
</body>
</html>