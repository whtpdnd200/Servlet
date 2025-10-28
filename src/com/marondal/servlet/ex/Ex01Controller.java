package com.marondal.servlet.ex;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Ex01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 현재 날짜 시간을 보여주는 페이지
        // 응답 결과에 대한 정보 설정
        // Response Header
        // character set : utf-8
        response.setCharacterEncoding("utf-8");
        // 데이터 타입 (Content type)
        // MIME : 데이터 타입을 구분하기 위한 정해진 문자열 규격
        response.setContentType("text/plain");

        // 결과물
        // Response Body
        PrintWriter out = response.getWriter();

        // 날짜 시간 관리 클래스
        Date now = new Date();

        out.println(now);

        // 2025년 10월 23일 17시 05분 12초

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일 H시 m분 s초");

        String datetimeString = formatter.format(now);

        out.println(datetimeString);
    }
}
