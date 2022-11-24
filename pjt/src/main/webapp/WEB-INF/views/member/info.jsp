<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>

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
        
               <div class="form-group">
					<label>아이디</label> 
					<input class="form-control" name='id' value='<c:out value="${member.id }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>이메일</label> 
					<input class="form-control" name='email' value='<c:out value="${member.email }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>핸드폰 번호</label> 
					<input class="form-control" name='phone' value='<c:out value="${member.phone }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>나이</label>
					<input class="form-control" name='age' value='<c:out value="${member.age }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>성별</label> 
					<input class="form-control" name='gender' value='<c:out value="${member.gender }"/>' readonly="readonly">
				</div>
				
				<button type="button" class="btn btn-default" 
				        onclick="location.href='/member/modify?id=<c:out value="${member.id}"/>'">수정/회원탈퇴</button>
				<button type="button" class="btn btn-decault" onclick="location.href='/board/list'">목록</button>
            
           </div>
		</div>
    </div>
</div>

</body>
</html>