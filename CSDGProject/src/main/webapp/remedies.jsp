<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Farm Remedies Input</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        form {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <h1>Submit Remedies for Crops</h1>
    <form action="submitRemedies" method="post">
        <label for="diseaseName">Disease Name:</label>
        <input type="text" id="diseaseName" name="diseaseName" required>

        <label for="pestName">Pest Name:</label>
        <input type="text" id="pestName" name="pestName" required>

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required>

        <label for="weather">Weather Conditions:</label>
        <input type="text" id="weather" name="weather" required>

        <input type="submit" value="Submit">
    </form>
</body>
</html>