<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String value = request.getParameter("value");
    String title = null;
    Date now = null;
    String reNow = null;
    if(value.equals("date"))
    {
        title = "날짜";
        now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
        reNow = formatter.format(now);
    } else if(value.equals("time"))
    {
        title = "시간";
        now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
        reNow = formatter.format(now);
    }
%>
<html lang="ko">
    <head>
        <title>현재<%= title %></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="display-2">현재<%= title %> <%= reNow %></div>
        </div>
    </body>
</html>
