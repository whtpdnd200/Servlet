package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

        PrintWriter out = response.getWriter();
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));

        out.println("{\"addition\" : " + (number1 + number2) + ",\n" +
                " \"subtraction\" : " + (number1 - number2) + ",\n" +
                " \"multiplication\" : " + (number1 * number2) + ",\n" +
                " \"division\" : " + (number1 / number2) + "\n" +
                "}");
    }
}
