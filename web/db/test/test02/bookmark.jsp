<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>즐겨찾기</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <%
            MysqlService mysqlService = MysqlService.getInstance();
            mysqlService.connect();

            List<Map<String, Object>> list = mysqlService.select("SELECT `id`, `name`, `url` FROM `bookmark` ORDER BY `id` DESC;");

            mysqlService.disconnect();
        %>

        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>사이트</th>
                        <th>사이트 주소</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(Map<String, Object> row : list)
                        {
                            %>
                    <tr>
                        <td><%= row.get("name") %></td>
                        <td><a href="<%= row.get("url") %>"><%= row.get("url") %></a></td>
                        <td><a class="btn btn-sm btn-danger" href="/db/bookmark/delete?id=<%= row.get("id") %>">삭제</a></td>
                    </tr>
                            <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
