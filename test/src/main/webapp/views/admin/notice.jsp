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
    <div class="noticeViewTitle adminDiv2">
      <span>[일반]타이틀1</span>
      <span>
        <span>글쓴이:admin</span>
        <span>글번호:5</span>
      </span>
    </div>
    <div class="adminDiv2">
      <div class="noticeViewContent">
        <textarea rows="5" cols="50" id="editor4" name="editor4">
                    내용입니다.1</textarea
        >
      </div>
    </div>
    <div class="noticeViewBtns adminDiv2">
      <div>
        <a href="/admin_notice_modify?notice_idx=1">수정</a>
        <a href="/admin_notice_delete?notice_idx=1">삭제</a>
      </div>
      <div>
        <a href="<c:url value="/admin/notices"/> ">목록</a>
      </div>
    </div>
  </div>
</div>

