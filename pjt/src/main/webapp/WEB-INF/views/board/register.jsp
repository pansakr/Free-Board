<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<body>

<div style="margin-top:120px"class="row">
   <div class="col-lg-3 ">
   </div>
	  
   <div class="col-lg-6">
      <h1 class="page-header">글쓰기</h1>
   </div>
</div>

<div class="row">
	
	<div class="col-lg-3">
	</div>
	
	<div class="col-lg-6">
		<div class="panel panel-default">
		
			<div class="panel-body">
        
              <form role="form" action="/board/register" method="post">

                 <input type="hidden" name="writer_fk" value="${member.id }">
				
				  <div class="form-group">
					  <label>제목</label>
					  <input class="form-control" name='title'>
				  </div>
				
				  <div class="form-group">
					  <label>내용</label>
					  <textarea class="form-control" rows="3" name='content'></textarea>
				  </div>
				
				  <button class="btn btn-default">등록</button>
				  <button type="reset" class="btn btn-default">리셋</button>
				  <button type="button" class="btn btn-decault" onclick="location.href='/board/list'">목록</button>
               </form>

		   	</div>
        </div>
    </div>
</div>

</body>
</html>