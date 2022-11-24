/**
 * 
 */
 
 function joinChk() {

	var form = document.join
	var pass = form.password.value
	
	if (form.id.value == "") {
		
		alert("아이디를 입력해주세요")
		form.id.focus();
		return false;
		
	}else if(!(form.id.value.length >= 2 && form.id.value.length <= 20)){
		
		alert("아이이디는 2~20자 이내로 입력해주세요")
		form.id.focus();
		return false;
		
	}else if(!(/^[a-zA-Z]*$/i.test(form.id.value))){
		
		alert("아이디는 영문만 가능합니다")
		form.id.focus();
		return false;	
		
	}else if(form.password.value == ""){
		
		alert("비밀번호를 입력해주세요")
		form.password.focus();
		return false;
		
	}else if(!(form.password.value.length >= 5 && form.password.value.length <= 20)){
		
		alert("비밀번호는 5~20자 이내로 입력 가능합니다")
		form.password.focus();
		return false;
		
	}else if(form.passwordChk.value != pass){
		
		alert("비밀번호를 동일하게 입력해주세요")
		form.passwordChk.focus();
		return false;
		
	}else if(form.email.value == ""){
		
		alert("이메일을 입력해주세요")
		form.email.focus();
		return false;
		
	}else if(!(form.email.value.length <= 50)){
		
		alert("이메일은 50자 이내로 입력 가능합니다")
		form.email.focus();
		return false;
		
	}else if(form.phone.value == ""){
		
		alert("핸드폰 번호를 입력해주세요")
		form.phone.focus();
		return false;
		
	}else if(!(form.phone.value.length <= 20)){
		
		alert("핸드폰 번호는 20자 이내로 입력 가능합니다")
		form.phone.focus();
		return false;
		
	}else if(form.age.value == ""){
		
		alert("나이를 입력해주세요")
		form.age.focus();
		return false;
		
	}else if(!(form.age.value.length <= 3)){
	
		alert("나이는 2자 이내로 입력 가능합니다")
		form.age.focus();
		return false;
	
	}else if(!(/^[0-9]*$/i.test(form.age.value))){
	
		alert("나이는 숫자만 입력 가능합니다")
		form.age.focus();
		return false;
		
	}
	
}