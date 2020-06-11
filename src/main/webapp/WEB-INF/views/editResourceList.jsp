<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function valid() {

		flag = true;
		var rei = document.getElementById("ri").value;

		var rd = document.getElementById("rd").value;

		if (rei == "" || rei.length == 0) {
			//alert("userid is mandantory");
			document.getElementById("ri").focus();
			document.getElementById("ri").style.borderColor = "red";
			document.getElementById("ri").style.borderStyle = "solid";
			document.getElementById("rierr").innerText = "*ResourceId is mandatory";
			flag = false;
		} else {
			//flag=true;
			document.getElementById("ri").style.borderColor = "";
			document.getElementById("ri").style.borderStyle = "";
			document.getElementById("rierr").innerText = "";
		}
		if (rd == "" || rd.length == 0) {
			//alert("userid is mandantory");
			document.getElementById("rd").focus();
			document.getElementById("rd").style.borderColor = "red";
			document.getElementById("rd").style.borderStyle = "solid";
			document.getElementById("rderr").innerText = "*ResourceDiscription is mandatory";
			flag = false;
		} else {
			//flag=true;
			document.getElementById("rd").style.borderColor = "";
			document.getElementById("rd").style.borderStyle = "";
			document.getElementById("rderr").innerText = "";
		}

		return flag;

	}
</script>


<style type="text/css">
.editres {
	background-image: url("/resources/images/admin.jpg");
}

.error {
	color: red;
}

.editres1 {
	padding-left: 5%;
	padding-top: 2%;
}
</style>
</head>
<body class="editres">
<body class="s1">
	<table>
		<tr style="width: 100%;">
		<tr>
			<td style="width: 5%"><img src="/resources/images/logo1.JPG"
				alt="not yet" style="height: 100px;width 100px;"></img></td>
			<td><h1>Teacher Student Connect</h1></td>


		</tr>
	</table>

	<h2>Update Resources</h2>
	<br>
	<form:form method="post" onsubmit="return valid();" action="/update"
		modelAttribute="resource">
		<div class="editres1">
			<table>
			
			<tr>
				<td><form:label path="userId">UserID</form:label></td>
				<td><form:input path="userId" value="${userId}" readonly="true" id="ri" /></td>
				<%-- <td><span id="rierr" style="color:red"></span></td>
                <td><form:errors path="resourceID" cssClass="error"/> --%>
			</tr>
				<tr>
					<td><form:label path="resourceID">ResourceID</form:label></td>
					<td><form:input path="resourceID" id="ri"
							value="${resource.resourceID}" /></td>
					<td><span id="rierr" style="color: red"></span></td>
					<td><form:errors path="resourceID" cssClass="error" />
				</tr>
				<tr>
					<td><form:label path="resourceDescription">ResourceDescription</form:label></td>
					<td><form:input path="resourceDescription" id="rd"
							value="${resource.resourceDescription}" /></td>

					<td><span id="rderr" style="color: red"></span></td>
					<td><form:errors path="resourceDescription" cssClass="error" />
				</tr>

				<tr>
					<td>skill</td>
					<td><form:select path="skill">
							<form:option value="Java" />
							<form:option value="Python" />
							<form:option value="C" />
							<form:option value="C++" />
							<form:option value="SQL" />
							<form:option value="Html" />
							<form:option value="CSS" />
							<form:option value="Ruby" />
							<form:option value="PHP" />
						</form:select></td>
				<tr>

					<td><form:label path="topic">Topic</form:label></td>
                <td><form:input path="topic" id="topic"
                value="${resource.topic}" /></td> 
                <td><span id="topicerr" style="color:red"></span></td>
                <td><form:errors path="topic" cssClass="error" />
              
             
               
            
				</tr>
             <tr>
             
                <td><form:label path="title">Title</form:label></td>
                <td><form:input path="title" id="title"
                value="${resource.title}" /></td>
                <td><span id="titleerr" style="color:red"></span></td>
                <td><form:errors path="title" cssClass="error" />

               
                       
            
            
				<tr>
             <td><form:label path="author">Author</form:label></td>
            <td><form:input path="author" id="author" 
              value="${resource.author}" /></td> 
            <td><span id="authorerr" style="color:red"></span></td>
                <td><form:errors path="author" cssClass="error" />

            
				</tr>
            <tr>
             <td><form:label path="subject">Subject</form:label></td>
            <td><form:input path="subject" id="subject"   value="${resource.subject}" /></td> 
            <td><span id="subjecterr" style="color:red"></span></td>
                <td><form:errors path="subject" cssClass="error" />

            
				</tr>
                      <tr>
             <td><form:label path="year">Year</form:label></td>
            <td><form:input path="year" id="year"   value="${resource.year}" /></td> 
            <td><span id="yearerr" style="color:red"></span></td>
                <td><form:errors path="year" cssClass="error" />

            
				</tr>
            


 <tr>
                <td><form:label path="content">Upload/Attach File</form:label></td>
                <td><input type="file" name="file" id="file"   value="${resource.content}" /></td> 
                
            </tr>
         
			
				<tr>
                <td colspan="2"><input type="submit" value="Update" /></td>
            </tr>
        </table>
        </div>
    </form:form>
</body>
</html>