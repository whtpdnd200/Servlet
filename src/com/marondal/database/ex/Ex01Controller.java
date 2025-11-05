package com.marondal.database.ex;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        // used_goods 테이블의 모든 행을 조회해서
        // 적당한 규격의 문자열로 response에 담는다

        try
        {
            // database 서버 접속
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자 이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/whtpdnd";
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            Connection connection = DriverManager.getConnection(url, username, password);

            // 쿼리 수행
            String query = "SELECT * FROM `used_goods`;";

            // 쿼리를 수행하는 객체
            Statement statement = connection.createStatement();

            // 쿼리의 수행 결과를 받아오는 객체(이터레이터랑 비슷하게 사용)
            // SELECT용 메서드
            ResultSet resultSet = statement.executeQuery(query);

            while(resultSet.next())
            {
                // 제목(title), 가격(price), 설명(description)
                String title = resultSet.getString("title");
                int price = resultSet.getInt("price");
                String description = resultSet.getString("description");

                out.println("제목 : " + title + " 가격 : " + price + " 설명 : " + description);

            }

            statement.close();

//            query = "INSERT INTO `used_goods`(`seller_id`, `title`, `price`, `description`)\n" +
//                    "VALUE\n" +
//                    "(3, '고양이 간식 팝니다', 5000, '저희 고양이가 입맛이 까다로움');";
//            statement = connection.createStatement();
//            // INSERT, UPDATE, DELETE용 메서드
//            //실행된 행의 개수 return
//            int count = statement.executeUpdate(query);
//
//            out.println("저장된 행 : " + count);
//            statement.close();
            connection.close();
        } catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }
}
