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
            double exceptionPoint = 0;
            if(exception != null)
            {
                exceptionPoint = 4.0;
            }
        %>

        <div class="container">
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>메뉴</th>
                        <th>상호</th>
                        <th>별점</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    for(Map<String, Object> foods : list)
                    {
                        double star = (double)foods.get("point");
                        String menu = String.valueOf(foods.get("menu"));
                        if(menu.equals(keyword) && star >= exceptionPoint)
                        {
                            %>
                            <tr>
                                <td><%= foods.get("menu") %></td>
                                <td><%= foods.get("name") %></td>
                                <td><%= foods.get("point") %></td>
                            </tr>
                            <%
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </body>
</html>
