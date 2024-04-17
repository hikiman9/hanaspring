<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="<c:url value="/css/admin/admin.css"/> ">

<!-- 메인 -->
<!-- COMMON -->

<div class="commonSection1">
<div class="commonContent1">
  <img src="<c:url value="/img/member/sub-visual01.jpg"/> "
	  style="width: 100%; height: 100%;">
  <div class="commonContent2 text-center">
	<div>
	  <h3>관리자페이지</h3>
	</div>
	<div>
	  <p><img src="<c:url value="/img/icon-home.png"/> "> > 관리자페이지</p>
	</div>
  </div>
</div>
</div>

<div id="adminMain">
<!-- 사이드메뉴 -->
<div id="adminSide">
  <ul>
	  <li><a href="<c:url value="/admin/member"/> ">회원 관리</a></li>
	  <li><a href="<c:url value="admin/notices"/> " class="adminSideActive">공지사항 관리</a></li>

  </ul>
</div>
<!-- 메인 -->
<div id="adminSection">
	<div class="adminDiv">
		<h3>공지사항 관리</h3>
	</div>
	<div class="noticeWriteTitle adminDiv2">
	<label style="width: 100px;">타이틀</label>
	<input type="text" name="noticeTitle" id="noticeTitle" value="">
	</div>
	<div class="adminDiv2">
	  <textarea rows="5" cols="50" id="editor4" name="editor4">1234</textarea>

	</div>
	<div class="noticeWriteBtns adminDiv2">
	  <input type="submit" value="등록">
	  <input type="button" onclick="history.back()" value="취소">
	</div>

</div>
</div>
