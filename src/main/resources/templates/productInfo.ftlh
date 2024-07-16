<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h2>Product info</h2>

<#list images as image>
<img src="/image/${image.id}" height="200px" alt="empty photo">
</#list>
<br>
Name: <b>${product.title}</b><br>
Price: ${product.price} UAH<br>
Description: ${product.description}<br>
City: ${product.city}<br>
Author: ${product.author}

<br><br>

<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product">
</form>

<br><br>

<a href="/">All products</a>

</body>
</html>