<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>길이 변환</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h2>길이 변환</h2>
            <form method="post" action="/jsp/test/test05.jsp">
                <div class="d-flex align-items-end mb-2">
                    <input class="form-control col-2" type="text" name="cm">
                    <div>cm</div>
                </div>
                <div class="mb-2">
                    <label>인치<input type="checkbox" value="inch" name="unit"></label>
                    <label>야드<input type="checkbox" value="yard" name="unit"></label>
                    <label>피트<input type="checkbox" value="feet" name="unit"></label>
                    <label>미터<input type="checkbox" value="meter" name="unit"></label>
                </div>
                <div>
                    <button class="btn btn-success" type="submit">변환</button>
                </div>
            </form>
        </div>
    </body>
</html>
