<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


  <link rel="stylesheet" href="<c:url value="/css/customer/customer01.css"/> ">

  <!-- 메인 -->
  <!-- 1:1문의 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="<c:url value="/img/member/sub-visual02.jpg"/> "
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>CUSTOMER</h3>
        </div>
        <div>
          <p><img src="<c:url value="/img/icon-home.png"/> "> > 고객지원 > 1:1문의</p>
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
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" 
            data-toggle="dropdown" aria-expanded="false">
            고객지원
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
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" 
              role="button" data-toggle="dropdown" aria-expanded="false">
              1:1문의
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="<c:url value="/customer/one2one"/> ">1:1문의</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="<c:url value="/customer/qnaboard"/> ">묻고답하기</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">FAQ</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <!-- 1:1문의 -->
  <div class="communitySection2 container text-center">
    <div>
      <div>1:1문의</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="question">
      <form action="" name="questionForm">
        <table>
          <tr>
            <td>구분</td>
            <td><select name="cate">
                  <option value="1">로그인</option>
                  <option value="2">회원가입</option>
                  <option value="3">이용안내</option>
                </select>
            </td>
          </tr>
          <tr>
            <td>성명</td>
            <td><input type="text" class="inputStyle1" name="name"></td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td><input type="text" class="inputStyle1" name="tel"></td>
          </tr>
          <tr>
            <td>이메일</td>
            <td><input type="text" class="inputStyle2" name="email"></td>
          </tr>
          <tr>
            <td>주소</td>
            <td><input type="text" class="inputStyle2" name="address"></td>
          </tr>
          <tr>
            <td>제목</td>
            <td><input type="text" class="inputStyle2" name="title"></td>
          </tr>
          <tr>
            <td>설명</td>
            <td><textarea name="desc" rows="10" style="width: 90%;"></textarea></td>
          </tr>
        </table>
      </form>
    </div>
    <div class="btn">
      <input type="image" src="<c:url value="/img/customer/btn_confirm.gif"/> " onclick="submit()">
      <input type="image" src="<c:url value="/img/customer/btn_cancel.gif"/> ">
    </div>
  </div>