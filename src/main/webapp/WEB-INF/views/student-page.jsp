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
.s1{
  
   background-image: url("/resources/images/e.jpg");
  
}
div{

padding-top: 10%;
padding-left: 5%;
}

</style>
</head>
<body class="s1">
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>
<td ><h1 >Teacher Student Connect</h1></td>
<td>  <h3><a href="logout"> LogOut</a></h3></td>

</tr>

</table>
<h2>Welcome To Student</h2>

<div>

<b><a href="skilllist"> Skills  List</a><br></b>

<b><a href ="resources">Resource List</a></b>
</div>


 
</body>
</html>