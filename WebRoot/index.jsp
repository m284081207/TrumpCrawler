<%@ page language="java" import="java.util.*,pers.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>A crawler about Trump</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css//style.css">
	<script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
	<script src="js//layer.js"></script>
	<script src="js//basic.js"></script>
  </head>
  
  <body>
	<div id="content">
		<h1>A crawler about Trump</h1><hr/>
		<div class="chooseFrom">
			<div class="choose" id="chooseCNN" onclick="chooseCNN()">Latest 25 articles about Trump in <b>CNN</b></div>
			<div class="choose" id="chooseTwitter" onclick="chooseTwitter()">Trump's latest 25 <b>tweets</b></div>
		</div>
		<div class="columnName">
			<div class="title">Title</div><div class="date">Date</div>Operation<div class="sourcepage"></div>
		</div>
		<div class="articles" id="CNN">
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="javascript:viewContent('https://www.baidu.com/');">view content</a> / <a href="javascript:sourcePage('https://www.baidu.com/');">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">The article title is here</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
		</div>
		<div class="articles" id="Twitter">
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
			<div class="titles"><div class="title">Tweet title</div><div class="date">2017-04-15</div><div class="sourcepage"><a href="#">view content</a> / <a href="#">source page</a></div></div>
		</div>
	</div>
	<div style="text-align:center">
	<p>@Author - Kang Wang</p>
	</div>
  </body>
</html>
