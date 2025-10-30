<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>현재 날짜 시간></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <%
        // 어떤 정보를 보여줄지, "date", "time"
        String value = request.getParameter("value");
        String result = null;
        Date date = new Date();
        if(value.equals("date"))
        {
            SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
            result = formatter.format(date);
        } else if(value.equals("time"))
        {
            SimpleDateFormat formatter = new SimpleDateFormat("현재 시간 H시 m분 s초");
            result = formatter.format(date);
        }
    %>
    <body>
        <div class="container">
            <div class="display-2"><%= result %></div>
        </div>
    </body>
</html>
