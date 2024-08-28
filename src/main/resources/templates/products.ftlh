<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
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

        h2, h3 {
            color: #555;
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
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="file"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="text"] {
            width: calc(40% - 170px); /* Adjusted width to make the search field wider */
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .product-list div {
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .product-list div:last-child {
            border-bottom: none;
        }

        .product-list b {
            color: #444;
        }

        .product-list a {
            color: #007bff;
        }

        .product-list a:hover {
            text-decoration: underline;
        }

        .no-products {
            text-align: center;
            color: #777;
            font-size: 18px;
        }

        hr {
            border: 0;
            height: 1px;
            background: #ccc;
            margin: 20px 0;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>

<#if user.email??>
    <h3>User name : ${user.name}</h3>
    <form action="/logout" method="get">
        <input type="submit" value="Log Out">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>
<#else>
    <form action="/login" method="get">
        <input type="submit" value="Log In">
    </form>
    <form action="/authorization" method="get">
        <input type="submit" value="Registration">
    </form>
</#if>
<hr>

<h2>Products from whole country</h2>

<form action="/" method="get">
    <label>
        Search product by name
        <input type="text" name="title" />
    </label>
    <input type="submit" value="Find product"/>
</form>

<div class="product-list">
    <#list products as product>
        <div>
            <b>${product.title}</b> | price: ${product.price} UAH | <a href="product/info/${product.id}">Product details</a>
        </div>
    <#else>
        <h3 class="no-products">There are no products</h3>
    </#list>
</div>

<#if user.email??>
    <hr>
    <h2>Create new Product</h2>

    <form action="product/create" method="post" enctype="multipart/form-data">
        <label>Advertisement name</label><input type="text" name="title" /><br><br>
        <label>Description</label><input type="text" name="description" /><br><br>
        <label>Price</label><input type="number" name="price" /><br><br>
        <label>City</label><input type="text" name="city" /><br><br>
        <label>Image</label><input type="file" name="file1" /><br><br>
        <label>Image</label><input type="file" name="file2" /><br><br>
        <label>Image</label><input type="file" name="file3" /><br><br>
        <input type="submit" value="Add product">
    </form>
</#if>

</body>
</html>