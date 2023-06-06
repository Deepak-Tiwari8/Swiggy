var obj = new dataManipilation();
function dataManipilation() 
{
	
	this.ajaxEmail = ajaxEmail;
	function ajaxEmail() 
	{
		$.post("ajax/ajax.jsp", 
			{
			requestIdentifier : "1",
			emailId : $("#user_email").val(),
		    },
		function(data) 
		{
			$("#user_email_address").text(data);
		});
	}
	this.ajaxPhone = ajaxPhone;
	function ajaxPhone()
	{
		$.post("ajax/controllerAjax.jsp", 
		{
			idendity : "2",
			ajaxphone : $("#user_phoneNo").val(),
		}, 
		function(data) 
		{
			$("#user_phone_no").text(data);
		});
	}
	
	this.LoginOn = LoginOn;
	function LoginOn() 
	{
		$("#overlay").show();
		$("#SignupOrLogin").show();
	}
	
	this.LoginOff = LoginOff;
	function LoginOff() 
	{
		$("#overlay").hide();
		$("#SignupOrLogin").hide();
		$("#Username_Id").text("");
		$("#password_Id").text("");
		$("#reset")[0].reset();
	}

	
	this.registerOpened = registerOpened;
	function registerOpened() 
	{
		$("#overlay").show();
		$("#register").show();
	}

	this.registerClosed = registerClosed;
	function registerClosed()
	{
		$("#overlay").hide();
		$("#register").hide();
		$("#User_Name").text("");
		$("#user_email_address").text("");
		$("#user_phone_no").text("");
		$("#address").text("");
		$("#ZipCode").text("");
		$("#password_user").text("");
		$("#confirm_password").text("");
		$("#onSub")[0].reset();
	}

	 this.resetSign = resetSign;
	 function resetSign()
	 {
	 var user_name = $("#user_name").val();
	 var user_email = $("#user_email").val();
	 var user_phoneNo = $("#user_phoneNo").val();
	 var user_address = $("#address").val();
	 var user_zipcode = $("#ZipCode").val();
	 var user_password = $("#user_password").val();
	 var Confirmpassword = $("#Confirmpassword").val();
	 $("#User_Name").text("");
	 $("#user_email_address").text("");
	 $("#user_phone_no").text("");
	 $("#user_address_err").text("");
	 $("#user_zipcode_err").text("");
	 $("#password_user").text("");
	 $("#confirm_password").text("");
	 }
	
	 this.resetLogin = resetLogin;
	 function resetLogin()
	 {
	 var username = $("#email1").val();
	 var password = $("#passWord1").val();
	 $("#Username_Id").text("");
	 $("#password_Id").text("");
	 }
	
		
	 this.LoginHardCodedValidation = LoginHardCodedValidation;
	 var emailBool = false;
	 var passBool = false;
	 function LoginHardCodedValidation()
	 {
	 var email1 = $("#email1").val();
	 var password1 = $("#passWord1").val();
	 if (emailBool == false)
	 {
	 userNameValidation();
	 }
	 else if (passBool == false)
	 {
	 PasswordValidation();
	 }
	 if (emailBool == true && passBool == true)
	 {
	 $("#reset").submit();
	 }
	 }
	
	 this.userNameValidation = userNameValidation;
	 function userNameValidation()
	 {
	 var email1 = $("#email1").val();
	 if (email1 == "")
	 {
	 $("#Username_Id").text("Required");
	 $("#Username_Id").css({"color" : "red"});
	 emailBool = false;
	 }
	 else
	 {
	 $("#Username_Id").text("Valid Email");
	 $("#Username_Id").css({"color" : "green"});
	 emailBool = true;
	 }
	 }
	
	 this.PasswordValidation = PasswordValidation;
	 function PasswordValidation()
	 {
	 var password1 = $("#passWord1").val();
	 if (password1 == "")
	 {
	 $("#password_Id").text("Required");
	 $("#password_Id").css({"color" : "red"});
	 passBool = false;
	 }
	 else
	 {
	 $("#password_Id").text("Valid Password");
	 $("#password_Id").css({"color" : "green"});
	 passBool = true;
	 }
	 }
	
	 this.onlyCharacterINputNameField = onlyCharacterINputNameField;
	
	 function onlyCharacterINputNameField() {
	 var user_name = $("#user_name");
	 regex = /[0-9!@#$%^&*()_+,.<>;:]/g;
	 user_name.val(user_name.val().replace(regex, ""));
	 }
	
	 this.onlyNumberINputPhone = onlyNumberINputPhone;
	
	 function onlyNumberINputPhone() {
	 var user_phoneNo = $("#user_phoneNo");
	 regex = /[a-zA-Z!@#$%^&*()]/g;
	 user_phoneNo.val(user_phoneNo.val().replace(regex, ""));
	 }
	
	 this.checkName = checkName;
	
	 function checkName() 
	 {
	 var user_name = $("#user_name").val();
	 var p1 = /^[a-zA-Z]{2,16}$/;
	 if (user_name == "") {
	 $("#first_name").text("");
	 }
	 else if (p1.test(user_name)) 
	 {
	 $("#User_Name").text("");
	 $("#User_Name").css({
	 "color" : "green"
	 });
	 return true;
	 } 
	 else
	 {
	 $("#User_Name").text("InValid Name");
	 $("#User_Name").css({
	 "color" : "red"
	 });
	 }
	 }
	
	 this.checkEmail = checkEmail;
	 function checkEmail() 
	 {
	 var email = $("#user_email").val();
	 var p3 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;
	 if (email == "") 
	 {
	 $("#user_email_address").text("");
	 }
	 else if (p3.test(email))
	 {
	 $("#user_email_address").text("");
	 $("#user_email_address").css({
	 "color" : "green"
	 });
	 return true;
	 }
	 else 
	 {
	 $("#user_email_address").text("InValid Email address")
	 $("#user_email_address").css({
	 "color" : "red"
	 });
	 }
	 }
	
	 this.checkPhone = checkPhone;
	
	 function checkPhone() 
	 {
	 var phoneNo = $("#user_phoneNo").val();
	 phoneNo = Number(phoneNo);
	 var p6 = /^[789]{1,3}\d{9}$/g;
	 if (phoneNo == "") 
	 {
	 $("#user_phone_no").text("");
	 } 
	 else if (p6.test(phoneNo)) 
	 {
	 $("#user_phone_no").text("");
	 $("#user_phone_no").css({
	 "color" : "red"
	 });
	 return true;
	 }
	 else 
	 {
	 $("#user_phone_no").text("InValid Phone");
	 $("#user_phone_no").css({
	 "color" : "red"
	 });
	 }
	 }
	
	
	 
	 this.checkPassword = checkPassword;
	
	 function checkPassword()
	 {
	 var password = $("#user_password").val();
	 var p7 = /[A-Za-z]+[_@$#][0-9]+$/g;
	 if (password == "") {
	 $("#password_user").text("");
	 }
	 else if (p7.test(password)) 
	 {
	 $("#password_user").text("");
	 $("#password_user").css({
	 "color" : "green"
	 });
	 return true;
	 } 
	 else 
	 {
	 $("#password_user").text("InValid Password");
	 $("#password_user").css({
	 "color" : "red"
	 });
	 }
	 }
	
	 this.checkConfirmPassword = checkConfirmPassword;
	
	 function checkConfirmPassword() 
	 {
	 var confirmpassword = $("#Confirmpassword").val();
	 var p8 = /[A-Za-z]+[_@$#][0-9]+$/g;
	 if (Confirmpassword == "")
	 {
	 $("#confirm_password").text("");
	 } 
	 else if (p8.test(confirmpassword)) 
	 {
	 $("#confirm_password").text("Match Password");
	 $("#confirm_password").css({
	 "color" : "green"
	 });
	 return true;
	 }
	 }
	
	 // Submit Data function
	 this.submitdata = submitdata;
	
	 function submitdata() 
	 {
		 var user_name = $("#user_name").val();
		 var user_email = $("#user_email").val();
		 var user_phoneNo = $("#user_phoneNo").val();
		 var user_address = $("#address").val();
		 var user_zipcode = $("#ZipCode").val();
		 var user_password = $("#user_password").val();
		 var Confirmpassword = $("#Confirmpassword").val();
	 }
	
	 // ON-Submit form Valid
	 this.onSubmitValid = onSubmitValid;
	
	 function onSubmitValid() 
	 {
	 checkName();
	 checkEmail();
	 checkPhone();
	 checkPassword();
	 checkConfirmPassword();
	 if (checkName() == true && checkEmail() == true && checkPhone() == true && checkPassword() == true && checkConfirmPassword() == true) 
	 {
	  $("#onSub").submit();
	 }
	 }
	
	 this.checkAllField = checkAllField;
	
	 function checkAllField() 
	 {
		 var user_name = $("#user_name").val();
		 var user_email = $("#user_email").val();
		 var user_phoneNo = $("#user_phoneNo").val();
		 var user_address = $("#address").val();
		 var user_zipcode = $("#ZipCode").val();
		 var user_password = $("#user_password").val();
		 var Confirmpassword = $("#Confirmpassword").val();
	
	 if (user_name == "") 
	 {
	 $("#User_Name").text("Required");
	 $("#User_Name").css({
	 "color" : "red"
	 });
	 }
	 else if (user_email == "") 
	 {
	 $("#user_email_address").text("Required");
	 $("#user_email_address").css({
	 "color" : "red"
	 });
	 }
	 else if (user_phoneNo == "") 
	 {
	 $("#user_phone_no").text("Required");
	 $("#user_phone_no").css({
	 "color" : "red"
	 });
	 }
	 else if (user_address == "") 
	 {
	 $("#user_address_err").text("Required");
	 $("#user_address_err").css({
	 "color" : "red"
	 });
	 } 
	 else if (user_zipcode == "") 
	 {
	 $("#user_zipcode_err").text("Required");
	 $("#user_zipcode_err").css({
	 "color" : "red"
	 });
	 } 
	 else if (user_password == "") 
	 {
	 $("#password_user").text("Required");
	 $("#password_user").css({
	 "color" : "red"
	 });
	 }
	 else if (Confirmpassword == "") {
	 $("#confirm_password").text("Required");
	 $("#confirm_password").css({"color" : "red"});
	}
	}	 
	
}

