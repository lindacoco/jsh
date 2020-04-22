<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
 table {
    border-collapse: collapse;
    width: 600px;
    margin: 50px;
  }
  
  th, td{
    border: 1px solid black;
  }
  #container{
     width: 800px;
     margin: 0 auto;
  }
  
  label{
    width: 150px;
  }

</style>
<h1>
	프로젝트 등록 페이지
</h1>
<p><a href="${pageContext.request.contextPath }/project/list">[목록으로]</a></p>
<div id="container">
<form action="update" method="post">
   <input type="hidden" name="no" value="${project.no }">
   <p>
     <label>프로젝트 이름</label>
     <input type="text" name="name" value="${project.name }">
   </p>
   <p>
     <label>프로젝트 내용</label>
     <textarea rows="10" cols="50" name="content">${project.content }</textarea>
   </p>
   <p>
     <label>시작날짜</label>
     <input type="text" name="regDate" value='<fmt:formatDate value="${project.regDate }" pattern="yyyy-MM-dd"/>'>
   </p>
   <p>
     <label>마감날짜</label>
     <input type="test" name="endDate" value='<fmt:formatDate value="${project.endDate }" pattern="yyyy-MM-dd"/>'>
   </p>
   <p>
     <label>상태</label>
     <input type="text" name="progress" value="${project.progress }">
   </p>
   <p>
     <input type="submit" value="저장">
     <input type="submit" value="취소">
   </p>

</form>
</div>
</section>

<%@ include file="../include/footer.jsp" %>