<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>Title</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <form method="get" action="/jsp/ex/ex03.jsp">
            <label>닉네임 </label><input type="text" name="nickname"><br>
            <h4>좋아하는 동물을 고르세요</h4>
            <!-- 고양이, 강아지, 호랑이 : radio -->

            <label>고양이<input type="radio" value="cat" name="animal"></label>
            <label>강아지<input type="radio" value="dog" name="animal"></label>
            <label>호랑이<input type="radio" value="tiger" name="animal"></label><br>
            <!-- 바나나, 딸기, 복숭아 : select -->
            <h4>좋아하는 과일을 고르세요</h4>
            <select name="fruit">
                <option value="banana">바나나</option>
                <option value="strawberry">딸기</option>
                <option>복숭아</option>
            </select>

            <h4>좋아하는 음식을 모두 고르세요</h4>
            <!-- 민트초코, 하와이안 피자, 번데기 : checkbox -->
            <label>민트초코<input type="checkbox" name="food" value="mint"></label>
            <label>하와이안 피자<input type="checkbox" name="food" value="pizza"></label>
            <label>번데기<input type="checkbox" name="food" value="pupa"></label>
            <br>
            <button type="submit">입력</button>
        </form>
    </body>
</html>
