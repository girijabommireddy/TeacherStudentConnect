    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>

<title>List of Skills</title>
<style type="text/css">

.list{

background-image: url("/resources/images/background.jpg");

}
.list2{
padding-top: 10%;
padding-left: 15%;


}


</style>
</head>
<body  class="list">
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>

<td style="width:45%;"></td>
<td><h2> <a href="adminhome">Home</a></h2>


</tr>
</table>
<div class="list2">
 <h1>All Products in System</h1>
 
 
    <table border="1">
        <tr>
       
            <th>Skills</th>
            <th>Action</th>
                    </tr>
        <c:forEach items="${resList}" var="resourceList">
            <tr>
           
                <td>${resourceList.skill}</td>
                
  <td><a href="showskills/${resourceList.skill}">Search</a></td>
                 
                 
            </tr>
        </c:forEach>
         </table>
        
         </div>

</body>
</html>