<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>변환 결과</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <%
            int cm = Integer.parseInt(request.getParameter("cm"));
            String[] unit = request.getParameterValues("unit");
            // 기본적으로 문자열은 수정되지않은 더할때마다 새로운 객체가 생성되는것
            // 문자열을 이어붙이려면 스트링 빌더 객체를 사용
            StringBuilder sb = new StringBuilder();
            //String result = "";

            for(int i = 0; i < unit.length; i++)
            {
                if(unit[i].equals("inch"))
                {
                    sb.append((cm / 2.54) + " in<br>");
                } else if(unit[i].equals("yard"))
                {
                    sb.append((cm / 91.44) + " yd<br>");
                } else if(unit[i].equals("feet"))
                {
                    sb.append((cm / 30.48) + " ft<br>");
                } else if(unit[i].equals("meter"))
                {
                    sb.append((cm / 100.0) + " m<br>");
                }
            }
        %>
        <div class="container">
            <h2>변환 결과</h2>
            <h3><%= cm %>cm</h3>
            <hr>
            <h2><%= sb %></h2>
        </div>
    </body>
</html>
