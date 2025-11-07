package com.marondal.database.test;

import com.marondal.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/db/market/insert")
public class MarketInsertController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain; charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        String image = request.getParameter("image");
        if(image.equals(""))
        {
            image = null;
        }
        
        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        String query = "INSERT INTO `used_goods`\n" +
                "(`seller_id`, `title`, `price`, `description`, `image`)\n" +
                "VALUE\n" +
                "(" + id + ", '" + title + "', " + price + ", '" + description + "', '" + image + "');";

        mysqlService.update(query);
        mysqlService.disconnect();


        response.sendRedirect("/db/test/test03/market.jsp");
    }
}
