<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ page import="model.Booking" %>
<%
    HttpSession session1 = request.getSession(false); 
    if (session1 == null || session1.getAttribute("userEmail") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    String username = (String) session1.getAttribute("userEmail");

    Booking booking = (Booking) request.getAttribute("booking");
    if (booking == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Successful</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <style>
        body {
            background: #f8f9fa;
        }

        .success-card {
            max-width: 600px;
            margin: auto;
            margin-top: 100px;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .check-icon {
            font-size: 60px;
            color: #28a745;
        }

        @media screen {
            #receiptToPrint {
                display: none !important; /* Hide on screen */
            }
        }

        @media print {
            body * {
                visibility: hidden;
            }
            #receiptToPrint, #receiptToPrint * {
                visibility: visible;
            }
            #receiptToPrint {
                position: absolute;
                left: 0;
                top: 0;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">Wecare</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" 
                aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="services.jsp">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
            </ul>
            <div class="d-flex align-items-center justify-content-between">
                <span class="navbar-text me-4">
                    <a href="tel:+94772801487" class="text-decoration-none">
                        <i class="bi bi-telephone"></i> +94772845356
                    </a>
                </span>
                <span class="navbar-text text-white me-3">
                    Welcome, <%= username %>
                </span>
                <a href="logout" class="btn btn-danger">Logout</a>
            </div>
        </div>
    </div>
</nav>

<div class="container">
    <div class="success-card text-center">
        <div class="check-icon mb-3"><i class="bi bi-check-square"></i></div>
        <h2 class="text-success">Appointment Booked!</h2>
        <p class="mt-3">
            Your appointment has been successfully booked.<br>
           
        </p>
        <button onclick="printReceipt()" class="btn btn-primary mt-3">Print Receipt</button>
        <a href="viewProfileBookedServelet" class="btn btn-success mt-3 ms-2">Back to Home</a>
    </div>
</div>

<!-- Receipt Content: Hidden on screen, shown only when printing -->
<div class="receipt-details mt-4" id="receiptToPrint">
    <h5>Appointment Receipt</h5>
    <p><strong>Patient Name:</strong> <%= booking.getPatientName() %></p>
    <p><strong>NIC:</strong> <%= booking.getNic() %></p>
    <p><strong>Contact:</strong> <%= booking.getContact() %></p>
    <p><strong>Doctor:</strong>Dr.<%= booking.getDoctorName() %></p>
    <p><strong>Appointment Date:</strong> <%= booking.getAppointmentDate() %></p>
    <p><strong>Hospital:</strong> <%= booking.getLocation() %></p>
    <p><strong>Reason:</strong> <%= booking.getMedicalHistory() %></p>
    <p><strong>Payment Method:</strong> <%= booking.getPay() %></p>
</div>

<script>
    function printReceipt() {
        window.print();
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
