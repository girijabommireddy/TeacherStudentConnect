<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function valid()
{
	
	var formData = new FormData();
	
	flag=true;
	var rei=document.getElementById("ri").value;

	var rd=document.getElementById("rd").value;
var top=document.getElementById("topic").value;
	
	var tit=document.getElementById("title").value;
	var aut=document.getElementById("author").value;
	var sub=document.getElementById("subject");
	var yea=document.getElementById("year").value;
	
	
	 if (rei == "" || rei.length==0)  
		{
			//alert("userid is mandantory");
		      document.getElementById("ri").focus();
		             document.getElementById("ri").style.borderColor="red";
		             document.getElementById("ri").style.borderStyle="solid";
		        document.getElementById("rierr").innerText="*ResourceId is mandatory";                                     
		        flag=false;
		}  
		else
			{
		//flag=true;
		document.getElementById("ri").style.borderColor="";
		document.getElementById("ri").style.borderStyle="";
		document.getElementById("rierr").innerText="";
			}
	 if (rd == "" || rd.length==0)  
		{
			//alert("userid is mandantory");
		      document.getElementById("rd").focus();
		             document.getElementById("rd").style.borderColor="red";
		             document.getElementById("rd").style.borderStyle="solid";
		        document.getElementById("rderr").innerText="*ResourceDiscription is mandatory";                                     
		        flag=false;
		}  
		else
			{
		//flag=true;
		document.getElementById("rd").style.borderColor="";
		document.getElementById("rd").style.borderStyle="";
		document.getElementById("rderr").innerText="";
			}
     if (top == "" || top.length==0)  
 	{
 		//alert("userid is mandantory");
 	      document.getElementById("topic").focus();
 	             document.getElementById("topic").style.borderColor="red";
 	             document.getElementById("topic").style.borderStyle="solid";
 	        document.getElementById("topicerr").innerText="*Topic is mandatory";                                     
 	        flag=false;
 	}  
 	else
 		{
 	//flag=true;
 	document.getElementById("topic").style.borderColor="";
 	document.getElementById("topic").style.borderStyle="";
 	document.getElementById("topicerr").innerText="";
 		}
     if (tit == "" || tit.length==0)  
 	{
 		//alert("userid is mandantory");
 	      document.getElementById("title").focus();
 	             document.getElementById("title").style.borderColor="red";
 	             document.getElementById("title").style.borderStyle="solid";
 	        document.getElementById("titleerr").innerText="*Title is mandatory";                                     
 	        flag=false;
 	}  
 	else
 		{
 	//flag=true;
 	document.getElementById("title").style.borderColor="";
 	document.getElementById("title").style.borderStyle="";
 	document.getElementById("titleerr").innerText="";
 		}
     if (aut == "" || aut.length==0)  
 	{
 		//alert("userid is mandantory");
 	      document.getElementById("author").focus();
 	             document.getElementById("author").style.borderColor="red";
 	             document.getElementById("author").style.borderStyle="solid";
 	        document.getElementById("authorerr").innerText="*Author is mandatory";                                     
 	        flag=false;
 	}  
 	else
 		{
 	//flag=true;
 	document.getElementById("author").style.borderColor="";
 	document.getElementById("author").style.borderStyle="";
 	document.getElementById("authorerr").innerText="";
 		}
     if (sub == "" || sub.length==0 )  
 	{
 	
 	      document.getElementById("subject").focus();
 	             document.getElementById("subject").style.borderColor="red";
 	             document.getElementById("subject").style.borderStyle="solid";
 	        document.getElementById("subjecterr").innerText="*Subject is mandatory";                                     
 	        flag=false;
 	}  
 	else
 		{
 	//flag=true;
 	document.getElementById("subject").style.borderColor="";
 	document.getElementById("subject").style.borderStyle="";
 	document.getElementById("subjecterr").innerText="";
 		}
     if (yea == "" || yea.length==0)  
 	{
 		//alert("userid is mandantory");
 	      document.getElementById("year").focus();
 	             document.getElementById("year").style.borderColor="red";
 	             document.getElementById("year").style.borderStyle="solid";
 	        document.getElementById("yearerr").innerText="*Year is mandatory";                                     
 	        flag=false;
 	}  
 	else
 		{
 	//flag=true;
 	document.getElementById("year").style.borderColor="";
 	document.getElementById("year").style.borderStyle="";
 	document.getElementById("yearerr").innerText="";
 		}

	
return flag;

}

</script>
<style type="text/css">
.error{

color: red;

}



</style>
<meta charset="ISO-8859-1">
<title>Resource Addition Page</title>
	<style type="text/css">
	.res{
	background-image: url("/resources/images/res.jpeg"); 
	}
	.res1{
	color: white;
	padding-top: 10%;
	
}
	.res2{
	color: white;
	}
	
	
	</style>

</head>
<body class="res">
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>

<td style="width:45%;"></td>
<td><h2><a href="addresources">Home</a></h2></td>


</tr>
</table>

<form:form method="post"     onsubmit="return valid();"  action="resourceadding" modelAttribute="addresource" enctype="multipart/form-data" >
		<table class="res1">

			<tr>
				<td><form:label path="userId">UserID</form:label></td>
				<td><form:input path="userId" value="${userId}" readonly="true" id="ri" /></td>
				
			</tr>
			
			<tr>
				<td><form:label path="resourceID">ResourceID</form:label></td>
				<td><form:input path="resourceID" id="ri" /></td>
				<td><span id="rierr" style="color:red"></span></td>
                <td><form:errors path="resourceID" cssClass="error"/>
			</tr>


               
 

			<tr>
				<td><form:label path="resourceDescription">Resource Description</form:label></td>
			<td><textarea rows="5" cols="20" name="resourceDescription" ></textarea></td>
			 <td><span id="rderr" style="color:red"></span></td>
                <td><form:errors path="resourceDescription" cssClass="error"/>
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
				       </form:select>
                 </td>
			</tr>
			 <tr  >
         
                <td><form:label path="topic">Topic</form:label></td>
                <td><form:input path="topic" id="topic" /></td>
                <td><span id="topicerr" style="color:red"></span></td>
                <td><form:errors path="topic" cssClass="error"/>
              
             
               
            </tr>
             <tr >
             
                <td><form:label path="title">Title</form:label></td>
                <td><form:input path="title"  id="title"/></td>
                <td><span id="titleerr" style="color:red"></span></td>
                <td><form:errors path="title" cssClass="error"/>

               
                       <tr>
             <td><form:label path="author">Author</form:label></td>
            <td><form:input path="author" id="author"/></td>
            <td><span id="authorerr" style="color:red"></span></td>
                <td><form:errors path="author" cssClass="error"/>

            </tr>
            <tr>
             <td><form:label path="subject">Subject</form:label></td>
            <td><form:input path="subject" id="subject"/></td>
            <td><span id="subjecterr" style="color:red"></span></td>
                <td><form:errors path="subject" cssClass="error"/>

            </tr>
                      <tr>
             <td><form:label path="year">Year</form:label></td>
            <td><form:input path="year" id="year"/></td>
            <td><span id="yearerr" style="color:red"></span></td>
                <td><form:errors path="year" cssClass="error"/>

            </tr>
            


 <tr>
                <td><form:label path="content">Upload/Attach File</form:label></td>
                <td><input type="file" name="file" id="file" /></td>
                
            </tr>
         
          

             <tr>
                <td colspan="2"><input type="submit" value="Add Resource"/></td>
                <td colspan="2"><input type="reset" value="Clear" name="reset"></td>
            </tr>

</table>

</form:form>
</body>
</html>