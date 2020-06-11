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

</style>
</head>
<body class="s1">
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>
<td ><h1 >Teacher Student Connect</h1></td>
<td>  <h3><a href="studenthome"> Home</a></h3></td>

</tr>

</table>



                                                                      
        SelectSort:
      

            <br><a href="/sortByfirstNameAscending">Sort By firstName {A-Z}</a><br>
             
           <br><a href="/sortByfirstNameDescending">Sort By firstName {Z-A}</a><br>
           
          

<table>
 <tr>
   <td><b>Name</b></td>
  
 </tr>
 
 <c:forEach items="${stulist}" var="student">
            <tr>
             <td>${student.userId}</td>
               
                   </tr>
                               
        </c:forEach>
</table>
<h2><a href="resources">Back</a></h2>
</body>
</html>