<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>즐겨찾기 추가</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h2>즐겨찾기 추가</h2>
            <form method="post" action="/db/bookmark/insert">
                <label>사이트명 : </label>
                <input class="form-control w-25 mb-2" type="text" name="name">
                <label>사이트 주소: </label>
                <input class="form-control w-50 mb-2" type="text" name="url">
                <button class="btn btn-success" type="submit">추가</button>
            </form>
        </div>
    </body>
</html>
