<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    String title = request.getParameter("title");
    int id = -1;
    if(request.getParameter("id") != null)
    {
        id = Integer.parseInt(request.getParameter("id"));
    }
    Map<String, Object> music = null;
    for(Map<String, Object> info : musicList)
    {
        if((title != null && info.get("title").equals(title)) || ( id != -1 && (int)info.get("id") == id))
        {
            music = info;
            break;
        }
    }


    int min = (int)music.get("time") / 60;
    int sec = (int)music.get("time") % 60;

%>
<html lang="ko">
    <head>
        <title><%= music.get("title") %></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
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
            <ul class="nav font-weight-bole">
                <li class="nav-item"><a class="nav-link text-dark" href="#">멜롱챠트</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#">최신음악</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#">장르음악</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#">멜롱DJ</a></li>
                <li class="nav-item"><a class="nav-link text-dark" href="#">뮤직어워드</a></li>
            </ul>
        </nav>
        <section>
            <div class="mt-3">
                <h4>곡 정보</h4>
            </div>
            <div class="d-flex border border-success p-3">
                <div>
                    <img width="200px" height="200px" alt="<%= music.get("thumbnail") %>" src="<%= music.get("thumbnail") %>">
                </div>
                <div class="ml-4">
                    <div class="display-4"><%= music.get("title") %></div>
                    <div class="text-success"><h4><%= music.get("singer") %></h4></div>
                    <div>앨범 <span class="ml-4"><%= music.get("album") %></span></div>
                    <div>재생시간 <span class="ml-2"><%= min %> : <%= sec %></span></div>
                    <div>작곡가 <span class="ml-4"><%= music.get("composer") %></span></div>
                    <div>작사가 <span class="ml-4"><%= music.get("lyricist") %></span></div>
                </div>
            </div>
        </section>
        <section>
            <div class="mt-2">
                <h3>가사</h3>
            </div>
            <hr>
            <div>
                가사 정보 없음
            </div>
            <hr>
        </section>
        <footer>
            <div class="text-secondary">
                Copyright 2021. melong All Rights Reserved.
            </div>
        </footer>
    </div>
    </body>
</html>
