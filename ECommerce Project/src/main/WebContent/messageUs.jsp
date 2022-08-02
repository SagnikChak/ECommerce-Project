<%@page import="java.io.PrintStream"%>
<%@page import="java.sql.*"%>
<%@page import="com.project.ConnectionProvider"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>

<br>

<%

String msg = request.getParameter("msg");

if("valid".equals(msg))
{

%>

<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>

<%} %>

<%

if("invalid".equals(msg))
{

%>

<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>

<%} %>

<form action="messageUsAction.jsp" method="post">

	<input class="input-style" type="text" name="subject" placeholder="Enter the Subject of your Message" required>
	
	<hr>
	
	<textarea class="input-style" name="body" placeholder="Type your Message Here" required></textarea>
	
	<hr>
	
	<button class="button" type="submit">Send <i class="far fa-arrow-alt-circle-right"></i></button>

</form>

<br><br><br>
</body>
</html>