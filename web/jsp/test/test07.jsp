<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>배탈의 민족</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <%
            List<Map<String, Object>> list = new ArrayList<>();
            Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); }};
            list.add(map);
            map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); }};
            list.add(map);
            map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); }};
            list.add(map);
            map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); }};
            list.add(map);
            map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); }};
            list.add(map);
            map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); }};
            list.add(map);
            map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); }};
            list.add(map);

            String keyword = request.getParameter("keyword");
            String exception = request.getParameter("exception");
        %>

        <div class="container">
            <table class="table">
                <tr>
                    <th>메뉴</th>
                    <th>상호</th>
                    <th>별점</th>
                </tr>
                <%
                    
                %>
            </table>
        </div>
    </body>
</html>
