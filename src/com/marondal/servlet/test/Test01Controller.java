package com.marondal.servlet.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");

        String dateString = formatter.format(date);

        out.println("오늘의 날짜는 " + dateString);
    }
}
