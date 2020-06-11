<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h1>Details are given below:</h1><hr>
<table>
<tr>
<td>Id</td>
<td>${id}</td>
</tr>
<tr>
<td>Name</td>
<td>${name}</td>
</tr>
<tr>
<td>Image</td>
<td><img src="data:image/jpg;base64,${image}" style="width:500px;height:500px;"></img></td>
</tr>
</table>
</body>
</html>