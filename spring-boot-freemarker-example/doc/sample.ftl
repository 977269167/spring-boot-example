[#--http://freemarker.org/docs/dgui_quickstart_template.html--]

[#--The if directive--]

[#if user == "Big Joe"][/#if]
[#if animals.python.price == 0][/#if]
[#if animals.python.price != 0][/#if]
[#if animals.python.price < animals.elephant.price][/#if]

[#if animals.python.price < animals.elephant.price]
    Pythons are cheaper than elephants today.
[#else]
    Pythons are not cheaper than elephants today.
[/#if]

[#if animals.python.price < animals.elephant.price]
    Pythons are cheaper than elephants today.
[#elseif animals.elephant.price < animals.python.price]
    Elephants are cheaper than pythons today.
[#else]
    Elephants and pythons cost the same today.
[/#if]

[#if animals.python.protected][/#if]

[#--The list directive--]

[#list animals as animal]
    ${animal.name} ${animal.price} Euros
[/#list]

[#list misc.fruits as fruit]
    ${fruit}
[/#list]

[#list misc.fruits as fruit]${fruit}[#sep], [/#sep][/#list]

[#list misc.fruits]
    [#items as fruit]
        ${fruit}
    [/#items]
[/#list]

[#list misc.fruits as fruit]${fruit}[#sep], [/#sep][#else]None[/#list]

[#list misc.fruits]
    Fruits:
    [#items as fruit]
        ${fruit}[#sep] and[/#sep]
    [/#items]
[#else]
    We have no fruits.
[/#list]

[#--The include directive--]

[#include "/static/copyright_footer.html"]