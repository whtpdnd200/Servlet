package com.marondal.common;

import java.sql.*;
import java.util.*;

public class MysqlService {

    // Design pattern
    // Singleton pattern : 클래스 내에서 하나의 객체만 생성하고 이를 활용하도록 제한

    // static 변수 : 객체 생성 없이 사용 할 수 있는 멤버 변수
    private static MysqlService mysqlService = null;

    private Connection connection;

    // 해당 클래스 객체를 사용할 수 있도록 return 해주는 메서드
    // 객체를 사용하는 쪽에서 생성자 대신 활용
    // static 메서드 : 객체 생성 없이 호출 할 수 있는 메서드
    public static MysqlService getInstance()
    {
        if(mysqlService == null)
        {
            mysqlService = new MysqlService();
        }
        return mysqlService;
    }

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

            // 조회 결과 컬럼(키) 목록
            ResultSetMetaData rsmd = resultSet.getMetaData();

            // 컬럼 개수 얻어오기
            int count = rsmd.getColumnCount();

            // 컬럼의 이름을 담을 리스트 생성
            List<String> columnList = new ArrayList<>();

            // count의 개수 즉 쿼리를 실행하고 반환된 resultSet에서
            // getMetaData 메서드를 사용해 컬럼의 개수를 얻어옴
            // 얻어오는 컬럼의 개수는 셀렉트할 필드의 갯수와 동일
            // ResultSetMetaData 타입의 객체에 들어있는 컬럼 이름을
            // 반복문을 통해서 순차적으로 순회하며 리스트에 저장함
            for(int i = 1; i <= count; i++)
            {
                String name = rsmd.getColumnName(i);
                columnList.add(name);
            }

            // 위에서 얻어낸 컬럼의 이름을 통해서 얻어낼 테이블의 한 행의 데이터를 담을 리스트 생성
            // 제네릭에는 Map으로 타입을 지정해서 키에 컬럼명 값에 한 항에 대한 값을 넣어줌
            // 키는 문자열 타입, 값에는 문자열 정수 실수 등 여러 값이 들어갈 수 있으니 오브젝트형으로 타입지정
            List<Map<String, Object>> resultList = new ArrayList<>();

            // 가르킬 다음 행이 없을때 까지 도는 반복문
            while(resultSet.next())
            {
                // 한행의 정보를 Map으로 구성
                // 컬럼 이름을 키로 대응

                Map<String, Object> row = new HashMap<>();

                // 위에서 얻어낸 컬럼명 리스트를 향상된 for문으로 돌림
                for(String column : columnList)
                {
                    // 한 행의 정보를 담을 map에 for문을 통해 얻어낸
                    // 컬럼명을 키, 해당 컬럼명을 매개변수로 넣어서 값을 얻어냄
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
