<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<#if user.email??>
    <h3>User name : ${user.name}</h3>
    <form action="/logout" method="get">
        <input type="submit" value="Exit">
    </form>
<#else>
    <a href="/login">Log in </a>
    <form action="/authorization" method="get">
        <input type="submit" value="Registration">
    </form>
</#if>
<#if user.isAdmin()>
    <a href="/admin">Admin panel</a>
</#if>
<h2>Products from whole country</h2>

<form action="/" method="get">
    <label>
        Search by name <input type="text" name="title"/>
    </label>
    <input type="submit" value="Find product">
</form>
<hr>
<#list products as product>
    <div>
        <b>${product.title}</b> | price: ${product.price} UAH | <a href="product/info/${product.id}">Product details</a>
    </div>
<#else>
    <h3>There is no any products</h3>
</#list>
<#if user.email??>
<hr>
<h3>Create new Product</h3>

<form action="product/create" method="post" enctype="multipart/form-data">

    Advertisement name<input type="text" name="title"/><br><br>
    Description <input type="text" name="description"/><br><br>
    Price <input type="number" name="price"/><br><br>
    City <input type="text" name="city"/><br><br>
    Image <input type="file" name="file1"/><br><br>
    Image <input type="file" name="file2"/><br><br>
    Image <input type="file" name="file3"/><br><br>

    <input type="submit" value="Add product">
    </#if>
</form>
<a href="/hello">Check access</a>
</body>
</html>