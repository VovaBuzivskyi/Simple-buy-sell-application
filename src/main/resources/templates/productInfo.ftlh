<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Info - BUYSELL</title>
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
            text-align: center; /* Center the "Product info" heading */
            color: #555;
            margin-bottom: 15px;
        }

        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin-bottom: 20px;
        }

        .product-images {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 10px; /* Space between images */
            margin-bottom: 20px;
        }

        .product-images img {
            max-width: 100%;
            height: 250px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-details {
            max-width: 600px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        .details-info {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h2>Product info</h2>

<div class="product-images">
    <#list images as image>
        <img src="/image/${image.id}" alt="Product Image">
    </#list>
</div>

<div class="product-details">
    <div class="details-info">Name: <b>${product.title}</b></div>
    <div class="details-info">Price: ${product.price} UAH</div>
    <div class="details-info">Description: ${product.description}</div>
    <div class="details-info">City: ${product.city}</div>
    <div class="details-info">Author: ${user.name}</div>
    <div class="details-info"><a href="/user/info/${product.user.id}">Author details</a></div>
</div>

<br>
<a href="/">All products</a>
</body>
</html>