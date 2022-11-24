/**
 * 
 */
 
function loginChk(){
  
  var form = document.login
  
  if(form.id.value == ""){
    
    alert("아이디를 입력해주세요")
    form.id.focus();
    return false;
    
  }else if(form.password.value == ""){
   
    alert("비밀번호를 입력해주세요")
    form.id.focus();
    return false;
    
  }
  
}