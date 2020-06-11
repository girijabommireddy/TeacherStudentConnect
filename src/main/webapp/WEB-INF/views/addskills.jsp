<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


     

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddSkills page</title>
<script type="text/javascript">
function valid()
{
	
	flag=true;
	var resdes=document.getElementById("resourceDescription").value;

    //alert(resdes +" "+resdes.length);
    
	if (resdes == "" || resdes.length==0)  
	{
		//alert("Please update the highlighted mandatory field(s)");
	      document.getElementById("resourceDescription").focus();
	             document.getElementById("resourceDescription").style.borderColor="red";
	             document.getElementById("resourceDescription").style.borderStyle="solid";
	        document.getElementById("rderr").innerText="*resourceDescription is mandatory";                                     
	        flag=false;
	}  
	else
		{
	//flag=true;
	document.getElementById("resourceDescription").style.borderColor="";
	document.getElementById("resourceDescription").style.borderStyle="";
	document.getElementById("rderr").innerText="";
		}
	return flag;    
	}
	</script>

		

<style type="text/css">
.error
{
color: red;
}
.addskill{
padding-left: 10%;
padding-top: 5%;


}
.addskill1
{

background-color:gray;
color: white;
padding-top: 10%;
padding-left: 40%;
padding-right: 20%;
padding-bottom: 10%;

}
</style>

</head>
<header>

</header>
<body>
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>

<td style="width:45%;"></td>


</tr>
</table>

	<form:form action="updateskill" onsubmit="return valid();" >
<div class="addskill1">
<h1 >Add skills</h1>
		<table>
		<tr>
		
					<td><form:label path="resourceID">Resource ID</form:label></td>
					
					<td><form:select path="resourceID">
					
					
                          <c:forEach items="${addskill}" var="resourceList">
						<form:option value="${resourceList.resourceID }" />
						
				
						</c:forEach>
						</form:select></td>
						

				</tr>

			
			<tr>
				<td><form:label path="userId">UserID</form:label></td>
				<td><form:input path="userId" value="${userId}" readonly="true" id="ri" /></td>
		
			</tr>
			
			<tr>
				<td><form:label path="resourceDescription">Resource Description</form:label></td>
				<td><textarea rows="5" cols="20" name="resourceDescription" ></textarea></td>
 <td><span id="rderr" style="color:red"></span></td>
				   <td><form:errors path="resourceDescription" cssClass="error"/>
			</tr>

			<tr>
				<td>Skill</td>
				<td><form:select path="skill">
						<form:option value="Core Java" />
						<form:option value="Python" />
						<form:option value="C" />
						<form:option value="C++" />
						<form:option value="SQL" />
						<form:option value="Html" />
						<form:option value="CSS" />
						<form:option value="Ruby" />
						<form:option value="PHP" />
						<form:option value="Javascript" />
						<form:option value="Scala" />
						<form:option value="Bootstrap" />
						<form:option value="Spring" />
					</form:select></td>
			</tr>


			<tr>
				<td>Competency Level</td>
				<td><form:select path="competencyLevel">
						<form:option value="Basic" />
						<form:option value="Medium" />
						<form:option value="Excellent" />

					</form:select></td>
			</tr>
			<tr>
				<td>Intended Audience</td>
				<td><form:select path="intendedAudience">
						<form:option value="Beginner" />
						<form:option value="Intermediate" />
						<form:option value="Experienced" />

					</form:select></td>
			</tr>
					<tr>
				<td><form:label path="topic">Topic</form:label></td>
					
					<td><form:select path="topic">
					
					
                          <c:forEach items="${addskill}" var="resourceList">
						<form:option value="${resourceList.topic }" />
						
				
						</c:forEach>
						</form:select></td>
						</tr>
		
            <tr>
				<td><form:label path="title">Title</form:label></td>
					
					<td><form:select path="title">
					
					
                          <c:forEach items="${addskill}" var="resourceList">
						<form:option value="${resourceList.title }" />
						
				
						</c:forEach>
						</form:select></td>
						</tr>
		
               
               
                      <tr>
				<td><form:label path="author">Author</form:label></td>
					
					<td><form:select path="author">
					
					
                          <c:forEach items="${addskill}" var="resourceList">
						<form:option value="${resourceList.author }" />
						
				
						</c:forEach>
						</form:select></td>
						</tr>
		
            <tr>
				<td><form:label path="subject">Subject</form:label></td>
					
					<td><form:select path="topic">
					
					
                          <c:forEach items="${addskill}" var="resourceList">
						<form:option value="${resourceList.subject }" />
						
				
						</c:forEach>
						</form:select></td>
						</tr>
		<tr>
				<td><form:label path="year">Year</form:label></td>
					
					<td><form:select path="year">
					
					
                          <c:forEach items="${addskill}" var="resourceList">
						<form:option value="${resourceList.year }" />
						
				
						</c:forEach>
						</form:select></td>
						</tr>
            
			<tr>
				<td colspan="2"><input type="submit" value="Add skill" /></td>
			</tr>



		</table>
		</div>
		
	</form:form>
</body>