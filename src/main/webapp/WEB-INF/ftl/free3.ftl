<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>free3</title>
</head>
<body>
	<h1>freemarker遍历Map集合</h1>
	
	<#list map?keys as key ><!-- *?keys 是ftl内置函数 用来获取map的key集合 -->
		<font size="15" color="#FFC0CB">${key}:${map[key]}<br/></font><!-- map[key] 用作获取这个key的值 -->
	</#list>
	
	<hr size="10" color="red"/>
	
	<!--切记:集合list和程序块switch 用ftl表示时都需要两个<></>,数据在其内部做处理 -->
	
	<h3>switch 语句1:数值</h3>
	<ul>
		<li>switch,case,break,default</li>
		<#assign var = 8 /><!-- 定义一个变量 var 注:ftl中 switch程序块中不合适加注释-->
		<#switch var>						   	 
			<#case 1>星期一<#break>
			<#case 2>星期二<#break>
			<#case 3>星期三<#break>
			<#case 4>星期四<#break>
			<#case 5>星期五<#break>
			<#case 6>星期六<#break>
			<#case 7>星期日<#break>
			<#default>无效的星期		
		</#switch>                             	  
	</ul>
	
	<hr size ="10" color="red"/>
	
	<h3>switch 语句2:字符串</h3>
	<ul>
		<li>switch,case,break,default</li>
		 <#assign var = 'python'/><!-- 字符串一定要是‘’单引号 -->
  	     <#switch var>
		     <#case 'java'>这里是java 的地盘<#break>
		     <#case 'python'>这里是python的地盘 <#break>
		     <#case 'C'>C 大哥的地盘 <#break>
		     <#default>其他一些家伙的地盘
		</#switch>                            	  
	</ul>

</body>
</html>