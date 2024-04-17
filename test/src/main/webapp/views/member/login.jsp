<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


  <link rel="stylesheet" href="<c:url value="/css/member/login.css"/> ">
  <!-- 메인 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="<c:url value="/img/member/sub-visual01.jpg"/> "
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>MEMBER</h3>
        </div>
        <div>
          <p><img src="<c:url value="/img/icon-home.png"/> "> > 로그인</p>
        </div>
      </div>
    </div>
  </div>

  <!-- 로그인 -->
  <div class="loginForm container text-center">
    <div class="loginSection1">
      <div><h3>로그인</h3></div>
      <div><p>The design and maintenance are excellent.</p></div>
    </div>
    <div class="loginMain">
      <table class="main1">
        <tr>
          <td>
            아이디 <br>
            비밀번호
          </td>
          <td>
            <input type="text" name="loginID"> <br>
            <input type="password" name="loginPW">
          </td>
          <td>
            <input class="loginImg" type="image" src="<c:url value="/img/member/btn_login.gif"/> ">
          </td>
        </tr>
      </table>
      <div class="loginSection2">
        <table class="main2">
          <tr>
            <td>-아이디를 잊으셨나요?</td>
            <td>
              <a href="<c:url value="/member/idFind"/> ">
                <input type="image" src="<c:url value="/img/member/btn_id_find.gif"/>" >
              </a>
            </td>
          </tr>
          <tr>
            <td>-비밀번호를 잊으셨나요?</td>
            <td>
              <a href="<c:url value="/member/passwordFind"/> ">
                <input type="image" src="<c:url value="/img/member/btn_pw_find.gif"/>" >
              </a>
            </td>
          </tr>
        </table>
      </div>

    </div>
  </div>