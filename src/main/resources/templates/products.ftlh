<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL </h1><a href="/login">Log in </a>|*|
<a href="/authorization"> Create account</a>|*|
<a href="/logout">Logout</a>

<h2>Products from whole country</h2>

<form action="/" method="get">
    <label>
        Print name here--> <input type="text" name="title"/>
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

<hr>
<h3>Create new Product</h3>

<form action="product/create" method="post" enctype="multipart/form-data">

    Advertisement name<input type="text" name="title"/><br><br>
    Description <input type="text" name="description"/><br><br>
    Price <input type="number" name="price"/><br><br>
    City <input type="text" name="city"/><br><br>
    Author <input type="text" name="author"/><br><br>
    Image <input type="file" name="file1"/><br><br>
    Image <input type="file" name="file2"/><br><br>
    Image <input type="file" name="file3"/><br><br>

    <input type="submit" value="Add product">

</form>
<a href="/hello">Check access</a>
</body>
</html>