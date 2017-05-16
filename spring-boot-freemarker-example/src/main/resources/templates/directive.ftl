<h4>[#noparse]foo [@upper]bar red green blue baaz[/@upper] wombat[/#noparse] => foo [@upper]bar red green blue baaz[/@upper] wombat</h4>
<hr/>
<h4>[#noparse][#list ['r', 'w', 'x', 's'] as flag][/#noparse]</h4>
<h4>[#noparse]${flag?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + flag)}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ['r', 'w', 'x', 's'] as flag]${flag?switch('r', 'readable', 'w' 'writable', 'x', 'executable', 'unknown flag: ' + flag)}[#sep], [/#sep][/#list]</h4>
<hr/>
[#assign x][#list 1..3 as n]${n} foo [/#list][/#assign]
<h4>[#noparse][#assign x][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;[#list 1..3 as n][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;&nbsp;&nbsp;${n} foo [/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;[/#list][/#noparse]</h4>
<h4>[#noparse][/#assign][/#noparse]</h4>
<h4>[#noparse]${x}[/#noparse] => ${x}</h4>
<hr/>
<h4>[#noparse][#list ["a", "b", "c"]][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;[#items as x]${x}[#sep], [/#sep][/#items][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ["a", "b", "c"]][#items as x]${x}[#sep], [/#sep][/#items][/#list]</h4>
<hr/>
<h4>[#noparse][#list ["Joe", "Fred"] + ["Julia", "Kate"] as user][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${user}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list ["Joe", "Fred"] + ["Julia", "Kate"] as user]${user}[#sep], [/#sep][/#list]</h4>
<hr/>
[#assign seq = ["A", "B", "C", "D", "E"]]
<h4>[#noparse][#list ["A", "B", "C", "D", "E"][1..3] as i][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${i}[/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list seq[1..3] as i]${i}[/#list]</h4>
<hr/>
<h4>[#noparse][#list 1..10 as x][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;${x}[#sep], [/#sep][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;[#if x == 3][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;&nbsp;&nbsp;[#break][/#noparse]</h4>
<h4>[#noparse]&nbsp;&nbsp;[/#if][/#noparse]</h4>
<h4>[#noparse][/#list][/#noparse] => [#list 1..10 as x]${x}[#if x == 3][#break][/#if][#sep], [/#sep][/#list]</h4>
<hr/>
[#assign me = "Juila Smith"]
[#include "copyright.ftl"]