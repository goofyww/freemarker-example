<!DOCTYPE html>
<html>  
<head>  
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>free2</title>  
</head>  
<body>  
	<h1>freemarker实现遍历list集合</h1> 
	<ul>
		<li>集合list</li>
		<#list myList as item>
		<li>
			<font size="5px" color="#87CEFA">${item!}</font>
		</li>
		</#list>
	</ul>
	
	<hr size="10" color="blue">
	<h1>if 表达式</h1>
	<ul>
		<li>if</li>
		<#assign var = 99/>
		<#if var == 99>
			<font color="red">var=99</font>
		</#if>
		<br/>
		
		<li>if-else</li>
		<#if var ==99>
			<font color="red">var=99</font>
		<#else>
			<font color="green">var!=99</font>
		</#if>
		<br/>
		
		<li>if-[if-else]-else</li>
		<#if var &gt; 99 <#--&gt; 大于-->><!--#-->
			<font color="red">var大于99</font>
		<#elseif var==99>
    		<font coloe="green">var=99</font>
    	<#else>
			<font coloe="blue">var小于99</font>
		</#if>
		<br/>
		
		<li>if多条件 ||，&&，!</li>
		<#assign var='python'><!--ftl表达式中字符串用‘’单引号-->
		<#assign i=6>
		<#if var=='python' || var =='java'>
			<font color="red">python or java</font>
		</#if>
		<br/>
		
		<li>var?length ==*</li><!-- *?length 表示为这个变量的长度-->
		<#if var=="python" && var?length == i>
			<font color="#1E90FF">python length 6</font>
		</#if>
		<br/>
		
		<li>(*&&*?length==*) || (*)</li>
		<#if (var=='python'&&var?length == i) || (var=='java')>
			<font color="#AFEEEE">python.length等于6或者Java存在</font>
		</#if>
		<br/>
		
		<li>!((*&&*?length==*) || (*))</li>
		<#if !((var=='python'&&var?length == i) || (var=='java'))>
			<font color="#AFEEEE">python.length不等于6 或者 Java不存在</font>
		<#else>
			<font color="#F4A460">python.length等于6 或者 java存在</font>
		</#if>
	</ul>

</body>  
</html>