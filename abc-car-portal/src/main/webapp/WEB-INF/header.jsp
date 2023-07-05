<link href="css/bootstrap-icons.css" rel="stylesheet">

<style>
  .header {
    background:  #fff;
    transition: all 0.5s;
    z-index: 997;
    height: 90px;
    border-bottom: 1px solid #fff;
  }
  
  @media (max-width: 575px) {
    .header {
      height: 70px;
    }
  }
  
  .header.sticked {
    border-color: #fff;
    border-color: #eee;
  }
  
  .header .logo img {
    max-height: 40px;
    margin-right: 6px;
  }
  
  .header .logo h1 {
    font-size: 28px;
    font-weight: 700;
    color: #000;
    margin: 0;
    font-family: var(--font-secondary);
    text-decoration: none;
  }
  
  .header .logo h1 span {
    color: var(--color-primary);
  }
  
  section {
    scroll-margin-top: 90px;
  }
  
  .navbar {
  padding: 0;
}

.navbar ul {
  margin: 0;
  padding: 0;
  display: flex;
  list-style: none;
  align-items: center;
}

.navbar li {
  position: relative;
}

.navbar>ul>li {
  white-space: nowrap;
  padding: 10px 0 10px 28px;
}

.navbar a,
.navbar a:focus {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 3px;
  font-size: 15px;
  font-weight: 600;
  color: #222222;
  white-space: nowrap;
  transition: 0.3s;
  position: relative;
}

.navbar a i,
.navbar a:focus i {
  font-size: 12px;
  line-height: 0;
  margin-left: 5px;
}

.navbar>ul>li>a:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 2px;
  bottom: -6px;
  left: 0;
  background-color: #106eea;
  visibility: hidden;
  width: 0px;
  transition: all 0.3s ease-in-out 0s;
}

.navbar a:hover:before,
.navbar li:hover>a:before,
.navbar .active:before {
  visibility: visible;
  width: 100%;
}

.navbar a:hover,
.navbar .active,
.navbar .active:focus,
.navbar li:hover>a {
  color: #106eea;
}

.navbar .dropdown ul {
  display: block;
  position: absolute;
  left: 28px;
  top: calc(100% + 30px);
  margin: 0;
  padding: 10px 0;
  z-index: 99;
  opacity: 0;
  visibility: hidden;
  background: #fff;
  box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
  transition: 0.3s;
}

.navbar .dropdown ul li {
  min-width: 200px;
}

.navbar .dropdown ul a {
  padding: 10px 20px;
  font-weight: 400;
}

.navbar .dropdown ul a i {
  font-size: 12px;
}

.navbar .dropdown ul a:hover,
.navbar .dropdown ul .active:hover,
.navbar .dropdown ul li:hover>a {
  color: #106eea;
}

.navbar .dropdown:hover>ul {
  opacity: 1;
  top: 100%;
  visibility: visible;
}

.navbar .dropdown .dropdown ul {
  top: 0;
  left: calc(100% - 30px);
  visibility: hidden;
}

.navbar .dropdown .dropdown:hover>ul {
  opacity: 1;
  top: 0;
  left: 100%;
  visibility: visible;
}

@media (max-width: 1366px) {
  .navbar .dropdown .dropdown ul {
    left: -90%;
  }

  .navbar .dropdown .dropdown:hover>ul {
    left: -100%;
  }
}

/**
* Mobile Navigation 
*/
.mobile-nav-toggle {
  color: #222222;
  font-size: 28px;
  cursor: pointer;
  display: none;
  line-height: 0;
  transition: 0.5s;
}

.mobile-nav-toggle.bi-x {
  color: #fff;
}

@media (max-width: 991px) {
  .mobile-nav-toggle {
    display: block;
  }

  .navbar ul {
    display: none;
  }
}

.navbar-mobile {
  position: fixed;
  overflow: hidden;
  top: 0;
  right: 0;
  left: 0;
  bottom: 0;
  background: rgba(9, 9, 9, 0.9);
  transition: 0.3s;
  z-index: 999;
}

.navbar-mobile .mobile-nav-toggle {
  position: absolute;
  top: 15px;
  right: 15px;
}

.navbar-mobile ul {
  display: block;
  position: absolute;
  top: 55px;
  right: 15px;
  bottom: 15px;
  left: 15px;
  padding: 10px 0;
  background-color: #fff;
  overflow-y: auto;
  transition: 0.3s;
}

.navbar-mobile a,
.navbar-mobile a:focus {
  padding: 10px 20px;
  font-size: 15px;
  color: #222222;
}

