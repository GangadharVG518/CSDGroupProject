<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pest Reports</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background-image: url('https://example.com/crop-field-background.jpg'); /* Replace with actual image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            border-radius: 10px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 30px;
            color: #fff;
        }
        .form-section {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            color: white;
            margin-bottom: 30px;
        }
        .footer {
            margin-top: 50px;
            text-align: center;
            color: #fff;
            padding: 10px 0;
            background-color: rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>

    <!-- Main container -->
    <div class="container">
        <h2 class="text-center">Pest Reports from Farmers</h2>

        <!-- Form for filtering pest reports by location -->
        <div class="form-section">
            <form action="pest-reports" method="GET" class="row g-3">
                <div class="col-md-8">
                    <label for="location" class="form-label">Location</label>
                    <input type="text" class="form-control" id="location" name="location" placeholder="Enter location" value="${param.location}">
                </div>
                <div class="col-md-4 d-flex align-items-end">
                    <button type="submit" class="btn btn-primary w-100">Search Reports</button>
                </div>
            </form>
        </div>

        <!-- Pest reports cards grid -->
        <div class="row">
            <!-- Loop over pest reports and display them in cards -->
            <c:forEach var="report" items="${pestReports}">
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <h5 class="card-title">${report.pestName}</h5>
                            <p class="card-text">
                                <strong>Farmer:</strong> ${report.farmerName} <br>
                                <strong>Location:</strong> ${report.location} <br>
                                <strong>Date:</strong> ${report.date} <br>
                                <strong>Notes:</strong> ${report.notes}
                            </p>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Report Date: ${report.date}</small>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Farmers Platform. All Rights Reserved.</p>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    