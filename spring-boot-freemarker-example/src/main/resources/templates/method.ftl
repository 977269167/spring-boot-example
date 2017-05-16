<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<h4>[#noparse]${repeat("Foo", 3)}[/#noparse] => ${repeat("Foo", 3)}</h4>
<h4>[#noparse]${repeat(repeat("x", 2), 3) + repeat("Foo", 4)?upper_case}[/#noparse] => ${repeat(repeat("x", 2), 3) + repeat("Foo", 4)?upper_case}</h4>
<hr/>
[#assign x = "something"]
<h4>[#noparse]${indexOf("met", x)}[/#noparse] => ${indexOf("met", x)}</h4>
<h4>[#noparse]${indexOf("foo", x)}[/#noparse] => ${indexOf("foo", x)}</h4>
<hr/>
<h4>${avg(10, 20)}</h4>
<h4>${avg(10, 20, 30, 40)}</h4>
<h4>${avg()!"N/A"}</h4>
</body>
</html>

[#function repeat name count]
    [#assign str = ""]
    [#list 1..count as i]
        [#assign str = str + name]
    [/#list]
    [#return str]
[/#function]

[#function avg nums...]
    [#local sum = 0]
        [#list nums as num]
            [#local sum += num]
        [/#list]
        [#if nums?size != 0]
            [#return sum / nums?size]
        [/#if]
[/#function]