.navbar-mobile>ul>li {
  padding: 0;
}

.navbar-mobile a:hover:before,
.navbar-mobile li:hover>a:before,
.navbar-mobile .active:before {
  visibility: hidden;
}

.navbar-mobile a:hover,
.navbar-mobile .active,
.navbar-mobile li:hover>a {
  color: #106eea;
}

.navbar-mobile .getstarted,
.navbar-mobile .getstarted:focus {
  margin: 15px;
}

.navbar-mobile .dropdown ul {
  position: static;
  display: none;
  margin: 10px 20px;
  padding: 10px 0;
  z-index: 99;
  opacity: 1;
  visibility: visible;
  background: #fff;
  box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
}

.navbar-mobile .dropdown ul li {
  min-width: 200px;
}

.navbar-mobile .dropdown ul a {
  padding: 10px 20px;
}

.navbar-mobile .dropdown ul a i {
  font-size: 12px;
}

.navbar-mobile .dropdown ul a:hover,
.navbar-mobile .dropdown ul .active:hover,
.navbar-mobile .dropdown ul li:hover>a {
  color: #106eea;
}

.navbar-mobile .dropdown>.dropdown-active {
  display: block;
}
  
  
  </style>
  
    <header id="header" class="header d-flex align-items-center">
      <div class="container d-flex align-items-center justify-content-between">
  
        <a href="cars" class="nav-item nav-link logo d-flex align-items-center me-auto me-lg-0">
          <h1>ABC<span>Car</span></h1>
        </a>
        <sec:authorize access="!isAuthenticated()">
        <nav id="navbar" class="navbar">
          <ul>
            <li><a class="nav-item nav-link" href="register_user">Register</a></li>
            <li><a class="nav-item nav-link" href="login">Login</a></li>
            <li><a class="nav-item nav-link" href="about_us">About Us</a></li>
            <li><a class="nav-item nav-link" href="contact_us">Contact Us</a></li>
          </ul>
        </nav>
        </sec:authorize>
  
        <sec:authorize access="isAuthenticated()">
          <sec:authorize access="hasRole('Users')">
            <nav id="navbar" class="navbar">
              <ul>                
                <li><sf:form action="search" method="get" style="width: 100%;">
                    <div class="input-group">
                      <input type="search" class="form-control rounded"
                        placeholder="Search" aria-label="Search" name="keyword"
                        aria-describedby="search-addon" />
                      <button type="submit" class="btn btn-outline-primary">search</button>
                    </div>
                  </sf:form></li>
                <li><a class="nav-item nav-link" href="cars">Home</a></li>
                <li><a class="nav-item nav-link" href="about_us">About Us</a></li>
                <li><a class="nav-item nav-link" href="contact_us">Contact Us</a></li>
                <li><a class="nav-item nav-link" href="profile">Profile</a></li>
                <li>
                <form action="logout" method="post" style="padding: 7px;">
                  <input type="hidden" name="${_csrf.parameterName}"
                    value="${_csrf.token}" /> <input type="submit" name="Logout"
                    value="Logout" class="btn btn-primary"></input>
                </form>
              </li>
            </ul>
          </nav>
          </sec:authorize>
          <sec:authorize access="hasRole('Administrator')">
						<div id="navbar" class="navbar">
                <ul>
                <li><sf:form action="search" method="get" style="width: 100%;">
                    <div class="input-group">
                      <input type="search" class="form-control rounded"
                        placeholder="Search" aria-label="Search" name="keyword"
                        aria-describedby="search-addon" />
                      <button type="submit" class="btn btn-outline-primary">search</button>
                    </div>
                  </sf:form></li>
                  <li><a class="nav-item nav-link" href="cars">Home</a></li>
                  <li><a class="nav-item nav-link" href="all_cars">Car Management</a></li>
                  <li><a class="nav-item nav-link" href="users">User Management</a></li>
                  <li><a class="nav-item nav-link" href="about_us">About Us</a></li>
                <li><a class="nav-item nav-link" href="contact_us">Contact Us</a></li>
            
                  <li>
                  <form action="logout" method="post" style="padding: 7px;">
                    <input type="hidden" name="${_csrf.parameterName}"
                      value="${_csrf.token}" /> <input type="submit" name="Logout"
                      value="Logout" class="btn btn-primary"></input>
                  </form>
                </li>
              </ul>
						</div>
					</sec:authorize>
        </sec:authorize>
        <i class="bi bi-list mobile-nav-toggle"></i>
  
      </div>
    </header>
    
    <script src="js/aos.js"></script>
    <script src="js/main.js"></script>
