	
	var fname=document.getElementById("firstName");
	var lname=document.getElementById("lastName");
	var age=document.getElementById("dob").value;
	var gender=document.getElementById("gender").value;
	var phone=document.getElementById("contactNumber").value;
	var id=document.getElementById("userId").value;
	var pwd=document.getElementById("password").value;
	var ans=document.getElementById("answer").value;	
	var pattern=/[A-Za-z]{6,32}/;
	var pattern1=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
	var pattern2=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
	
function checkInputs()
{
	alert("hii");
	const fnameValue =  fname.value.trim();
	const lnameValue = lname.value.trim(); 
	const age = age.value.trim();
	
	if(fnameValue == ''){
		//show error
		//add error class
		setErrorFor(fname, 'first name cannot be blank');
	} else {
		setSuccessFor(fname)
	}

}

function setErrorFor(input, message){
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	
	//add error message
	small.innerText = message;
	
	//add error class
	formControl.className = 'form-control error';
}


function setSuccessFor(input){
	const formControl = input.parentElement;
	
	//add error class
	formControl.className = 'form-control success';
}
	