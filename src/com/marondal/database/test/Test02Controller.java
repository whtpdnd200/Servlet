package com.marondal.database.test;

import com.marondal.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/db/bookmark/insert")
public class Test02Controller extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String url = request.getParameter("url");


        MysqlService mysqlService = MysqlService.getInstance();
        mysqlService.connect();

        String query = "INSERT INTO `bookmark`\n" +
                "(`name`, `url`)\n" +
                "VALUE\n" +
                "('" + name + "', '" + url + "');";

        int count = mysqlService.update(query);
        mysqlService.disconnect();

        response.sendRedirect("/db/test/test02/bookmark.jsp");
    }
}
