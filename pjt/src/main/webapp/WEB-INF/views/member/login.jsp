<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>

<body>

<c:if test="${msg == 'fail' }">
  
  <script type="text/javascript">
   
  var join = alert("아이디나 비밀번호가 틀렸습니다.")
    if(join == true){
    	location = "/member/login";
    }
  
  </script>
  
</c:if>

 <div style="margin-top:120px" class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    
                    <div class="panel-body">
                        
                        <form name="login" role="form" action="/member/login" method="post" onsubmit="return loginChk()">
                            
                            <fieldset>
                                
                                <div class="form-group">
                                    <input class="form-control" placeholder="아이디" name="id" autofocus>
                                </div>
                                
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호" name="password" type="password">
                                </div>                           
                                
                                <button class="btn btn-lg btn-success btn-block">로그인</button>
                           
                            </fieldset>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<script src="/resources/js/member/login.js"></script>    

</body>
</html>