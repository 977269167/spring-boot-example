<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<h3>[#noparse][@greet1][/@greet1][/#noparse] => [@greet1][/@greet1]</h3>
<h3>[#noparse][@greet1/][/#noparse] => [@greet1/]</h3>
<hr/>
<h3>[#noparse][@greet2 person="Fred"/] and [@greet2 person="Batman"/][/#noparse] => [@greet2 person="Fred"/] and [@greet2 person="Batman"/]</h3>
<h3>[#noparse][@greet2 "Fred"/] and [@greet2 "Batman"/][/#noparse] => [@greet2 "Fred"/] and [@greet2 "Batman"/]</h3>
<hr/>
<h3>[#noparse][@greet3 person="Fred" color="red"/] and [@greet3 person="Batman" color="blue"/][/#noparse] => [@greet3 person="Fred" color="red"/] and [@greet3 person="Batman" color="blue"/]</h3>
<h3>[#noparse][@greet3 "Fred" "red"/] and [@greet3 "Batman" "blue"/][/#noparse] => [@greet3 "Fred" "red"/] and [@greet3 "Batman" "blue"/]</h3>
<h3>[#noparse][@greet3 "Fred" "red"/] and [@greet3 "Batman"/][/#noparse] => [@greet3 "Fred" "red"/] and [@greet3 "Batman"/]</h3>
<hr/>
<h3>[#noparse][@border]The bordered text[/@border][/#noparse] => [@border]The bordered text[/@border]</h3>
<hr/>
<h3>[#noparse][@do_thrice]Anything.[/@do_thrice][/#noparse] => [@do_thrice]Anything.[/@do_thrice]</h3>
<hr/>
<h3>[#noparse][@border][/#noparse]</h3>
<h3>[#noparse]&nbsp;&nbsp;[@do_thrice][/#noparse]</h3>
<h3>[#noparse]&nbsp;&nbsp;&nbsp;&nbsp;[@greet2 person="Joe"/][/#noparse]</h3>
<h3>[#noparse]&nbsp;&nbsp;[/@do_thrice][/#noparse]</h3>
<h3>[#noparse][/@border][/#noparse] => [@border][@do_thrice][@greet2 person="Joe"/][/@do_thrice][/@border]</h3>
<hr/>
<h3>[#noparse][@repeat count=3]${y!"?"} ${x!"?"} ${count!"?"}[/@repeat][/#noparse] => <br/>[@repeat count=3]${y!"?"} ${x!"?"} ${count!"?"}<br/>[/@repeat]</h3>
<hr/>
<h3>[#noparse][@test/][/#noparse] => [@test/]</h3>
</body>
</html>

[#macro greet1]
    Hello Joe!
[/#macro]

[#macro greet2 person]
    Hello ${person}!
[/#macro]

[#macro greet3 person color]
    Hello ${person} ${color}!
[/#macro]

[#macro greet3 person color="black"]
    Hello ${person} ${color}!
[/#macro]

[#macro border]
    <table border=4 cellspacing=0 cellpadding=4>
        <tr>
            <td>
                [#nested]
            </td>
        </tr>
    </table>
[/#macro]

[#macro do_thrice]
    [#nested]
    [#nested]
    [#nested]
[/#macro]

[#macro repeat count]
    [#local y = "test"]
    [#list 1..count as x]
        ${y} ${count}/${x}: [#nested]
    [/#list]
[/#macro]

[#macro test]
    Test text
    [#return]
    Will not be printed.
[/#macro]