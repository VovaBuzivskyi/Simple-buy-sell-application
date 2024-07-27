<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>

<h1>BUYSELL</h1>
<a href="/">Home page</a><br><br>
<h2>Details user : ${user.name}</h2>
    Phone number: ${user.phone}<br><br>
    ${user.name}'s products :
<#list products as product>
    <div>
        <b>${product.title}</b> | price: ${product.price} UAH | <a href="/product/info/${product.id}">Product details</a>
    </div>
<#else>
    <h3>There is no any products</h3>
</#list>

</body>
</html>