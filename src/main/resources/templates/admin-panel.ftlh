<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h2>Admin Panel</h2>
<table border="1">
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
            <th>${user.email}</th>
            <th>${user.phone}</th>
            <th><#if user.active> true <#else> false</#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list></th>
            <th>
                <form action="/admin/ban/${user.id}" method="post">
                    <input type="submit" value="Ban/Unban">
                </form>
            </th>
            <th><a href="/admin/edit/${user.id}"> Change role </a></th>
            <th><a href="/user/info/${user.id}"> User details </a></th>
        </tr>
    <#else>
        <h3>There is no users</h3>
    </#list>
</table>
<a href="/">Home page</a>


</body>
</html>