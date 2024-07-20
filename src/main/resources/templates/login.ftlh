<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<a href="/">All products</a><br><br>

<form action="/login" method="post">
    Email: <input type="email" name="username"/><br><br>
    Password: <input type="password" name="password"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Log in">
    <br><br>
</form>
<a href="/authorization">Create account</a>
</body>
</html>