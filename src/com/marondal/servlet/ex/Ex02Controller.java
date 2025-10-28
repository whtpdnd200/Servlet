package com.marondal.servlet.ex;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex02")
public class Ex02Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        // 1 ~ 10 까지의 합을 html로 구성한 페이지

        int sum = 0;

        for(int i = 1; i <= 10; i++)
        {
            sum += i;
        }


        out.println("" +
                "<html>\n" +
                "   <head>\n" +
                "       <title>합계</title>\n" +
                "   </head>\n" +
                "   <body>\n" +
                "       <h2>합계 : " + sum + "</h2>\n" +
                "   </body>\n" +
                "</html>");


    }
}
