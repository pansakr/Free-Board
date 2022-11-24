<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
   
<div class="row">
   <div class="col-lg-2">
   </div>
	  
	  <div class="col-lg-8">
	     <h1 class="page-header">내정보</h1>
	  </div>
</div>

<div class="row">
	
	<div class="col-lg-2">
	</div>
	
	<div class="col-lg-8">
		<div class="panel panel-default">

			<div class="panel-body">
               
               <form role="form" action="/member/modify" method="post">
               
               <div class="form-group">
					<label>아이디</label> 
					<input class="form-control" name='id' value='<c:out value="${member.id }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>비밀번호</label> 
					<input class="form-control" name='password' value='<c:out value="${member.password }"/>'>
				</div>
				
				<div class="form-group">
					<label>이메일</label> 
					<input class="form-control" name='email' value='<c:out value="${member.email }"/>'>
				</div>
				
				<div class="form-group">
					<label>핸드폰 번호</label> 
					<input class="form-control" name='phone' value='<c:out value="${member.phone }"/>'>
				</div>
				
				<div class="form-group">
					<label>나이</label>
					<input class="form-control" name='age' value='<c:out value="${member.age }"/>' >
				</div>
				
				<div class="form-group">
					<label>성별</label> 
					<input class="form-control" name='gender' value='<c:out value="${member.gender }"/>'>
				</div>
				
				<button class="btn btn-default">수정</button>
				<button type="button" class="btn btn-default" onclick="memberRemove()">탈퇴</button>
				<button type="button" class="btn btn-decault" onclick="location.href='/board/list'">목록</button>
			  </form>
            
           </div>
		</div>
	</div>
</div>

<script type="text/javascript">
  
   function memberRemove(){
	   
	   var result = confirm("회원탈퇴를 하시겠습니까?");
	   
	   if(result == true){
		   location="/member/remove?id=" + '${member.id}';
		   
	   }else{
		   return false;
	   }
   }
</script>

</body>
</html>