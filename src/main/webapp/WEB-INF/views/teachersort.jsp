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
	padding-bottom: 15%;
	padding-top: 10%;
	padding-left: 10%
	
}
</style>


</head>
<body>
	<table class="header1">
		<tr style="width: 100%;">
			<td style="width: 5%"><img src="/resources/images/abc.PNG"
				alt="not yet" style="width: 100px; height: 100px;"></img></td>
			<td align="center"><h1>Teacher Student Connect</h1></td>
			<td style="width: 55%;"></td>
			<td>
				<h3>
					<a href="studenthome"> Home</a>
				</h3>
			</td>
	</table>
	<div class="body1">

		
		SelectSort:


	<a href="/sortByUserIdAscending">Sort By UserId {A-Z}</a>
	<br>
	<br><a href="/sortByUserIdDescending">Sort By UserId {Z-A}</a>
	<br>
	<br><a href="/sortBySpecializationAscending">Sort By Specialization {A-Z}</a>
	<br>
	<br><a href="/sortBySpecializationDescending">Sort By Specialization {Z-A}</a>
	<br>
	<table>
		<tr>
   <td><b>UserID</b></td>
  <td><b>Specialization</b></td>
        </tr>
		<c:forEach items="${teacherlist}" var="teacher">
			<tr>
				<td>${teacher.userId}</td>
				<td>${teacher.specialization}</td>

			</tr>
		</c:forEach>
		</table>
		<h2><a href="resources">Back</a></h2>
	</div>
	
	
</body>
</html>