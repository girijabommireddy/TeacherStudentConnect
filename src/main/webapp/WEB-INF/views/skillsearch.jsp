    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>

<title>Skill Based Search</title>

<style type="text/css">
 .skill{
 
 padding-left: 10%;
 padding-top: 10%;
 
 }

.skill2{

background-image: url("/resources/images/admin.jpg");


}


</style>

</head>
<body class="skill2">
<table ><tr style="width:100%;">
<tr>
<td style="width:5%" ><img src="/resources/images/logo1.JPG"  alt="not yet" style="height: 100px;width 100px;"></img></td>

<td style="width:45%;"></td>


</tr>
</table>
<div class="skill">
 <h1>Skill Based Search</h1>
 
    <table border="1">
        <tr>
            <th>Resource ID</th>
            <th>Resource Description</th>
            <th>Skill</th>
            <th>Compentency Level</th>
            <th>Intended Audience</th>
           
        </tr>
        <c:forEach items="${rs}" var="addskill">
            <tr>
                <td>${addskill.resourceID}</td>
                <td>${addskill.resourceDescription}</td>
                <td>${addskill.skill}</td>
                 <td>${addskill.competencyLevel}</td>
                 <td>${addskill.intendedAudience}</td>
                  
            </tr>
        </c:forEach>
         </table>
         <input type="button" value="Back" onclick="javascript:history.back()"/>
          </div>
</body>
</html>