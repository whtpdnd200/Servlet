<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>입력</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h2>체격 조견 입력</h2>
            <form method="get" action="/jsp/test/test02.jsp">
                <div class="d-flex align-items-end">
                    <input class="form-control col-2" type="text" name="height"><div>cm</div>
                    <input class="form-control col-2" type="text" name="weight"><div>kg</div>
                    <button class="btn btn-Info" type="submit">계산</button>
                </div>
            </form>
        </div>
    </body>
</html>
