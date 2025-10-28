package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String number = request.getParameter("number");
        int numberInt = Integer.parseInt(number);

        out.println("" +
                "<html>\n" +
                "   <head>\n" +
                "       <title>구구단 " + numberInt + "단" + "</title>\n" +
                "   </head>\n" +
                "   <body>\n" +
                "       <ul>");

        for(int i = 1; i <= 9; i++)
        {
            out.println("" +
                    "       <li> " + numberInt + " x " + i + " = " + (numberInt * i) + "</li>");
        }

        out.println("" +
                "       </ul>\n" +
                "   </body>\n" +
                "</html>");
    }
}
