package com.marondal.servlet.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;

public class Test02Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        Date nowTime = new Date();

        SimpleDateFormat formatter = new SimpleDateFormat("H시 m분 s초");

        String time = formatter.format(nowTime);

        out.println("현재 시간은 " + time + " 입니다.");

    }
}
