<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head >



<meta charset="ISO-8859-1">
<title>Registration page</title>
 
 <link  rel="stylesheet" href="/resources/css/style.css"/>
 
 
 <script type="text/javascript">
 
function valid()
{
	
	 
	
	flag=true;
	var fname=document.getElementById("firstName").value;
	var lname=document.getElementById("lastName").value;
	var dob=document.getElementById("dob").value;
	var gender=document.getElementById("gender");
	var phone=document.getElementById("contactNumber").value;
	var id=document.getElementById("userId").value;
	var pwd=document.getElementById("password").value;
	var ans=document.getElementById("answer").value;
	var sp=document.getElementById("specialization").value;
	
	
	


	 
     if (fname == "" || fname.length==0)  
	{
		
	      document.getElementById("firstName").focus();
	             document.getElementById("firstName").style.borderColor="red";
	             document.getElementById("firstName").style.borderStyle="solid";
	        document.getElementById("fnameerr").innerText="*FirstName is mandatory";                                     
	        flag=false;
	}  
	else
		{
	
	document.getElementById("firstName").style.borderColor="";
	document.getElementById("firstName").style.borderStyle="";
	document.getElementById("fnameerr").innerText="";
		}
     if (sp == "" || sp==0)  
 	{
 		
 	      document.getElementById("specialization").focus();
 	             document.getElementById("specialization").style.borderColor="red";
 	             document.getElementById("specialization").style.borderStyle="solid";
 	        document.getElementById("sperr").innerText="*specialization is mandatory";                                     
 	        flag=false;
 	}  
 	else
 		{
 	//flag=true;
 	document.getElementById("specialization").style.borderColor="";
 	document.getElementById("specialization").style.borderStyle="";
 	document.getElementById("sperr").innerText="";
 		}
    if (lname == "" || lname.length==0)  
	{
		//alert("userid is mandantory");
	      document.getElementById("lastName").focus();
	             document.getElementById("lastName").style.borderColor="red";
	             document.getElementById("lastName").style.borderStyle="solid";
	        document.getElementById("lnameerr").innerText="*LastName is mandatory";                                     
	        flag=false;
	}  
	else
		{
	
	document.getElementById("lastName").style.borderColor="";
	document.getElementById("lastName").style.borderStyle="";
	document.getElementById("lnameerr").innerText="";
		}
    if (!regex.test(dob) )  
	{
		
	      document.getElementById("dob").focus();
	             document.getElementById("dob").style.borderColor="red";
	             document.getElementById("dob").style.borderStyle="solid";
	        document.getElementById("doberr").innerText="*Date Of Birth  is mandatory";                                     
        flag=false;
	}  
	else
		{
	
	document.getElementById("dob").style.borderColor="";
	document.getElementById("dob").style.borderStyle="";
	document.getElementById("doberr").innerText="";
		}
		
		if(phone=="" || phone.length==0 && !pattern1.test(phone))   
	{
	      document.getElementById("contactNumber").focus();
	             document.getElementById("contactNumber").style.borderColor="red";
	             document.getElementById("contactNumber").style.borderStyle="solid";
	             document.getElementById("phoneerr").innerText="*Contact Number  is mandatory";                                     
	        flag=false;
	}  
		else		{
	
	document.getElementById("contactNumber").style.borderColor="";
	document.getElementById("contactNumber").style.borderStyle="";
	document.getElementById("phoneerr").innerText="";
	}
		if (id == "" || id.length==0)  
		{
		      document.getElementById("userId").focus();
		             document.getElementById("userId").style.borderColor="red";
		             document.getElementById("userId").style.borderStyle="solid";
		             document.getElementById("iderr").innerText="*UserID Number  is mandatory";                                     
		        flag=false;
		}  
			else		{
		
		document.getElementById("userId").style.borderColor="";
		document.getElementById("userId").style.borderStyle="";
		document.getElementById("iderr").innerText="";
		
			}
		if (pwd == "" || pwd.length==0)  
		{
		      document.getElementById("password").focus();
		             document.getElementById("password").style.borderColor="red";
		             document.getElementById("password").style.borderStyle="solid";
		             document.getElementById("pwderr").innerText="*Password  is mandatory";                                     
		        flag=false;
		}  
			else		{
		
		document.getElementById("password").style.borderColor="";
		document.getElementById("password").style.borderStyle="";
		document.getElementById("pwderr").innerText="";
		
			}
		if (ans == "" || ans.length==0)  
		{
		      document.getElementById("answer").focus();
		             document.getElementById("answer").style.borderColor="red";
		             document.getElementById("answer").style.borderStyle="solid";
		             document.getElementById("anserr").innerText="*Anser  is mandatory";                                     
		        flag=false;
		}  
			else		{
		
		document.getElementById("answer").style.borderColor="";
		document.getElementById("answer").style.borderStyle="";
		document.getElementById("anserr").innerText="";
		
			}
	
	
		return flag;    
	}	
	</script>

 

