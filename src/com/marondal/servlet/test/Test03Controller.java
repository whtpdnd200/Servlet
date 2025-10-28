package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();

        out.println("" +
                "<html>\n" +
                "   <head>\n" +
                "       <title>뉴스 기사 출력</title>\n" +
                "   </head>\n" +
                "   <body>\n" +
                "       <h1>[단독] 고양이가 야옹해</h1>\n" +
                "       <p>기사 입력 시간 : 2025/10/23 06:17:45</p>\n" +
                "       <hr>\n" +
                "       <p>끝</p>\n" +
                "   </body>\n" +
                "</html>");

    }
}
