<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h2>Change Role ${user.name}</h2>

<form action="/admin/edit" method="post">

    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}"
                        ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
        </div>
    </#list>

    <input type="hidden" value="${user.id}" name="userId">
    <button type="submit">Save changes</button>
</form>
</body>
</html>