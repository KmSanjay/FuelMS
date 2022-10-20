<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script>
	function formValidation() {
		var firstNname = document.forms.RegForm.firstName.value;
		var lastName = document.forms.RegForm.lastName.value;
		var email = document.forms.RegForm.email.value;
		var phone = document.forms.RegForm.phone.value;
		var regEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g; //Javascript reGex for Email Validation.
		var regPhone = /^\d{10}$/; // Javascript reGex for Phone Number validation.
		var regName = /\d+$/g; // Javascript reGex for Name validation

		if (firstNname == "" || regName.test(firstNname)) {
			window.alert("Please enter your firstNname properly.");
			firstNname.focus();
			return false;
		}
		else if (lastName == "" || regName.test(lastName)) {
			window.alert("Please enter your lastName properly.");
			lastName.focus();
			return false;
		}

		else if (email == "" || !regEmail.test(email)) {
			window.alert("Please enter a valid e-mail address.");
			email.focus();
			return false;
		}
		else if (phone == "" || !regPhone.test(phone)) {
			alert("Please enter valid phone number.");
			phone.focus();
			return false;
		}
		//return true;onsubmit="return formValidation()"
	}
</script>

</head>
<body>
	<div align="center">
		<h1>Employee Register Form</h1>
		<%-- <%=request.getContextPath()%> --%>
		<form action="postRegister" name="RegForm" method="post"
			>
			<table style="with: 80%">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" /></td>
				</tr>
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="phone" /></td>
				</tr>
			</table>
			<input type="submit" value="Register" />
			<input type="reset" value="Reset" />
		</form>
	</div>
</body>
</html>