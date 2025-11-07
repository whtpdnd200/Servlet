package com.marondal.database.test;

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
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        PrintWriter out = response.getWriter();

        out.println("id : " + id);
        out.println("title : " + title);
        out.println("price : " + price);
        out.println("description : " + description);
        out.println("image : " + image);
    }
}