</head>
<body class="body1" >

<form:form method="post"       onsubmit="return valid();"   action="teacher" modelAttribute="user" enctype="multipart/form-data">
<table class="header1"><tr style="width:100%;">
<td style="width:5%" ><img src="/resources/images/abc.PNG"  alt="not yet"style="width:100px;height:100px;"></img></td>
<td align="center"><h1 >Teacher Student Connect</h1></td>
<td style="width:55%;"></td>
<td><a href="login"></a><td>
</table>
        <table class="bg">
         <tr  >
         
                <td><form:label path="firstName">FirstName</form:label></td>
                <td><form:input path="firstName" id="firstName" /></td>
                <td><span id="fnameerr" style="color:red"></span></td>
                <td><form:errors path="firstName" cssClass="error"/>
             
             
               
            </tr>
             <tr >
             
                <td><form:label path="lastName">LastName</form:label></td>
                <td><form:input path="lastName"  id="lastName"/></td>
                <td><span id="lnameerr" style="color:red"></span></td>
                <td><form:errors path="lastName" cssClass="error"/>

               
            </tr>
             <tr>
                <td><form:label path="dob">Date Of Birth</form:label></td>
                <td><form:input    path="dob"  id="dob" placeholder="dd/MM/yyyy"/></td>
                <td><span id="doberr" style="color:red"></span></td>
                <td><form:errors path="dob" cssClass="error"/>

                
            </tr>
           <tr>
             <td><form:label path="gender">Gender</form:label></td>
           <td><input type="radio" name="gender" value="male" >Male
			<input type="radio" name="gender" value="female" >Female</td>
            <td><span id="gendererr" style="color:red"></span></td>
                <td><form:errors path="gender" cssClass="error"/>
         
            </tr>
            
             
             <tr>
                <td><form:label path="contactNumber">ContactNumber</form:label></td>
                <td><form:input path="contactNumber" id="contactNumber" /></td>
                <td><span id="phoneerr" style="color:red"></span></td>
                <td><form:errors path="contactNumber" cssClass="error"/>
               
            </tr>
               <tr>
                <td><form:label path="userId">UserId</form:label></td>
                <td><form:input path="userId"  id="userId" /></td>
                <td><span id="iderr" style="color:red"></span></td>
                <td><form:errors path="userId" cssClass="error"/>
             
            </tr>
             <tr>
                <td><form:label path="specialization">specialization</form:label></td>
                <td><form:input path="specialization"  id="specialization" /></td>
                <td><span id="sperr" style="color:red"></span></td>
                <td><form:errors path="specialization" cssClass="error"/>
              
            </tr>
            
            
             <tr>
                <td><form:label path="password">Password</form:label></td>
                <td><form:input path="password"  id="password" /></td>
                <td><span id="pwderr" style="color:red"></span></td>
                <td><form:errors path="password" cssClass="error"/>
            
            </tr>
            
           <tr>
				<td>Role</td>
				<td><form:select path="Role" id="role">
					
					  <form:option value="Teacher" />
					  
				       </form:select>
                 </td>
                 
			</tr>
         
         <tr>
<td>Secret Question</td>
<td>
<form:select path="secretQuestion" id="secretQuestion" class="select-box" >
<option  selected="selected" value="What is your favorite Dish?">What is your Favorite Dish?</option>
  <option value="In which school you have studied first?">In which school you have studied First?</option>
  <option value="What is your favorite movie?">What is your Favorite Movie?</option>
</form:select>
</td>
</tr>
<tr>
<td colspan="2" align="right">
<form:input path="answer"  id="answer" placeholder="Answer" width="170px" />
</td>
<td><span id="anserr" style="color:red"></span></td>
                <td><form:errors path="answer" cssClass="error"/>
</tr>
<tr>
                <td><form:label path="picture">Picture</form:label></td>
                <td><input type="file" name="file" id="pic" /></td>
                          </tr>
         
          
          
          
          
            <tr>
                <td colspan="2"><input type="submit"    class="button"   value="Register"/></td>
              <td colspan="2"><input type="reset" value="Clear" name="reset"></td>
            </tr>
           
            
        </table>
</form:form>

</body>
</html>