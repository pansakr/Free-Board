<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>

<body>

<div style="margin-top:120px" class="row">
   <div class="col-lg-3">
   </div>
	
   <div class="col-lg-6">
      <h1 class="page-header">수정/삭제</h1>
   </div>
</div>

<div class="row">
	
	<div class="col-lg-3">
	</div>
	
	<div class="col-lg-6">
		<div class="panel panel-default">		
			<div class="panel-body">
        
              <form role="form" action="/board/modify" method="post">
                
                <input type="hidden" name="pageNum" value="<c:out value="${pageInfo.pageNum }"/>">
                
                <input id = "num" type="hidden" name="num" value="<c:out value="${board.num }"/>">

				<div class="form-group">
					<label>제목</label> <input class="form-control" name='title'
						value='<c:out value="${board.title }"/>' >
				</div>
				
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="3" name='content'><c:out value="${board.content }" /></textarea>
				</div>
				
				<button class="btn btn-default">수정</button> 
				<button type="button" class="btn btn-default" onclick="boardRemove()">삭제</button>
				<button type="button" class="btn btn-decault" 
				        onclick="location.href='/board/list?pageNum=<c:out value="${pageInfo.pageNum}"/>'">목록</button>
            </form>

		   	</div>
		</div>
	</div>
</div>

<script type="text/javascript">
  function boardRemove(){
	  
	  var result = confirm("게시글을 삭제하시겠습니까?");
	 
	  if(result == true){
	 
		location="/board/remove?num="+ ${board.num};
		
	  }else{
		  return false;
	  }
 }
</script>

</body>
</html>