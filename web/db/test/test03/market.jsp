<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>홍당무 마켓</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <%
        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        String query = "SELECT g.image, g.price, g.title, s.id, s.nickname \n" +
                "FROM `seller` AS `s`\n" +
                "JOIN `used_goods` AS `g`\n" +
                "ON s.id = g.seller_id\n" +
                "ORDER BY g.id DESC;";
        List<Map<String, Object>> goodsList = mysqlService.select(query);
        mysqlService.disconnect();
    %>
        <div id="wrap">
            <header class="">
                <div class="display-4 text-light font-weight-bold logo text-center">
                    HONG당무 마켓
                </div>
                <nav class="main-menu font-weight-bold mt-3">
                    <ul class="nav nav-fill">
                        <li class="nav-item"><a class="nav-link text-light" href="/db/test/test03/market.jsp">리스트</a></li>
                        <li class="nav-item"><a class="nav-link text-light" href="/db/test/test03/market-insert.jsp">물건올리기</a></li>
                        <li class="nav-item"><a class="nav-link text-light" href="#">마이페이지</a></li>
                    </ul>
                </nav>
            </header>
            <section class="">
                <div class="d-flex justify-content-start flex-wrap">
                    <%
                        for(Map<String, Object> goods : goodsList)
                        {
                            %>
                    <div class="info my-3 mx-2 p-2">
                        <div class="text-secondary text-center">
                        <%
                            if(goods.get("image") == null)
                            {
                                %>
                            <div class="image-alt">이미지 없음</div>
                                <%
                            } else
                            {
                                %>
                            <img alt="제품 이미지" width="350px" height="240px" src="<%= goods.get("image") %>">
                                <%
                            }
                        %>
                        </div>
                        <div class="font-weight-bold goods-title my-1"><%= goods.get("title") %></div>
                        <div class="text-secondary my-1"><%= goods.get("price") %>원</div>
                        <div class="seller-name font-weight-bold my-1"><%= goods.get("nickname") %></div>
                    </div>
                            <%
                        }
                    %>
                </div>
            </section>
            <footer class="d-flex justify-content-center align-items-end">
                <div class="text-secondary">
                    Copyright 2025. HONG All Rights Reserved.
                </div>
            </footer>
        </div>
    </body>
</html>
