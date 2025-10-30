<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>사칙 연산</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h2>사칙 연산</h2>
            <form method="post" action="/jsp/test/test04.jsp">
                <div class="d-flex">
                    <input class="form-control col-2 mr-2" type="text" name="number1">
                    <select class="form-control col-1 mr-2" name="operator">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="X">x</option>
                        <option value="÷">÷</option>
                    </select>
                    <input class="form-control col-2 mr-2" type="text" name="number2">
                    <button class="btn btn-success" type="submit">계산</button>
                </div>
            </form>
        </div>
    </body>
</html>
