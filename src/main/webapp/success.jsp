<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<%@include file="common_links.jsp" %>

</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container-fluid mt-5"> 
<h2 class="fw-bolder text-center mt-5" style="color: green; margin-top: 450px;">Success</h2>

<%
	if (session.getAttribute("user") != null) {
%>


<a class="btn btn-secondary" href="index.jsp">Back</a>

<%
	} else {
%>
<a class="btn btn-secondary" href="user.jsp">Back</a>

<%

}%>
</div>
</body>
</html>