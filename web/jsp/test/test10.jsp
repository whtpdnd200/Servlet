<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
    <head>
        <title>Melong</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <%
            Map<String, Object> artistInfo = new HashMap<>();
            artistInfo.put("name", "아이유");
            artistInfo.put("debute", 2008);
            artistInfo.put("agency", "EDAM엔터테인먼트");
            artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

            List<Map<String, Object>> musicList = new ArrayList<>();

            Map<String, Object> musicInfo = new HashMap<>();
            musicInfo.put("id", 1);
            musicInfo.put("title", "팔레트");
            musicInfo.put("album", "Palette");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
            musicInfo.put("time", 217);
            musicInfo.put("composer", "아이유");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 2);
            musicInfo.put("title", "좋은날");
            musicInfo.put("album", "Real");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
            musicInfo.put("time", 233);
            musicInfo.put("composer", "이민수");
            musicInfo.put("lyricist", "김이나");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 3);
            musicInfo.put("title", "밤편지");
            musicInfo.put("album", "palette");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
            musicInfo.put("time", 253);
            musicInfo.put("composer", "제휘,김희원");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 4);
            musicInfo.put("title", "삐삐");
            musicInfo.put("album", "삐삐");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
            musicInfo.put("time", 194);
            musicInfo.put("composer", "이종훈");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 5);
            musicInfo.put("title", "스물셋");
            musicInfo.put("album", "CHAT-SHIRE");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
            musicInfo.put("time", 194);
            musicInfo.put("composer", "아이유,이종훈,이채규");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);

            musicInfo = new HashMap<>();
            musicInfo.put("id", 6);
            musicInfo.put("title", "Blueming");
            musicInfo.put("album", "Love poem");
            musicInfo.put("singer", "아이유");
            musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
            musicInfo.put("time", 217);
            musicInfo.put("composer", "아이유,이종훈,이채규");
            musicInfo.put("lyricist", "아이유");
            musicList.add(musicInfo);
        %>
        <div class="container">
            <header>
                <form method="get" action="/jsp/test/test10-view.jsp">
                <div class="d-flex">
                    <h3 class="text-success mr-5">Melong</h3>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control col-3" name="title">
                        <div class="input-group-append">
                            <button class="btn btn-info" type="submit">검색</button>
                        </div>
                    </div>
                </div>
                </form>
            </header>
            <nav>
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">멜롱챠트</a></li>
                    <li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">최신음악</a></li>
                    <li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">장르음악</a></li>
                    <li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">멜롱DJ</a></li>
                    <li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">뮤직어워드</a></li>
                </ul>
            </nav>
            <section>
                <div class="d-flex border border-success p-3">
                    <div>
                        <img width="150px" height="150px" alt="<%= artistInfo.get("name") %>" src="<%= artistInfo.get("photo") %>">
                    </div>
                    <div class="ml-4">
                        <div><h4><%= artistInfo.get("name") %></h4></div>
                        <div><%= artistInfo.get("agency") %></div>
                        <div><%= artistInfo.get("debute") %> 데뷔</div>
                    </div>
                </div>
            </section>
            <section>
                <div class="mt-2">
                    <h3>곡 목록</h3>
                </div>
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th>no</th>
                            <th>제목</th>
                            <th>앨범</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(Map<String, Object> music : musicList)
                            {
                                %>
                                <tr>
                                    <td><%= music.get("id") %></td>
                                    <td><a href="/jsp/test/test10-view.jsp?title=<%= music.get("title") %>"><%= music.get("title") %></a></td>
                                    <td><%= music.get("album") %></td>
                                </tr>
                                <%
                            }
                        %>
                    </tbody>
                </table>
            </section>
            <footer>
                <div class="text-secondary">
                    Copyright 2021. melong All Rights Reserved.
                </div>
            </footer>
        </div>
    </body>
</html>
