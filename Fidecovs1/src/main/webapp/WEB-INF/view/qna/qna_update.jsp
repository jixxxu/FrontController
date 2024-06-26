<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="board">
  <div class="container">
   <div class="row">
    <div class="col-md-12">
     <div class="card">
      <div class="card-header">
       <h3 class="text-muted">
        <i class="fas fa-edit mr-sm-1"></i>
        글 수정
       </h3>
      </div>
      <div class="card-body">
       <form action="./QnaUpdate.qb" method="post" id="checkForm" >
        <fieldset>
       
         
           <input type="hidden" name="num" value="${qnaDTO.num}">
           <input type="hidden" name="qna_id" value="${qnaDTO.qna_id}">
           <div class="form-group row">
            <label for="qna_title" class="col-2 col-form-label pr-0">
             <i class="fas fa-pen-alt mr-sm-1"></i>
             제목
            </label>
            <div class="col-7 pl-0">
             <input type="text" name="qna_title" id="qna_title" class="form-control" value="${qnaDTO.qna_title}">
            </div>
           </div>
           <div class="form-group row">
            <label for="qna_content" class="col-2 col-form-label pr-0">
             <i class="fas fa-edit mr-sm-1"></i>
             내용
            </label>
            <div class="col-10 pl-0">
             <textarea name="qna_content" id="qna_content" class="form-control ckeditor">${qnaDTO.qna_content}</textarea>
            </div>
           </div>        
                 
         <nav class="navbar justify-content-end">
          <button type="submit" class="btn btn-outline-primary mr-sm-1" >
           <i class="fas fa-save mr-sm-1"></i>
           글 저장
          </button>
          <button type="reset" id="clear" class="btn btn-outline-warning mr-sm-1">
           <i class="fas fa-share-square mr-sm-1"></i>
           글 취소
          </button>
          <button type="button" class="btn btn-outline-success mr-sm-1" onclick="location.href='./QnaSelect.qb'">
           <i class="fas fa-file-alt mr-sm-1"></i>
           글 목록
          </button>
         </nav>
        </fieldset>
       </form>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>
</body>
</html>