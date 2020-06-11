<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

.reslist{


background-image: url("/resources/images/admin.jpg");
}
.reslist1{
 padding-left: 5%;
 padding-top: 2%;
 
}


</style>




</head>
<body class="reslist">

<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>
<td ><h1 >Teacher Student Connect</h1></td>

<td><h2><a href="adminhome">Home</a></h2></td>
</tr>
</table>
<h2 > Resources List</h2>

 <div   class="reslist1">
    <table  border="1">
        <tr>
            <th>ResourceID</th>
            <th>Resource Description</th>
            <th>Skills</th>
            <th>Topic</th>
            <th>Title</th>
            <th>Author</th>
            <th>Subject</th>
            <th>Year</th>
            
            <th>Action</th>
          
        </tr>
        <c:forEach items="${resList}" var="resourceList">
            <tr>
                <td>${resourceList.resourceID}</td>
                <td>${resourceList.resourceDescription}</td>
                  <td>${resourceList.skill}</td>
                  <td>${resourceList.topic}</td>
                  <td>${resourceList.title}</td>
                  <td>${resourceList.author}</td>
                  <td>${resourceList.subject}</td>
                  <td>${resourceList.year}</td>
                    
                  
                <td><a href="showEditResources/${resourceList.resourceID}">Edit</a></td>
             </tr>
          
             
        </c:forEach>
         </table>
         </div>
         <br><br>

<h2>
<a href="skilllist"> Skills List</a><br>
<a href="addskills">Add Skills</a>
</h2>
</body>
</html>