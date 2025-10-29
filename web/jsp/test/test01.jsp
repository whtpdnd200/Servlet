<%--
  Created by IntelliJ IDEA.
  User: A1-18
  Date: 2025-10-29
  Time: 오후 4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>test01</title>
    </head>
    <body>
        <!--1. 점수들의 평균 구하기 -->
        <%
            int[] scores = {80, 90, 100, 95, 80};
            int sum = 0;

            for(int i = 0; i < scores.length; i++)
            {
                sum += scores[i];
            }
        %>
        <h3>점수 평균은 <%= (double) sum / scores.length %> 입니다.</h3>
        <!-- 채점 결과
             아래 채점표를 이용해 채점 결과 점수를 계산하세요.
             정답(O)일 경우 10점, 오답(X)일 경우 0점으로 계산합니다.
        -->

        <%
            List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
            int score = 0;
            for(String answer : scoreList)
            {
                if(answer.equals("O"))
                {
                    score += 10;
                }
            }
        %>
        <h3>체점 결과는<%= score %>점 입니다.</h3>
        <!--
            1부터 N까지의 합계를 구하는 함수
            선언문(<%! %>) 문법을 이용해 1부터 N까지의 합을 구하는 함수를 작성하세요.
            위에서 만든 함수를 호출해 1부터 50까지의 합이 HTML 태그에 포함되도록 출력하세요.
         -->
        <%!
            public int getSum(int n)
            {
                int sum = 0;
                for(int i = 1; i <= n; i++)
                {
                    sum += i;
                }
                return sum;
            }
        %>
        <h3>1에서 50까지의 합은 <%= getSum(50) %></h3>

        <!--
            나이 구하기
            주어진 생년월일을 이용해 현재 기준 나이를 구하세요.
         -->
        <%
            String birthDay = "20010820";
            int birth = Integer.parseInt(birthDay.substring(0, 4));
        %>
        <h3><%= birthDay %> 의 나이는 <%= 2025 - birth + 1 %>살 입니다.</h3>
    </body>
</html>
