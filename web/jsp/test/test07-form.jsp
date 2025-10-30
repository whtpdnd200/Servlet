<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>검색</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h4>메뉴 검색</h4>
            <form method="post" action="/jsp/test/test07.jsp">
                <div class="d-flex align-items-end">
                    <input class="form-control mr-2 col-2" type="text" name="keyword">
                    <label><input type="checkbox" name="exception">4점 이하 제외</label>
                </div>
                <div>
                    <button class="btn btn-success mt-2" type="submit">검색</button>
                </div>
            </form>
        </div>
    </body>
</html>
