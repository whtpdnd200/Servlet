package com.marondal.servlet.ex;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        //response.setContentType("text/html");
        response.setContentType("application/json");

        // 이름과 생년월일을 전달 받고
        // 이름과 나이를 html로 구성한 페이지

        // 이름과 나이를 데이터로 구성한 페이지



        PrintWriter out = response.getWriter();

        // request로 부터 값을 전달 받는다 =  request 파라미터를 전달 받는다

        // request로 부터 name 이라는 파라미터 이름으로 값을 꺼내 쓸테니
        // name 이라는 파라미터 이름으로 이름을 전달 해라

        String name = request.getParameter("name");
        // request로 부터 birthday 라는 파라미터 이름으로 생년월일을 꺼내 쓸테니
        // birthday 라는 파라미터 이름으로 20030123 형식으로 생년월일을 전달 해라
        String birthday = request.getParameter("birthday");

        String yearString = birthday.substring(0,4);
        int year = Integer.parseInt(yearString);

        int age = 2025 - year + 1;

        // 이름과 나이를 응답에 담는다.
        // 데이터를 표현하기 위한 !!문자열!! 규격
        // JSON(JavaScript Object Notation)
        // ["김인규", "유재석", "지석진"]
        // {"name" : "김인규", "age" : 29}

        //out.println("{\"name\" : \" " + name + "\", \"age\" : " + age + "}");
        out.println("{\"name\" : \"" + name + "\", \"age\" : " + age + "}");

//        out.println("" +
//                "<html>\n" +
//                "   <head>\n" +
//                "       <title>정보</title>\n" +
//                "   </head>\n" +
//                "   <body>\n" +
//                "       <h3>이름 : " + name + "</h3>\n" +
//                "       <h3>나이 : " + age + "</h3>\n" +
//                "   </body>\n" +
//                "</html>");

    }
}
