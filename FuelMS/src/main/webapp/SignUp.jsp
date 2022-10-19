<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="Css/SignUp.css">
<title>Registration Page</title>
</head>
<body>
	<!-- Registration Form -->
    <div class="container">
        <div class="forms">
        	  <div class="form signup">
        	  <span class="title">Register Yourself</span>
	<form action="#" name="myform" onsubmit="validateform()">
		<div class="input-field">
			<input type="text" placeholder="Enter Your First Name" id="f1name"
				name="fname" > <i class="uil uil-user"></i> <span
				id="firstname" class="text-danger "></span>
		</div>
		<div class="input-field">
			<input type="text" placeholder="Enter Your Last Name" 
				name="lname"> <i class="uil uil-user"></i>
				<span
				id="lastname" class="text-danger "></span>
		</div>
		<div class="input-field">
			<input type="email" placeholder="Enter your email" name="email"> <i
				class="uil uil-envelope icon"></i>
		</div>
		<div class="input-field">
			<input type="number" placeholder="Contact Number"  name="number"> <i
				class="fa fa-mobile-phone"></i>
          </div>
			<div class="input-field button">
				<!-- <input type="button" value="Signup"> -->
				<input type="submit" value="Signup">
				<!-- register -->
				<!-- onClick='validation()' -->
			</div>
	</form>

	<div class="login-signup">
		<span class="text">Already a member? <a href="SignIn.jsp">Login
				Now</a>
		</span>
	</div>
	            </div>
        </div>
    </div>
	
	<script type="text/javascript">
		function validateform() {
			var fname = document.myform.fname.value;
			var lname = document.myform.lname.value;
 			var email = document.myform.email.value;  
			var emailRegex = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/ ;  
 			 var number = document.myform.number.value; 
			/*  var regx= (\+91)?(-)?\s*?(91)?\s*?([6-9]{1}\d{2})-?\s*?(\d{3})-?\s*?(\d{4}) ;    */  
			/*  var phoneregx= ((\+*)((0[ -]+)*|(91 )*)(\d{12}+|\d{10}+))|\d{5}([- ]*)\d{6} ;  */
			var phoneregx= /^[6-9]\d{9}$/gi;
			 
			if (fname == null || fname == "") {
				alert("First Name can not be blank");
				return false;
				
			} 
			else  if (lname == null || lname == "") {
				alert("Last Name can not be blank");
				return false;
				
			}
 		else	 if(email==null || email==""){
				alert("Email id can not be blank");
				return false;
			}		
			 
		else	 if (!email.value.match(emailRegex)) {
			    alert("Invalid email address");
		    	return false;
			  } 
			 
 		else	 if (number==null || number==""){
				alert("Contact Field can not be null");
				return false;
			  }
		else	   if (!number.value.match(phoneregx)){
					alert("Enter a valid Phone Number");
					return false; 
			}    

		}
	</script>

</body>
</html>
