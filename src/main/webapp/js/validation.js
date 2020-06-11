function valid()
{
	
	alert("goo");
	flag=true;
	var fname=document.getElementById("firstName");
	var lname=document.getElementById("lastName");
	//var dob=document.getElementById("dob").value;
	var gender=document.getElementById("gender").value;
	var phone=document.getElementById("contactNumber").value;
	var id=document.getElementById("userId").value;
	var pwd=document.getElementById("password").value;
	var ans=document.getElementById("answer").value;
	var pic=document.getElementById("pic").value;
	
	var pattern=/[A-Za-z]{6,32}/;
	var pattern1=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	 var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
	 
    alert(usrid +" "+usrid.length);
    alert(pass +" "+pass.length);
    if (fname == "" || fname.length==0)  
	{
		//alert("userid is mandantory");
	      document.getElementById("firstName").focus();
	             document.getElementById("firstName").style.borderColor="red";
	             document.getElementById("firstName").style.borderStyle="solid";
	        document.getElementById("fnameerr").innerText="*FirstName is mandatory";                                     
	        flag=false;
	}  
	else
		{
	//flag=true;
	document.getElementById("firstName").style.borderColor="";
	document.getElementById("firstName").style.borderStyle="";
	document.getElementById("fnameerr").innerText="";
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
	//flag=true;
	document.getElementById("lastName").style.borderColor="";
	document.getElementById("lastName").style.borderStyle="";
	document.getElementById("lnameerr").innerText="";
		}
//    if (dob == "" )  
//	{
//		//alert("userid is mandantory");
//	      document.getElementById("dob").focus();
//	             document.getElementById("dob").style.borderColor="red";
//	             document.getElementById("dob").style.borderStyle="solid";
//	        document.getElementById("doberr").innerText="*Date Of Birth  is mandatory";                                     
//	        flag=false;
//	}  
//	else
//		{
//	//flag=true;
//	document.getElementById("dob").style.borderColor="";
//	document.getElementById("dob").style.borderStyle="";
//	document.getElementById("doberr").innerText="";
//		}
	if (gender == "" || gender.length==0)  
	{
		//alert("userid is mandantory");
	      document.getElementById("gender").focus();
	             document.getElementById("gender").style.borderColor="red";
	             document.getElementById("gender").style.borderStyle="solid";
	        document.getElementById("gendererr").innerText="*Gender is mandatory";                                     
	        flag=false;
	}  
	else
		{
	//flag=true;
	document.getElementById("gender").style.borderColor="";
	document.getElementById("gender").style.borderStyle="";
	document.getElementById("gendererr").innerText="";
		}
	
		if(phone=="" || phone.length==0)   
	{//alert("Password is mandantory");
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
	//flag=true;
		}
		if (id == "" || id.length==0)  
		{//alert("Password is mandantory");
		      document.getElementById("userID").focus();
		             document.getElementById("userID").style.borderColor="red";
		             document.getElementById("userID").style.borderStyle="solid";
		             document.getElementById("iderr").innerText="*UserID Number  is mandatory";                                     
		        flag=false;
		}  
			else		{
		
		document.getElementById("userID").style.borderColor="";
		document.getElementById("userID").style.borderStyle="";
		document.getElementById("iderr").innerText="";
		//flag=true;
			}
		if (pwd == "" || pwd.length==0)  
		{//alert("Password is mandantory");
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
		//flag=true;
			}
		if (ans == "" || ans.length==0)  
		{//alert("Password is mandantory");
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
		//flag=true;
			}
//	
//		if (pic == "" || pic.length==0)  
//		{//alert("Password is mandantory");
//		      document.getElementById("pic").focus();
//		             document.getElementById("pic").style.borderColor="red";
//		             document.getElementById("pic").style.borderStyle="solid";
//		             document.getElementById("picerr").innerText="*Anser  is mandatory";                                     
//		        flag=false;
//		}  
//			else		{
//		
//		document.getElementById("pic").style.borderColor="";
//		document.getElementById("pic").style.borderStyle="";
//		document.getElementById("picerr").innerText="";
//		//flag=true;
//			}
//	
		return flag;    
	}