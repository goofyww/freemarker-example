<!DOCTYPE html>
<html>  
<head>  
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="10">
<title>Insert title here</title>  
</head>  
<body>  
<h2>${words!}</h2>  
<ul>
	<#list userList as item>
	<li>${item.name}的生日:${item.birthday?string('yyyy-MM-dd HH:mm:ss.sss')}</li>
	</#list>
</ul>
</body>  
</html>