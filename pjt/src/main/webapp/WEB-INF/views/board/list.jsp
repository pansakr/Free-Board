<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp" %>

<body>

<c:if test="${msg == 'join' }">
 
  <script type="text/javascript">
    
  var join = confirm("가입이 완료되었습니다. 로그인 페이지로 이동하시겠습니까?")
    if(join == true){
    	location = "/member/login";
    }
  
  </script>
  
</c:if>

  	<div id="wrapper">

		<!--	<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					
					<ul class="nav" id="side-menu">
                      <li><a href="#"><i class="fa-fw"></i>버튼추가시</a></li>
				    </ul>
				    
				</div>
			</div>   기능추가시 사용 -->
			
       <div id="page-wrapper">
		  <div class="row">
		    <div class="row">
			
			  <div class="panel-heading" align="right">
			    <c:choose>
			      
			      <c:when test="${member != null}">
			        
			        <button type="button" class="btn btn-outline btn-default " 
					        onclick="location.href='/member/logout'">로그아웃</button>
			        
			        <button type="button" class="btn btn-outline btn-default " 
			                onclick="location.href='/member/info?id=${member.id}'"><c:out value="${member.id }"/></button>
			     
			      </c:when>
			     
			      <c:when test="${empty member}">
			       
			        <button type="button" class="btn btn-outline btn-default " 
					        onclick="location.href='/member/login'">로그인</button>
					     
			        <button type="button" class="btn btn-outline btn-default " 
					        onclick="location.href='/member/join'">회원가입</button>
			      
			      </c:when>
			    </c:choose>
			  </div>
			</div>
			
			<div class="col-lg-3">
			  <h1 class="page-header">list</h1>
			</div>
			
	      </div>
			
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
				   	<div class="panel panel-default">
						
						<c:if test="${member != null}">
						  
						  <div class="panel-heading" align="right">
						    
						    <button type="button" class="btn btn-outline btn-default " 
						            onclick="location.href='/board/register'">글쓰기</button>
						     
						  </div>
						</c:if>
						
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table class="table table-striped table-bordered table-hover">
								
								<thead>
									<tr>
										<th>#</th>
										<th>작성자</th>
										<th>제목</th>
										<th>작성일</th>
										<th>조회수</th>
									</tr>
								</thead>
								
								<c:forEach items="${list }" var="v">
									<tbody>
										
										<tr class="odd gradeX">
											<td><c:out value="${v.num }"/></td>
											<td><c:out value="${v.writer_fk }"/></td>
											
											<td><a href="/board/info?num=<c:out value="${v.num }"/>&pageNum=<c:out value="${pageInfo.pageNum}"/>&type=
											<c:out value="${pageInfo.type}"/>&keyword=<c:out value="${pageInfo.keyword}"/>&modifyCheck=
											<c:out value="ok"/>"><c:out value="${v.title }"/></a></td>
											
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${v.reg_date }"/></td>
											<td><c:out value="${v.read_count }"/></td>
										</tr>
										
									</tbody>
								</c:forEach>
							</table>
	
							<div class='pull-right'>
								<ui class="pagination"> 
								
								<c:if test="${numList.prev }">
									<li class="paginate_button previous"><a
										href="/board/list?pageNum=<c:out value="${numList.startPage -1 }"/>">이전</a></li>
								</c:if> 
								
								<c:forEach var="num" begin="${numList.startPage }" end="${numList.endPage }">
									<li class="paginate_button"><a href=
									"/board/list?pageNum=<c:out value="${num }"/>&type=<c:out value="${pageInfo.type }"/>&keyword=
									<c:out value="${pageInfo.keyword}"/>"><c:out value="${num }"/></a></li>
								</c:forEach> 
								
								<c:if test="${numList.next }">
									<li class="paginate_button next"><a href="/board/list?pageNum=<c:out value="${numList.endPage +1 }"/>">다음</a></li>
								</c:if>
							</div>

							<form id='searchForm' action="/board/list" method="get">
								<select name="type">
									
									<option value="" ${pageInfo.type == null?"selected":"" }>--</option>
									<option value="T" ${pageInfo.type eq "T"?"selected":"" }>제목</option>
									<option value="C" ${pageInfo.type eq "C"?"selected":"" }>내용</option>
									<option value="W" ${pageInfo.type eq "W"?"selected":"" }>작성자</option>
									<option value="TC" ${pageInfo.type eq "TC"?"selected":"" }>제목 or 내용</option>
									<option value="TW" ${pageInfo.type eq "TW"?"selected":"" }>제목 or 작성자</option>
									<option value="TWC" ${pageInfo.type eq "TWC"?"selected":"" }>제목 or 내용 or 작성자</option>
									
								</select> 
								
								<input type="text" name="keyword" value="<c:out value="${pageInfo.keyword }"/>"> 
								<input type="hidden" name="pageNum" value="<c:out value="${pageInfo.pageNum}"/>"> 
								<input type="hidden" name="amount" value="<c:out value="${pageInfo.amount}"/>">
					
								<button class='btn btn-default'>검색</button>
								
							</form>
							<!-- /.table-responsive -->

						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	   
</body>

</html>
