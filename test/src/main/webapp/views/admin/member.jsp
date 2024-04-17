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
	  <li><a href="<c:url value="/admin/member"/> " class="adminSideActive">회원 관리</a></li>
	  <li><a href="<c:url value="/admin/notices"/> ">공지사항 관리</a></li>
  </ul>
</div>
<!-- 메인 -->
<div id="adminSection">
	<div class="adminDiv">
		<h3>회원관리</h3>
	</div>
	<div class="adminDiv">
		검색 옵션
		<select name="search_select" id="search_select">
	  <option value="all" selected>전체</option>
	  <option value="id">아이디</option>
	  <option value="name">성명</option>
	  <option value="email">이메일</option>
	  <option value="phone">핸드폰</option>
	  <option value="address">주소</option>
	</select>
	<input type="text" name="search_keyword" id="search_keyword" value="">
	<input type="image" src="<c:url value="/img/community/search.gif"/> ">
	</div>
	<div class="adminDiv">
	  정렬
	  <select class="size" name="order_select" id="order_select">
	  <option value="id_asc" selected>아이디 오름차순</option>
	  <option value="id_desc">아이디 내림차순</option>
	  <option value="join_date_asc">가입일 오름차순</option>
	  <option value="join_date_desc">가입일 내림차순</option>
	</select>
	</div>
	<div class="adminDiv2" id="tableTitle">
	  <div>회원목록 1건</div>
	  <div>한페이지 행수
		  <select class="size" name="page_select" id="page_select">
		  <option value="page10" selected>5개만 보기</option>
		  <option value="page10">10개만 보기</option>
		</select>
	  </div>
	</div>
	<div class="">
		<table class="adminTable">
		  <thead>
			<tr>
				<th>아이디</th>
				<th>성명</th>
				<th>이메일</th>
				<th>생일</th>
				<th>가입일</th>
			</tr>
		  </thead>
		  <tbody>

				<tr>
					<td>hong</td>
					<td>홍길동</td>
					<td>test@gmail.com</td>
					<td>2000-01-01</td>
					<td>2024-04-09</td>
				</tr>


		  </tbody>
		</table>
	</div>


</div>
</div>