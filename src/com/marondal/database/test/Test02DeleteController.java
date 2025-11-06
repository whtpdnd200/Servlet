package com.marondal.database.test;

import com.marondal.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/db/bookmark/delete")
public class Test02DeleteController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");

        MysqlService mysqlService = MysqlService.getInstance();
        mysqlService.connect();

        int count = mysqlService.update("DELETE FROM `bookmark` WHERE `id` = " + id);

        mysqlService.disconnect();

        response.sendRedirect("/db/test/test02/bookmark.jsp");
    }
}
