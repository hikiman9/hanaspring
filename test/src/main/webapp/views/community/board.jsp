<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


  <link rel="stylesheet" href="<c:url value="/css/community/board.css"/> ">

  <!-- 메인 -->
  <!-- 공지사항 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="<c:url value="/img/member/sub-visual02.jpg"/> "
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>COMMUNITY</h3>
        </div>
        <div>
          <p><img src="<c:url value="/img/icon-home.png"/> "> > 커뮤니티 > 공지사항</p>
        </div>
      </div>
    </div>
  </div>
  <!-- COMMON - 드랍다운 -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="<c:url value="/"/> "><button class="homeBtn">H</button></a>
      <ul class="navbar-nav mr-auto navbar-nav-scroll" 
          style="max-height: 100px;">
        
        <li class="nav-item dropdown dropdownHide">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown1" role="button"
            data-toggle="dropdown" aria-expanded="false">
            커뮤니티
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="#">회사소개</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">사업분야</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">제품안내</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">커뮤니티</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">고객지원</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown2" role="button"
             data-toggle="dropdown" aria-expanded="false">
              공지사항
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="<c:url value="/community/board"/> ">공지사항</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">홍보자료</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">채용안내</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <!-- 공지사항 -->
  <div class="communitySection2 container text-center">
    <div>
      <div>공지사항</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="Notice">
      <table>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성일</th>
        </tr>
        <tr>
          <td>5</td>
          <td>새로운 공지사항을 알려드립니다.</td>
          <td>2019-06-19</td>
        </tr>
      </table>
    </div>
  </div>
  

  <!-- search bar -->
  <div class="search container">
    <table>
      <tr>
        <td>
          <select name="내용" id="">
            <option value="">제목</option>
            <option value="">내용</option>
            <option value="">작성자</option>
          </select>
        </td>
        <td>
          <input type="text">
        </td>
        <td>
          <input type="image" src="<c:url value="/img/community/search.gif"/> ">
        </td>
      </tr>
    </table>
  </div>
