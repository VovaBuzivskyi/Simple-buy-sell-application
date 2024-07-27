<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1> BUYSELL</h1>
<hr>
<h2>Product info</h2>

<#list images as image>
    <img src="/image/${image.id}" height="250px" alt="empty photo">
</#list>
<br>
Name: <b>${product.title}</b><br>
Price: ${product.price} UAH<br>
Description: ${product.description}<br>
City: ${product.city}<br>
Author: ${user.name}<br>
<a href="/user/info/${product.user.id}">Author details </a><br><br>

<a href="/">All products</a>

</body>
</html>