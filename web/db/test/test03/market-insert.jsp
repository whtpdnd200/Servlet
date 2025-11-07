<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>상품 등록</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
    <%
        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        List<Map<String, Object>> userList = mysqlService.select("SELECT `id`, `nickname` FROM `seller`;");

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
                <div class="">
                    <h2>물건 올리기</h2>
                    <form method="post" action="/db/market/insert">
                        <div class="d-flex justify-content-between">
                            <div class="col-3">
                                <select class="form-control" name="id">
                                    <option value="empty">-아이디 선택-</option>
                                    <%
                                        for(Map<String, Object> user : userList)
                                        {

                                    %>
                                    <option value="<%= user.get("id") %>"><%= user.get("nickname") %></option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="col-6">
                                <input class="form-control" type="text" id="title" name="title" placeholder="제목">
                            </div>
                            <div>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="price">
                                    <div class="input-group-append">
                                        <span class="input-group-text">원</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="my-3">
                        <textarea rows="10" class="form-control" name="description">

                        </textarea>
                        </div>
                        <div>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">이미지 url</span>
                                </div>
                                <input type="text" class="form-control" name="image">
                            </div>
                        </div>
                        <div class="my-3">
                            <button class="btn btn-light btn-block text-dark font-weight-bold" type="button">저장</button>
                        </div>
                    </form>
                </div>
            </section>
            <footer class="d-flex justify-content-center align-items-end">
                <div class="text-secondary">
                    Copyright 2025. HONG All Rights Reserved.
                </div>
            </footer>
            <script>

            </script>
        </div>
    </body>
</html>
