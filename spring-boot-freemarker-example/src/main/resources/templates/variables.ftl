<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<h3>
<#assign x = "plain">
    1. ${x}
<@test/>
    6. ${x}
<#list ["loop"] as x>
    7. ${x}
    <#assign x = "plain2">
    8. ${x}
</#list>
    9. ${x}
</h3>

</body>
</html>

<#macro test>
    2. ${x}
    <#local x = "local">
        3. ${x}
        <#list ["loop"] as x>
            4. ${x}
        </#list>
        5. ${x}
</#macro>