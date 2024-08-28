<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Authorization - BUYSELL</title>
    <style>
        body {
            background-color: #f2f2f2; /* Matte light grey background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #444;
            font-size: 36px;
            margin-bottom: 20px;
        }

        h2 {
            text-align: center; /* Center the "Authorization" heading */
            color: #555;
            margin-bottom: 5px; /* Further reduced margin to make rows closer */
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            background-color: white;
            padding: 50px; /* Keep padding minimal */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 6px; /* Keep padding minimal */
            margin-bottom: -10px; /* Reduced margin to bring rows closer */
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 8px 15px; /* Slightly reduced padding */
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<h2>Authorization</h2>
<form action="/authorization" method="post">
    Name: <input type="text" name="name" required/><br><br>
    Password: <input type="password" name="password" required/><br><br>
    Email: <input type="email" name="email" required/><br><br>
    Phone number: <input type="text" name="phone" required/><br><br>
    <input type="submit" value="Sign in">
</form>
<a href="/">All products</a><br><br>
</body>
</html>