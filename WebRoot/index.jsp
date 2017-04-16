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
			<div class="title">Title</div><div class="date">Time</div>Operation<div class="sourcepage"></div>
		</div>
		<div class="articles" id="CNN">
			<%
			String article[]=CNNInfo.article();
			for(int i=0;i<25&&article[i].length()>0;i++){
			%>
			<div class="titles"><div class="title"><%=article[i].substring(article[i].indexOf("\"title\":")+9)%></div>
			<div class="date"><%=article[i].substring(article[i].indexOf("\"mediaDateUts\"")+16,article[i].indexOf("\"url\"")-2)%></div>
			<div class="sourcepage">
				<a href="javascript:viewContent('<%=article[i].substring(0,article[i].indexOf("\"mediaDateUts\"")-2).replaceAll("'", "\\\\'").replaceAll("\\\"", "'")%>');">description</a> / 
				<a href="javascript:sourcePage('http://www.cnn.com<%=article[i].substring(article[i].indexOf("\"url\"")+7,article[i].indexOf("\"title\"")-2)%>');">source page</a>
			</div></div>
			<%}%>
		</div>
		<div class="articles" id="Twitter">
			<%
			String article2[]=TwitterInfo.article();
			for(int i=0;i<25&&article2[i].length()>0;i++){
			%>
			<div class="titles"><div class="title"><%=article2[i].substring(article2[i].indexOf("text")+6,article2[i].indexOf("source")-3)%></div>
			<div class="date"><%=article2[i].substring(article2[i].indexOf("createdAt")+14,article2[i].indexOf("CST")-1)%></div>
			<div class="sourcepage">
				<a href="javascript:viewContent('<%=article2[i].substring(article2[i].indexOf("text")+6,article2[i].indexOf("source")-3).replaceAll("'", "\\\\'")%>');">description</a> / 
				<a target="_blank" href='https://twitter.com/realDonaldTrump'>source page</a>
			</div></div>
			<%}%>
		</div>
	</div>
	<div style="text-align:center">
	<p>@Author - Kang Wang</p>
	</div>
  </body>
</html>
