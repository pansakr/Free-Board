<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<body>
  
<div style="margin-top:120px"class="row">
   <div class="col-lg-4">
   </div>
   
   <div class="col-lg-4">
      <h1 class="page-header">회원가입</h1>
   </div>
</div>

  <div class="row">
	
	<div class="col-lg-4"></div>
	
	<div class="col-lg-4">
		<div class="panel panel-default">
		
			<div class="panel-body">
        
              <form name="join" role="form" action="/member/join" method="post" onsubmit="return joinChk()">

		        <div class="form-group">
					<input class="form-control" name='id'  placeholder="아이디">
				</div>
				
				<div class="form-group">
					<input class="form-control" name='password' type="password" placeholder="비밀번호">
				</div>
				
				<div class="form-group">
					<input class="form-control" name='passwordChk' type="password" placeholder="비밀번호확인">
				</div>
				
				<div class="form-group">
					<input class="form-control"  name='email' type="email" placeholder="이메일">
				</div>
				
				<div class="form-group">
					<input class="form-control" name='phone' placeholder="핸드폰번호">
				</div>
				
				<div class="form-group">
					<input class="form-control" name='age' placeholder="나이">
				</div>
				
				<div class="form-group">
				  
				   <label>성별</label>
				      <div class="radio">
				       
				        <label>
                          <input type="radio" name="gender" value="남자" checked>남자
                        </label>
                       
                     
                      </div>
                     
                      <div class="radio">
                       
                        <label>
                          <input type="radio" name="gender" value="여자">여자
                        </label>
                     
                      </div>
				 </div>
				
				 <button class="btn btn-default">회원가입</button>
				 <button type="reset" class="btn btn-default">리셋</button>
				 <button type="button" class="btn btn-decault" onclick="location.href='/board/list'">목록</button>
              </form>

			</div>
		</div>
	</div>
</div>

<script src="/resources/js/member/join.js"></script>

</body>
</html>