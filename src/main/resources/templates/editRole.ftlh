<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Change Role - BUYSELL</title>
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
            text-align: center; /* Center the "Change Role" heading */
            color: #555;
            margin-bottom: 15px;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        div {
            margin-bottom: 10px; /* Add space between checkboxes */
        }

        label {
            font-size: 16px;
            color: #333;
        }

        input[type="checkbox"] {
            margin-right: 10px;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>BUYSELL</h1>
<h2>Change Role ${user.name}</h2>
<form action="/admin/edit" method="post">
    <#list roles as role>
        <div>
            <label>
                <input type="checkbox" name="${role}"
                        ${user.roles?seq_contains(role)?string("checked", "")}>${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <button type="submit">Save changes</button>
</form>
</body>
</html>