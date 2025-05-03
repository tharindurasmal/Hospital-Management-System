<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/bootstrap.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
  html, body {
    height: 100%;
  }

  body {
    display: flex;
    flex-direction: column;
  }

  main {
    flex: 1;
  }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg  bg-primary" data-bs-theme="dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="index.jsp">Mecare</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarText">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="services.jsp">Servicer</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="about.jsp">About</a>
	        </li>
	      </ul>
			<div class="d-flex align-items-center justify-content-between">
			  <span class="navbar-text me-4">
			    <a href="tel:+94772801487" class="text-decoration-none">
			      <i class="bi bi-telephone"></i> +94772801487
			    </a>
			  </span>
			
			  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
    			<a href="login.jsp" class="btn btn-success" role="button"><i class="bi bi-person-fill"></i></a>
			  </div>
			</div>
	  </div>
	  </div>
	</nav>
<main>	
<div class="container mt-4">
  <h5 class="text-center mb-4">Available Doctors</h5>
  <div class="row">

    <div class="col-md-6 mb-3">
      <div class="card shadow-sm d-flex flex-row align-items-center p-2">
        <img src="img/doctor.png" class="rounded-circle me-3" alt="Doctor Image" width="64" height="64">
        <div>
          <h6 class="mb-1">Dr. John Smith</h6>
          <p class="mb-1">Surgeon</p>
          <a href="#" class="btn btn-outline-primary btn-sm">Book Now</a>
        </div>
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <div class="card shadow-sm d-flex flex-row align-items-center p-2">
        <img src="img/doctor.png" class="rounded-circle me-3" alt="Doctor Image" width="64" height="64">
        <div>
          <h6 class="mb-1">Dr. John Smith</h6>
          <p class="mb-1">Surgeon</p>
          <a href="#" class="btn btn-outline-primary btn-sm">Book Now</a>
        </div>
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <div class="card shadow-sm d-flex flex-row align-items-center p-2">
        <img src="img/doctor.png" class="rounded-circle me-3" alt="Doctor Image" width="64" height="64">
        <div>
          <h6 class="mb-1">Dr. John Smith</h6>
          <p class="mb-1">Gastroenterological Surgeon</p>
          <a href="#" class="btn btn-outline-primary btn-sm">Book Now</a>
        </div>
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <div class="card shadow-sm d-flex flex-row align-items-center p-2">
        <img src="img/doctor.png" class="rounded-circle me-3" alt="Doctor Image" width="64" height="64">
        <div>
          <h6 class="mb-1">Dr. John Smith</h6>
          <p class="mb-1">Surgeon</p>
          <a href="#" class="btn btn-outline-primary btn-sm">Book Now</a>
        </div>
      </div>
    </div>
    
    
    </div>
    
</div>
</main>
  <footer class="bg-dark text-white text-center py-3">
    <div class="container">
      <p class="mb-1">© 2025 Mecare Hospital. All rights reserved.</p>
      <p class="mb-0">
        <a href="tel:+94772801487" class="text-white text-decoration-none me-3">Call: +94 77 280 1487</a>
        <a href="mailto:info@mecare.lk" class="text-white text-decoration-none">Email: info@mecare.lk</a>
      </p>
    </div>
  </footer>		
</body>
</html>