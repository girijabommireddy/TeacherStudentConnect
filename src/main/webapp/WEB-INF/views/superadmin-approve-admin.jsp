<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" href="/resources/css/style1.css"/>
</head>
<body class="body1">
<table class="header1"><tr style="width:100%;">
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet"style="width:100px;height:100px;"></img></td>
<td align="center"><h1 >Teacher Student Connect</h1></td>
<td style="width:55%;"></td>
<td>  <h3><a href="logoutt" > LogOut</a></h3></td>

</table>
 <h2>Welcome to SuperAdmin</h2>
<h1 id="black">Access Permission</h1>

			<table>
				<tr>
					<th >FirstName</th>
					<th >LastName</th>                               
					<th>DoB</th>
					<th>Gender</th>
					<th >ContactNumber</th>
					<th>UserId</th>
					<th>Password</th>
					<th>status</th>
				</tr>
				<c:forEach items="${list}" var="adminList">
					<tr>
						<td>${adminList.firstName}</td>
						<td>${adminList.lastName}</td>
						<td>${adminList.dob}</td>
						<td>${adminList.gender}</td>
						<td>${adminList.contactNumber}</td>
						<td>${adminList.userId}</td>
						<td>${adminList.password}</td>
						
					 <%-- <td><a id="access-button" name="accept" value="accept"
							href="UpdateAdminStatus/${adminList.userId}">Accept&nbsp;&nbsp;&nbsp;</a>
						</td>

						<td><a id="access-button" name="deny" value="deny"
							href="UpdateAdminStatus/${adminList.userId}">Reject&nbsp;&nbsp;&nbsp;</a>
						</td> --%>



  <td><a href="/updateStatus/${adminList.userId}?status=approve">Approve</a></td>
                   <td><a href="/updateStatus/${adminList.userId}?status=deny">Deny</a></td>
					</tr>
 				</c:forEach>
			</table>

</body>
</html>