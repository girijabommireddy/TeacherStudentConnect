<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DOCUMENT LIST</title>
<style type="text/css">
div{

background-color: gray;
color: white;
padding-left: 10%;
padding-top: 10%;
padding-bottom: 10%;


}




</style>

</head>

<body>
                                                                            
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>
<td ><h1 >Teacher Student Connect</h1></td>
<td style="width:45%;"></td>
<td><h2><a href="studenthome">HOME</a></h2></td>

</tr>
</table>
          <div>                                                               
        SelectSort:
      
           
            <a href="/sortByYearAscending">Sort By Year {Newest First}</a><br><br>
            <a href="/sortByYearDescending">Sort By Year {Oldest First}</a><br><br>
             <a href="/sortByTitleAscending">Sort By Title {A-Z}</a><br><br>
            <a href="/sortByTitleDescending">Sort By Title  {Z-A}</a><br><br>
             <a href="/sortByAuthorAscending">Sort By Author{A-Z}</a><br><br>
            <a href="/sortByAuthorDescending">Sort By Author {Z-A}</a><br><br>
             <a href="/sortBySubjectAscending">Sort By Subject {A-Z}</a><br><br>
            <a href="/sortBySubjectDescending">Sort By Subject {Z-A}</a><br><br>
           
          

<table>
 <tr>
   <td><b>Year</b></td>
  <td><b>Title</b></td>
  <td><b>Author</b></td>
  <td><b>Subject</b></td>
   <td><b>Content</b></td>
 </tr>
 
 <c:forEach items="${doclist}" var="document">
            <tr>
             <td>${document.year}</td>
             <td>${document.title}</td>
             <td>${document.author}</td>
                          <td>${document.subject}</td>
             <td><a href="/download/${document.resourceID}">View document</a>   
                   </tr>
                   <tr>
        </c:forEach>
</table>


<h2><a href="resources">Back</a></h2>

</div>    

     

    
</body>

</html>