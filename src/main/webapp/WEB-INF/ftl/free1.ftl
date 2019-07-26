<!DOCTYPE html>
<html>  
<head>  
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>free1</title>  
</head>  
<body>  
	<h1>取值: </h1>
	<ul>
		<li>整型:<font size="20px" color="red">${intVar!}</font></li>
		<li>长整型:<font size="21px" color="blue">${longVar!}</font></li>
		<li>双精度:<font size="22px" color="#FFB6C1">${doubleVar!}</font></li>
		<li>字符串:<font size="23px" color="#FFC0CB">${stringVar!}</font></li>
		<li>布尔值: <font size="24px" color="#DC143C">${booleanVar?string('yes','no')!}</font></li>
		<li>日期类型Java.Util.Date:<font size="25px" color="#7B68EE">${dateVar1?string('yyyy-MM-dd HH:mm:ss.sss')!}</font></li>
		<li>空值:<font size="26px" color="#AFEEEE">${nullVar1!}</font></li>
		<li>不存在的变量:<font size="20px" color="blue">${变量!'我是默认变量'}</font></li>
		<li>不存在的空值1:<font size="27px" color="#40E0D0">${nullVar!}</font></li>
	</ul> 
	<hr size="10" color="#FF7F50">
	<ul>
		<li>赋值&运算</li>
		<#assign a=100/>
		a=<font color="#FFDAB9">${a!}</font>
		<br/>
		a+100=<font color="#FFDEAD">${a+100!}</font>
	</ul>
	
</body>  
</html>