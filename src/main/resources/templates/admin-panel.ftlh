<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - BUYSELL</title>
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
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #f2f2f2; /* Match table background with page background */
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .no-users {
            text-align: center;
            color: #777;
            font-size: 18px;
            margin-top: 20px;
        }

        a.button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border-radius: 4px;
            text-align: center;
        }

        a.button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<h2>Admin Panel</h2>
<table>
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Active</th>
        <th>Role</th>
        <th>Ban/Unban</th>
        <th>Edit role</th>
        <th>Detail info</th>
    </tr>
    <#list users as user>
        <tr>
            <td>${user.email}</td>
            <td>${user.phone}</td>
            <td><#if user.active> true <#else> false</#if></td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td>
                <form action="/admin/ban/${user.id}" method="post">
                    <input type="submit" value="Ban/Unban">
                </form>
            </td>
            <td><a href="/admin/edit/${user.id}">Change role</a></td>
            <td><a href="/user/info/${user.id}">User details</a></td>
        </tr>
    <#else>
        <tr>
            <td colspan="7" class="no-users">There are no users</td>
        </tr>
    </#list>
</table>
<a href="/" class="button">Home page</a>
</body>
</html>