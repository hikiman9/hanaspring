<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="<c:url value="/css/admin/admin.css"/> ">

<!-- 메인 -->
<!-- COMMON -->

<div class="commonSection1">
  <div class="commonContent1">
    <img
      src="<c:url value="/img/member/sub-visual01.jpg"/> "
      style="width: 100%; height: 100%"
    />
    <div class="commonContent2 text-center">
      <div>
        <h3>관리자페이지</h3>
      </div>
      <div>
        <p><img src="<c:url value="/img/icon-home.png"/> " /> > 관리자페이지</p>
      </div>
    </div>
  </div>
</div>

<div id="adminMain">
  <!-- 사이드메뉴 -->
  <div id="adminSide">
    <ul>
      <li><a href="<c:url value="/admin/member"/> ">회원 관리</a></li>
      <li>
        <a href="<c:url value="/admin/notices"/> " class="adminSideActive">공지사항 관리</a>
      </li>

    </ul>
  </div>
  <!-- 메인 -->
  <div id="adminSection">
    <div class="adminDiv">
      <h3>공지사항 관리</h3>
    </div>
    <div class="adminDiv">
      검색 옵션
      <select name="search_select" id="search_select">
        <option value="all" selected>전체</option>
        <option value="title">제목</option>
        <option value="content">내용</option>
        <option value="id">작성자아이디</option>
      </select>
      <input
        type="text"
        name="search_keyword"
        id="search_keyword"
        value=""
      />
      <input type="image" src="<c:url value="/img/community/search.gif"/> " />
    </div>
    <div class="adminDiv">
      정렬
      <select class="size" name="order_select" id="order_select">
        <option value="id_asc" selected>아이디 오름차순</option>
        <option value="id_desc">아이디 내림차순</option>
        <option value="reg_date_asc">등록일 오름차순</option>
        <option value="reg_date_desc">등록일 내림차순</option>
      </select>
    </div>
    <div class="adminDiv2" id="tableTitle">
      <div>목록 10건</div>
      <div>
        한페이지 행수
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
            <th>글번호</th>
            <th>제목</th>
            <th>글쓴이</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
          <tr
            onclick="location.href='notice.jsp';"
            style="cursor: pointer"
          >
            <td>1</td>
            <td>타이틀1</td>
            <td>admin</td>
            <td>2024-04-09</td>
          </tr>
          <tr
            onclick="location.href='notice.jsp';"
            style="cursor: pointer"
          >
            <td>2</td>
            <td>타이틀1</td>
            <td>admin</td>
            <td>2024-04-08</td>
          </tr>
          <tr
            onclick="location.href='notice.jsp';"
            style="cursor: pointer"
          >
            <td>3</td>
            <td>타이틀1</td>
            <td>admin</td>
            <td>2024-04-07</td>
          </tr>
          <tr
            onclick="location.href='notice.jsp';"
            style="cursor: pointer"
          >
            <td>4</td>
            <td>타이틀1</td>
            <td>admin</td>
            <td>2024-04-07</td>
          </tr>
          <tr
            onclick="location.href='notice.jsp';"
            style="cursor: pointer"
          >
            <td>5</td>
            <td>타이틀1</td>
            <td>admin</td>
            <td>2024-04-05</td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="pageNav adminDiv2">

      <div><a href="<c:url value="/admin/write"/> ">공지글 쓰기</a></div>
    </div>
  </div>
</div>