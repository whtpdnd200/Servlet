package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        out.println("" +
                "<html>\n" +
                "   <head>\n" +
                "       <title>리스트 출력</title>\n" +
                "   </head>\n" +
                "       <body>\n" +
                "           <ul>");

        for(int i = 1; i <= 30; i++)
        {
            out.println("           <li>" + i + "번째 리스트</li>");
        }

        out.println("" +
                "       </ul>\n" +
                "   </body>\n" +
                "</html>");


    }
}
