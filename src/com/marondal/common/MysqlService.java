package com.marondal.common;

import java.sql.*;
import java.util.*;

public class MysqlService {

    private Connection connection;

    // 접속하기
    public boolean connect()
    {
        // database 서버 접속
        try {
            // database 서버 접속
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자 이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/whtpdnd";
            String username = "root";
            String password = "root";

            // 접속 및 접속 관리 객체 얻기
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            // 접속 실패
            return false;
        }
        return true;
    }


    // 조회하기
    public List<Map<String, Object>> select(String query)
    {
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            // 조회 결과 컬럼 목록
            ResultSetMetaData rsmd = resultSet.getMetaData();

            // 컬럼 개수 얻어오기
            int count = rsmd.getColumnCount();

            List<String> columnList = new ArrayList<>();

            for(int i = 1; i <= count; i++)
            {
                String name = rsmd.getColumnName(i);
                columnList.add(name);
            }

            List<Map<String, Object>> resultList = new ArrayList<>();

            while(resultSet.next())
            {
                // 한행의 정보를 Map으로 구성
                // 컬럼 이름을 키로 대응
                Map<String, Object> row = new HashMap<>();

                for(String column : columnList)
                {
                    row.put(column, resultSet.getObject(column));
                }

                resultList.add(row);
            }
            statement.close();
            return resultList;
        } catch (SQLException e) {
            return null;
        }
    }

    // INSERT, UPDATE, DELETE
    public int update(String query)
    {
        try {
            Statement statement = connection.createStatement();
            int count = statement.executeUpdate(query);
            return count;
        } catch (SQLException e) {
            return -1;
        }
    }

    // 접속 끊기
    public boolean disconnect()
    {
        try {
            connection.close();
        } catch (SQLException e) {
            return false;
        }

        return true;
    }
}
