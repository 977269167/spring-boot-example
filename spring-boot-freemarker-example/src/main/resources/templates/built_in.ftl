<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Built</title>
</head>
<body>
[#assign testString = "Tom & Jerry"]
[#assign testSequence = ["foo", "bar", "baz"]]
<h4>[#noparse]${"Tom & Jerry"?upper_case}[/#noparse] => ${testString?upper_case}</h4>
<h4>[#noparse]${"Tom & Jerry"?lower_case}[/#noparse] => ${testString?lower_case}</h4>
<hr/>
<h4>[#noparse]${"horse"?cap_first}[/#noparse] => ${"horse"?cap_first}</h4>
<hr/>
<h4>[#noparse]${"Tom & Jerry"?length}[/#noparse] => ${testString?length}</h4>
<hr/>
<h4>[#noparse]${["foo", "bar", "baz"]?size}[/#noparse] => ${testSequence?size}</h4>
<hr/>
<h4>[#noparse][#list ["foo", "bar", "baz"] as a][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${a?index}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ["foo", "bar", "baz"] as a]${a?index}[#sep], [/#sep][/#list]</h4>
<hr/>
<h4>[#noparse][#list ['a', 'b', 'c'] as i]${i?has_next?c} [/#list][/#noparse] => [#list ['a', 'b', 'c'] as i]${i?has_next?c} [/#list]</h4>
<hr/>
<h4>[#noparse][#list ["foo", "bar", "baz"] as a][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${a?counter}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ["foo", "bar", "baz"] as a]${a?counter}[#sep], [/#sep][/#list]</h4>
<hr/>
<h4>[#noparse][#list ["foo", "bar", "baz"] as a][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${a?item_parity}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ["foo", "bar", "baz"] as a]${a?item_parity}[#sep], [/#sep][/#list]</h4>
<hr/>
<h4>[#noparse]${true?string("Y", "N")}[/#noparse] => ${true?string("Y", "N")}</h4>
<h4>[#noparse]${false?string("Y", "N")}[/#noparse] => ${false?string("Y", "N")}</h4>
<hr/>
<h4>[#noparse][#list ["foo", "bar", "baz"] as a][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${a?item_cycle('lightRow', 'darkRow')}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ["foo", "bar", "baz"] as a]${a?item_cycle('lightRow', 'darkRow')}[#sep], [/#sep][/#list]</h4>
<hr/>
<h4>[#noparse]${["foo", "bar", "baz"]?join(", ")}[/#noparse] => ${testSequence?join(", ")}</h4>
<hr/>
<h4>[#noparse]${"Tom & Jerry"?starts_with("J")?c}[/#noparse] => ${testString?starts_with("J")?c}</h4>
<hr/>
<h4>[#noparse]${"Tom & Jerry"[0]}[/#noparse] => ${testString[0]}</h4>
<hr/>
<h4>[#noparse]${"Tom & Jerry"?string[0]}[/#noparse] => ${testString?string[0]}</h4>
<hr/>
<h4>[#noparse]${["foo", "bar", "baz"][0]}[/#noparse] => ${testSequence[0]}</h4>
<h4>[#noparse]${["foo", "bar", "baz"]?first}[/#noparse] => ${testSequence?first}</h4>
<h4>[#noparse]${["foo", "bar", "baz"]?last}[/#noparse] => ${testSequence?last}</h4>
<hr/>
<h4>[#noparse]${["foo", "bar", "baz"][1]}[/#noparse] => ${testSequence[1]}</h4>
<hr/>
<h4>[#noparse]${["foo", "bar", "baz"][2]}[/#noparse] => ${testSequence[2]}</h4>
<hr/>

[#assign s = "ABCDEF"]
<h4>[#noparse]${"ABCDEF"[2..3]}[/#noparse] => ${s[2..3]}</h4>
<h4>[#noparse]${"ABCDEF"[2..<4]}[/#noparse] => ${s[2..<4]}</h4>
<h4>[#noparse]${"ABCDEF"[2..*3]}[/#noparse] => ${s[2..*3]}</h4>
<h4>[#noparse]${"ABCDEF"[2..*100]}[/#noparse] => ${s[2..*100]}</h4>
<h4>[#noparse]${"ABCDEF"[2..]}[/#noparse] => ${s[2..]}</h4>
<hr/>
[#assign ages = {"Joe":23, "Fred":25} + {"Joe":30, "Julia":18}]
<h4>[#noparse][#assign ages = {"Joe":23, "Fred":25} + {"Joe":30, "Julia":18}][/#noparse]</h4>
<h4>[#noparse]${ages.Joe}[/#noparse] => ${ages.Joe}</h4>
<h4>[#noparse]${ages.Fred}[/#noparse] => ${ages.Joe}</h4>
<h4>[#noparse]${ages.Julia}[/#noparse] => ${ages.Joe}</h4>
<hr/>
<h4>[#noparse]${"  green  mouse"?capitalize}[/#noparse] => ${"  green  mouse"?capitalize}</h4>
<h4>[#noparse]${"GreEN mouse"?capitalize}[/#noparse] => ${"GreEN mouse"?capitalize}</h4>
<hr/>
<h4>[#noparse][#if "piceous"?contains("ice")]It contains "ice"[/#if][/#noparse] => [#if "piceous"?contains("ice")]It contains "ice"[/#if]</h4>
<hr/>
<h4>[#noparse]${"ahead"?ends_with("head")?c}[/#noparse] => ${"ahead"?ends_with("head")?c}</h4>
<h4>[#noparse]${"foo"?ensure_ends_with("/")}[/#noparse] => ${"foo"?ensure_ends_with("/")}</h4>
<h4>[#noparse]${"foo"?ensure_starts_with("/")}[/#noparse] => ${"foo"?ensure_starts_with("/")}</h4>
<hr/>
<h4>[#noparse]${"abcabc"?index_of("bc")}[/#noparse] => ${"abcabc"?index_of("bc")}</h4>
<h4>[#noparse]${"abcabc"?index_of("bc", 2)}[/#noparse] => ${"abcabc"?index_of("bc", 2)}</h4>
<h4>[#noparse]${"abcabc"?last_index_of("ab")}[/#noparse] => ${"abcabc"?last_index_of("ab")}</h4>
<h4>[#noparse]${"abcabc"?last_index_of("ab", 2)}[/#noparse] => ${"abcabc"?last_index_of("ab", 2)}</h4>
[#assign beanName = 'The "foo" bean.']
<hr/>
<h4>[#noparse]${beanName?j_string}[/#noparse] => ${beanName?j_string}</h4>
[#assign user = "Big Joe's \"right hand\""]
<h4>[#noparse][#assign user = "Big Joe's \"right hand\""][/#noparse]</h4>
<h4>[#noparse]alert("Welcome ${user?js_string}!");[/#noparse] => alert("Welcome ${user?js_string}!");</h4>
<hr/>
<h4>[#noparse]${"abcdefgh"?keep_after("de")}[/#noparse] => ${"abcdefgh"?keep_after("de")}</h4>
<h4>[#noparse]${"foo.bar.txt"?keep_after_last(".")}[/#noparse] => ${"foo.bar.txt"?keep_after_last(".")}</h4>
<h4>[#noparse]${"foo.bar.txt"?keep_before_last(".")}[/#noparse] => ${"foo.bar.txt"?keep_before_last(".")}</h4>
<h4>[#noparse]${"abcdef"?keep_before("de")}[/#noparse] => ${"abcdef"?keep_before("de")}</h4>
<hr/>
<h4>[#noparse][${""?left_pad(5)}][/#noparse] => [${""?left_pad(5, "-")}]</h4>
<h4>[#noparse][${"a"?left_pad(5, "-")}][/#noparse] => [${"a"?left_pad(5, "-")}]</h4>
<h4>[#noparse][${"ab"?left_pad(5, "-")}][/#noparse] => [${"ab"?left_pad(5, "-")}]</h4>
<h4>[#noparse][${"abc"?left_pad(5, "-")}][/#noparse] => [${"abc"?left_pad(5, "-")}]</h4>
<h4>[#noparse][${"abcd"?left_pad(5, "-")}][/#noparse] => [${"abcd"?left_pad(5, "-")}]</h4>
<h4>[#noparse][${"abcde"?left_pad(5, "-")}][/#noparse] => [${"abcde"?left_pad(5, "-")}]</h4>
<hr/>
<h4>[#noparse][${""?left_pad(8, ".oO")}][/#noparse] => [${""?left_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"a"?left_pad(8, ".oO")}][/#noparse] => [${"a"?left_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"ab"?left_pad(8, ".oO")}][/#noparse] => [${"ab"?left_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"abc"?left_pad(8, ".oO")}][/#noparse] => [${"abc"?left_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"abcd"?left_pad(8, ".oO")}][/#noparse] => [${"abcd"?left_pad(8, ".oO")}]</h4>
<hr/>
<h4>[#noparse][${""?right_pad(8, ".oO")}][/#noparse] => [${""?right_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"a"?right_pad(8, ".oO")}][/#noparse] => [${"a"?right_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"ab"?right_pad(8, ".oO")}][/#noparse] => [${"ab"?right_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"abc"?right_pad(8, ".oO")}][/#noparse] => [${"abc"?right_pad(8, ".oO")}]</h4>
<h4>[#noparse][${"abcd"?right_pad(8, ".oO")}][/#noparse] => [${"abcd"?right_pad(8, ".oO")}]</h4>
<hr/>
<h4>[#noparse]${"fooo"?matches('fo*')?c}[/#noparse] => ${"fooo"?matches('fo*')?c}</h4>
<hr/>
<h4>[#noparse]${"this is a car acarus"?replace("car", "bulldozer")}[/#noparse] => ${"this is a car acarus"?replace("car", "bulldozer")}</h4>
<h4>[#noparse]${"aaaaa"?replace("aaa", "X")}[/#noparse] => ${"aaaaa"?replace("aaa", "X")}</h4>
<h4>[#noparse]${"foo"?replace("","|")}[/#noparse] => ${"foo"?replace("","|")}</h4>
<hr/>
<h4>[#noparse]${"abcdef"?remove_beginning("abc")}[/#noparse] => ${"abcdef"?remove_beginning("abc")}</h4>
<h4>[#noparse]${"foobar"?remove_beginning("abc")}[/#noparse] => ${"foobar"?remove_beginning("abc")}</h4>
<h4>[#noparse]${"abcdef"?remove_ending("abc")}[/#noparse] => ${"abcdef"?remove_ending("abc")}</h4>
<h4>[#noparse]${"foobar"?remove_ending("abc")}[/#noparse] => ${"foobar"?remove_ending("abc")}</h4>
<hr/>
<h4>[#noparse][#list "someMOOtestMOOtext"?split("MOO") as x][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;- ${x}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list "someMOOtestMOOtext"?split("MOO") as x]- ${x}[#sep], [/#sep][/#list]</h4>
<hr/>
<h4>[#noparse](${"  green mouse  "?trim})[/#noparse] => (${"  green mouse  "?trim})</h4>
<hr/>
<h4>[#noparse]${"a/b c"?url}[/#noparse] => ${"a/b c"?url('UTF-8')}</h4>
<h4>[#noparse]${"a/b c"?url}[/#noparse] => ${"a/b c"?url_path('UTF-8')}</h4>
<hr/>
[#assign words = "   a bcd, .   1-2-3"?word_list]
<h4>[#noparse][#assign words = "   a bcd, .   1-2-3"?word_list][/#noparse]</h4>
<h4>[#noparse][#list words as word][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;[${word}][#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list words as word][${word}][#sep], [/#sep][/#list]</h4>
<hr/>
<h4>[#noparse]${42?string}[/#noparse] => ${42?string}</h4>
<h4>[#noparse]${42?string.number}[/#noparse] => ${42?string.number}</h4>
<h4>[#noparse]${42?string.currency}[/#noparse] => ${42?string.currency}</h4>
<h4>[#noparse]${42?string.percent}[/#noparse] => ${42?string.percent}</h4>
<h4>[#noparse]${42?string.computer}[/#noparse] => ${42?string.computer}</h4>
<hr/>
<h4>[#noparse]${1.234?string["0"]}[/#noparse] => ${1.234?string["0"]}</h4>
<h4>[#noparse]${1.234?string["0.#"]}[/#noparse] => ${1.234?string["0.#"]}</h4>
<h4>[#noparse]${1.234?string["0.##"]}[/#noparse] => ${1.234?string["0.##"]}</h4>
<h4>[#noparse]${1.234?string["0.###"]}[/#noparse] => ${1.234?string["0.###"]}</h4>
<h4>[#noparse]${1.234?string["0.####"]}[/#noparse] => ${1.234?string["0.####"]}</h4>
<h4>[#noparse]${1?string["000.00"]}[/#noparse] => ${1?string["000.00"]}</h4>
<h4>[#noparse]${12.1?string["000.00"]}[/#noparse] => ${12.1?string["000.00"]}</h4>
<h4>[#noparse]${123.456?string["000.00"]}[/#noparse] => ${123.456?string["000.00"]}</h4>
<h4>[#noparse]${1.2?string["0"]}[/#noparse] => ${1.2?string["0"]}</h4>
<h4>[#noparse]${1.8?string["0"]}[/#noparse] => ${1.8?string["0"]}</h4>
<h4>[#noparse]${1.5?string["0"]}[/#noparse] => ${1.5?string["0"]}</h4>
<h4>[#noparse]${2.5?string["0"]}[/#noparse] => ${2.5?string["0"]}</h4>
<h4>[#noparse]${12345?string["0.##E0"]}[/#noparse] => ${12345?string["0.##E0"]}</h4>
<h4>[#noparse]${12345678?string(",##0.00")}[/#noparse] => ${12345678?string(",##0.00")}</h4>
<hr/>
[#assign x = ["red", 16, "blue", "cyan"]]
<h4>[#noparse][#assign x = ["red", 16, "blue", "cyan"]][/#noparse]</h4>
<h4>[#noparse]${x?seq_contains("blue")?c}[/#noparse] => ${x?seq_contains("blue")?c}</h4>
<h4>[#noparse]${x?seq_contains("yellow")?c}[/#noparse] => ${x?seq_contains("yellow")?c}</h4>
<h4>[#noparse]${x?seq_contains(16)?c}[/#noparse] => ${x?seq_contains(16)?c}</h4>
<h4>[#noparse]${x?seq_contains("16")?c}[/#noparse] => ${x?seq_contains("16")?c}</h4>
<hr/>
[#assign colors = ["red", "green", "blue"]]
<h4>[#noparse][#assign colors = ["red", "green", "blue"]][/#noparse]</h4>
<h4>[#noparse]${colors?seq_index_of("blue")}[/#noparse] => ${colors?seq_index_of("blue")}</h4>
<h4>[#noparse]${colors?seq_index_of("red")}[/#noparse] => ${colors?seq_index_of("red")}</h4>
<h4>[#noparse]${colors?seq_index_of("purple")}[/#noparse] => ${colors?seq_index_of("purple")}</h4>
<hr/>
<h4>[#noparse]["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort[/#noparse] => [#list ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort as i]${i} [/#list]</h4>
<hr/>
[#assign ls = [
        {"name":"whale", "weight":2000},
        {"name":"Barbara", "weight":53},
        {"name":"zeppelin", "weight":-200},
        {"name":"aardvark", "weight":30},
        {"name":"beetroot", "weight":0.3}
        ]]
<h4>[#noparse][#assign ls = [
    {"name":"whale", "weight":2000},
    {"name":"Barbara", "weight":53},
    {"name":"zeppelin", "weight":-200},
    {"name":"aardvark", "weight":30},
    {"name":"beetroot", "weight":0.3}
    ]][/#noparse]</h4>
<h4>Order by name => [#list ls?sort_by("name") as i]${i.name}: ${i.weight}[#sep], [/#sep][/#list]</h4>
<h4>Order by weight => [#list ls?sort_by("weight") as i]${i.name}: ${i.weight}[#sep], [/#sep][/#list]</h4>
<hr/>
[#assign members = [
        {"name": {"first": "Joe", "last": "Smith"}, "age": 40},
        {"name": {"first": "Fred", "last": "Fox"}, "age": 35},
        {"name": {"first": "Joe", "last": "Crooger"}, "age": 25}
]]
<h4>[#noparse][#assign members = [
        {"name": {"first": "Joe", "last": "Smith"}, "age": 40},
        {"name": {"first": "Fred", "last": "Crooger"}, "age": 35},
        {"name": {"first": "Amanda", "last": "Fox"}, "age": 25}]][/#noparse]</h4>
</body>
<h4>Order by name.last => [#list members?sort_by(['name', 'last']) as m]${m.name.last}: ${m.age} years old[#sep], [/#sep][/#list]</h4>
<hr/>
<h4>{ "name": "mouse", "price": 50 }?keys => [#list {"name": "mouse", "price": 50}?keys as k]${k}[#sep], [/#sep][/#list]</h4>
<h4>{ "name": "mouse", "price": 50 }?values => [#list {"name": "mouse", "price": 50}?values as k]${k}[#sep], [/#sep][/#list]</h4>
</html>