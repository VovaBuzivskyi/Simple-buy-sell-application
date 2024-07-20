<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>

<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="LogOut">
    <br><br>
</form>
</body>
</html>