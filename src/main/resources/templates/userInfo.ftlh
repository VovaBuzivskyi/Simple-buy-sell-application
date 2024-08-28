<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Details - BUYSELL</title>
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
            color: #555;
            margin-bottom: 15px;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .user-details {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
        }

        .product-list div {
            margin-bottom: 10px; /* Space between product entries */
        }

        .product-list a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        .product-list a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<a href="/">Home Page</a><br><br>
<div class="user-details">
    <h2>Details for User: ${user.name}</h2>
    Phone number: ${user.phone}<br><br>
    <b>${user.name}'s Products:</b><br><br>
    <div class="product-list">
        <#list products as product>
            <div>
                <b>${product.title}</b> | Price: ${product.price} UAH | <a href="/product/info/${product.id}">Product Details</a>
            </div>
        <#else>
            <h3>There are no products</h3>
        </#list>
    </div>
</div>
</body>
</html>