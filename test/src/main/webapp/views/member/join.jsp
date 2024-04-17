<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <link rel="stylesheet" href="<c:url value="/css/member/join.css"/> ">

  <!-- 메인 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="<c:url value="/img/member/sub-visual02.jpg"/> "
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>MEMBER</h3>
        </div>
        <div>
          <p><img src="<c:url value="/img/icon-home.png"/> "> > 회원가입</p>
        </div>
      </div>
    </div>
  </div>

  <!-- 메인 -->
  <!-- 회원가입 -->
  <div class="joinForm container">

    <div class="joinSection1">
      <div><h3>회원가입</h3></div>
      <div><p>The design and maintenance are excellent.</p></div>
    </div>
    <div class="wellcome">
      <h3>OOO사이트에 오신 것을 환영합니다.</h3>
      <h5>-이름과 이메일을 입력해 주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</h5>
    </div>
    <br><br>
    <div class="contents">
      <h3>회원가입을 위해서 아래의 양식에 있는 내용을 입력해 주셔야 합니다.</h3>
      <h5>-회원님의 개인정보를 신중하게 보호하고 있으며 회원님의 동의 없이는 기재하신 회원정보가 누출되지 않습니다.
        자세한 내용은 개인정보보호정책에서 확인하세요.</h5>
    </div>
    <!-- 입력폼 -->
    <div class="information1">
      <div>기본정보</div>
      <table>
        <tr>
          <td>아이디</td>
          <td>
            <input type="text" name="userID">
            <img src="<c:url value="/img/member/btn_iddupl.gif"/> " onclick="">
            (영문 소문자, 숫자로 4~16자)
          </td>
        </tr>
        <tr>
          <td>비밀번호</td>
          <td>
            <input type="password" name="userPW">
            영문/숫자/특수문자조합으로 8~16자리. 첫글자는 영문자로 사용
          </td>
        </tr>
        <tr>
          <td>비밀번호 확인</td>
          <td><input type="password" name="userPWCheck"></td>
        </tr>
        <tr>
          <td>이름</td>
          <td><input type="text"></td>
        </tr>
        <tr>
          <td>이메일</td>
          <td><input type="text">@<input type="text"></td>
        </tr>
        <tr>
          <td>이메일 수신여부</td>
          <td><input type="radio" name="email" id="emailok">수신
            <input type="radio" name="email" id="emailnotok">수신안함</td>
        </tr>
        <tr>
          <td>비밀번호 확인시 질문</td>
          <td>
            <select class="size" name="passwordCheckQuestion">
              <option value="0">========선택========</option>
              <option value="1">기억에 남는 추억의 장소는?</option>
              <option value="2">자신의 인생 좌우명은?</option>
              <option value="3">자신의 보물 제1호는?</option>
              <option value="4">가장 기억에 남는 선생님 성함은?</option>
              <option value="5">내가 좋아하는 캐릭터는?</option>
            </select>
          </td>
        </tr>
        <tr>
          <td>비밀번호 확인시 답변</td>
          <td><input type="text" name="passwordCheckAnswer" value=""></td>
        </tr>
        <tr>
          <td>성별</td>
          <td><input type="radio" name="gender">남자<input type="radio" name="gender">여자</td>
        </tr>
        <tr>
          <td>생년월일</td>
          <td>
            <select name="year" id="year" title="년도" class="birthdaySelect"></select>
            <select name="month" id="month" title="월" class="birthdaySelect"></select>
            <select name="day" id="day" title="일" class="birthdaySelect"></select>
          </td>
        </tr> 
      </table>
    </div>
    <div class="Information2">부가정보</div>
    <div class="imageBtn2">
      <input type="image" src="<c:url value="/img/member/btn_confirm.gif"/> ">
      <input type="image" src="<c:url value="/img/member/btn_cancel.gif"/> ">
    </div>

  </div>