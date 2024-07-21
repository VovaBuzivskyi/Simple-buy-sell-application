<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h2>Authorization</h2>
<a href="/">All products</a><br><br>
<form action="/authorization" method="post">
    Name: <input type="text" name="name"/><br><br>
    Password: <input type="password" name="password"/><br><br>
    Email: <input type="email" name="email"/><br><br>
    Phone number: <input type="text" name="phone"/><br><br>
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
    <input type="submit" value="Sign in">
</form>
</body>
</html>