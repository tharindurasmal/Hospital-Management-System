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
</head>
<body>
<div class="container my-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card shadow p-4 text-center">

        <!-- Doctor Info -->
        <img src="img/doctor.png" class="rounded-circle mx-auto mb-3" alt="Doctor Image" style="width: 70px; height: 70px; object-fit: cover;">
        <h5 class="mb-1">Dr. A. Fernando</h5>
        <p class="text-muted">Cardiologist</p>

        <!-- Available Date -->
        <div class="mb-3 text-start">
          <label class="form-label fw-semibold">Available Date</label>
          <p class="text-muted">Monday - Sunday (8.00 am - 9.00 pm)</p>
          <input type="date" class="form-control form-control-sm">
        </div>

        <!-- Patient Info -->
        <div class="mb-3 text-start">
          <label class="form-label">Full Name</label>
          <input type="text" class="form-control form-control-sm" placeholder="Patient's Full Name">
        </div>
        <div class="mb-3 text-start">
          <label class="form-label">NIC</label>
          <input type="text" class="form-control form-control-sm" placeholder="NIC Number">
        </div>
        <div class="mb-3 text-start">
          <label class="form-label">Address</label>
          <input type="text" class="form-control form-control-sm" placeholder="Address">
        </div>
        <div class="mb-3 text-start">
          <label class="form-label">Phone Number</label>
          <input type="tel" class="form-control form-control-sm" placeholder="07X XXX XXXX">
        </div>

        <!-- Payment Option -->
        <div class="mb-3 text-start">
          <label class="form-label">Payment Method</label>
          <select class="form-select form-select-sm">
            <option selected disabled>Choose payment method</option>
            <option>Card</option>
            <option>Cash</option>
          </select>
        </div>

        <!-- Book Button -->
        <button class="btn btn-success btn-sm mt-2">Confirm</button>
      </div>
    </div>
  </div>
</div>


</body>
</html>