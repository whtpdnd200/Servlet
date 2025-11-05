<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>사용자 리스트</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
    <%
        MysqlService mysqlService = new MysqlService();

        mysqlService.connect();

        List<Map<String, Object>> userList = mysqlService.select("SELECT * FROM `new_user`;");
    %>
        <h3>사용자 리스트</h3>
        <table border="1">
            <thead>
                <tr>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>자기소개</th>
                </tr>
            </thead>
            <tbody>
            <%
                for(Map<String, Object> user : userList)
                {
                    %>
                <tr>
                    <td><%= user.get("name") %></td>
                    <td><%= user.get("email") %></td>
                    <td><%= user.get("introduce") %></td>
                </tr>
                    <%
                }

                mysqlService.disconnect();
            %>
            </tbody>
        </table>
    </body>
</html>
