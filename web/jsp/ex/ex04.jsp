<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>자료구조 다루기</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <%
            // 과일 이름 리스트
            List<String> fruitList = new ArrayList<>();
            fruitList.add("사과");
            fruitList.add("바나나");
            fruitList.add("딸기");
        %>

        <ul>
            <%
                for(String fruit : fruitList)
                {
                    %>
                    <li><%= fruit %></li>
                    <%
                }
            %>

        </ul>
    </body>
</html>
