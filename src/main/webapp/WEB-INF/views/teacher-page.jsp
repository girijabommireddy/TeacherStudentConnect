<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.body1 {
	background-color: gray;
	padding-left: 10%;
	padding-top: 10%;
	padding-bottom: 15%;
	padding-left: 10%;
	

</style>


</head>
<body>
	<table class="header1">
		<tr style="width: 100%;">
			<td style="width: 5%"><img src="/resources/images/logo1.JPG"
				alt="not yet" style="width: 100px; height: 100px;"></img></td>
			<td align="center"><h1>Teacher Student Connect</h1></td>
			<td style="width: 55%;"></td>
			<td>
				<h3>
					<a href="logout"> LogOut</a>
				</h3>
			</td>
	</table>
	<div class="body1">

		<h2>Welcome to Teacher</h2><br><br>
		
		<h3><a href ="resources">Resource List</a></h3>
		<h3><a   href="teacherresource" >Submit new resource</a></h3>
		
	</div>
	
	
</body>
</html>