<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function valid() {

		flag = true;
		var usrid = document.getElementById("userId").value;
		var pass = document.getElementById("password").value;

		if (usrid == "" || usrid.length == 0) {

			document.getElementById("userId").focus();
			document.getElementById("userId").style.borderColor = "red";
			document.getElementById("userId").style.borderStyle = "solid";
			document.getElementById("usrIderr").innerText = "*Userid is mandatory";
			flag = false;
		} else {

			document.getElementById("userId").style.borderColor = "";
			document.getElementById("userId").style.borderStyle = "";
			document.getElementById("usrIderr").innerText = "";
		}

		if (pass == "" || pass.length == 0) {
			document.getElementById("password").focus();
			document.getElementById("password").style.borderColor = "red";
			document.getElementById("password").style.borderStyle = "solid";
			document.getElementById("pwderr").innerText = "*Password is mandatory";
			flag = false;
		} else {

			document.getElementById("password").style.borderColor = "";
			document.getElementById("password").style.borderStyle = "";
			document.getElementById("pwderr").innerText = "";
			//flag=true;
		}

		return flag;
	}
</script>



<style type="text/css">
.error {
	color: red;
}

.login {
	background-color: gray;
	padding-left: 10%;
	padding-top: 10%;
	padding-bottom: 15%;
	padding-left: 10%;
}

.login2 {
	padding-left: 10%;
	padding-top: 10%;
}
</style>

</head>
<title>Login Here</title>
<body>
	<table>
		<tr style="width: 100%;">
		<tr>
			<td style="width: 5%"><img src="/resources/images/logo1.JPG"
				alt="not yet" style="height: 100px;width 100px;"></img></td>
			<td><h1>Welcome to login</h1></td>
			<td style="width: 45%;"></td>
			<td><h2>
					<a href="home">HOME</a>
				</h2></td>

		</tr>
	</table>



	<div class="login">
		<form:form method="post" onsubmit="return valid();" action="validate"
			modelAttribute="userLogin">

			<table>
				<tr>
					<td><form:label path="userId">UserID</form:label></td>
					<td><form:input path="userId" id="userId" /></td>
					<td><span id="usrIderr" style="color: red"></span></td>
					<td><form:errors path="userId" cssClass="error" />
				</tr>
				<tr>
					<td><form:label path="password">Password</form:label></td>
					<td><form:password path="password" id="password" /></td>
					<td><span id="pwderr" style="color: red"></span></td>
					<td><form:errors path="password" cssClass="error" />
				</tr>

				
				<tr>
					<td colspan="2"><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</form:form>
	</div>
	<div>
		<h4 id="footer"></h4>
	</div>
</body>
</html>