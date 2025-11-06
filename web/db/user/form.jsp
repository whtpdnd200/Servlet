<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>사용자 추가</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <h2>사용자 추가</h2>
        <form method="post" action="/db/user/insert">
            <label>이름</label> <input type="text" name="name"><br>
            <label>생년월일</label> <input type="text" name="birthday"><br>
            <label>이메일</label> <input type="text" name="email"><br>
            <label>자기소개</label><br>
            <textarea rows="10" cols="50" name="introduce"></textarea><br>
            <button type="submit">추가</button>
        </form>
    </body>
</html>
