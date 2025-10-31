<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        {
            put("id", 1000);
            put("title", "아몬드");
            put("author", "손원평");
            put("publisher", "창비");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
        }
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        {
            put("id", 1001);
            put("title", "사피엔스");
            put("author", "유발 하라리");
            put("publisher", "김영사");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
        }
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        {
            put("id", 1002);
            put("title", "코스모스");
            put("author", "칼 세이건");
            put("publisher", "사이언스북");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
        }
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        {
            put("id", 1003);
            put("title", "나미야 잡화점의 기적");
            put("author", "히가시노 게이고");
            put("publisher", "현대문학");
            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
        }
    };
    list.add(map);

    int id = Integer.parseInt(request.getParameter("id"));
    Map<String, Object> bookInfo = null;
    for(Map<String, Object> book : list)
    {
        if(id == (int)book.get("id"))
        {
            bookInfo = book;
            break;
        }
    }
%>
<html lang="ko">
    <head>
        <title>Title</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="d-flex">
                <div>
                    <img alt="<%= bookInfo.get("title") %>" src="<%= bookInfo.get("image") %>">
                </div>
                <div>
                    <div class="display-2"><%= bookInfo.get("title") %></div>
                    <div class="display-3 text-info"><%= bookInfo.get("author") %></div>
                    <div class="display-4 text-secondary"><%= bookInfo.get("publisher") %></div>
                </div>
            </div>
        </div>
    </body>
</html>
