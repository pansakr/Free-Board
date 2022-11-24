<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>
<body>
 
<div style="margin-top:80px" class="row">
   <div class="col-lg-2">
   </div>
   <div class="col-lg-8">
      <h1 class="page-header">게시글 조회</h1>
   </div>
</div>

<div class="row">
	
	<div class="col-lg-2">
	</div>
	
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">a</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
        

				<div class="form-group">
					<label>#</label> 
					<input class="form-control" name='num'
						   value='<c:out value="${board.num }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>작성자</label> 
					<input class="form-control" name='writer_fk'
						   value='<c:out value="${board.writer_fk }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>제목</label> 
					<input class="form-control" name='title'
						   value='<c:out value="${board.title }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="3" name='content'
						      readonly="readonly"><c:out value="${board.content }" /></textarea>
				</div>
				
				<div class="form-group">
					<label>조회수</label> 
					<input class="form-control" name='read_count'
						   value='<c:out value="${board.read_count }"/>' readonly="readonly">
				</div>
				
				<c:if test="${member != null && board.writer_fk eq member.id }">
				  
				  <button class="btn btn-default" onclick="location.href=
				                '/board/modify?num=<c:out value="${board.num }"/>&pageNum=<c:out value="${pageInfo.pageNum}"/>'">수정/삭제</button>
				
				</c:if>
				
				<button class="btn btn-decault" onclick="location.href=
				'/board/list?pageNum=<c:out value="${pageInfo.pageNum}"/>&type=<c:out value="${pageInfo.type}"/>&keyword=<c:out value="${pageInfo.keyword}"/>'">목록</button>
            
            </div>
		</div>
	</div>
</div>

</body>
</html>