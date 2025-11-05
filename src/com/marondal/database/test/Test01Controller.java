package com.marondal.database.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();

        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            String url = "jdbc:mysql://localhost:3306/whtpdnd";
            String username = "root";
            String password = "root";

            Connection connection = DriverManager.getConnection(url, username, password);
//            Statement statement = connection.createStatement();
//            String query = "INSERT INTO `real_estate`(`realtor_id`, `address`, `area`, `type`, `price`)\n" +
//                    "VALUE\n" +
//                    "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//
//            int count = statement.executeUpdate(query);
//
//            out.println("실행 된 행 : " + count);

            String query = "SELECT `address`, `area`, `type` FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            while(resultSet.next())
            {
                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");

                out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
            }

            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
