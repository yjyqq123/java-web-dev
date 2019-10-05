package com.web;

import com.web.entity.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @author yjy
 * @ClassName indexServlet
 * @Description TODO
 * @Date 2019/9/27
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class indexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Book[] books = {
                new Book("平松洋艺术史", "1.jpg", "[日]平松洋 著,谢玥 译"),
                new Book("民国往事", "2.jpg", "萨沙 编著"),
                new Book("徐霞客游记化读本", "3.jpg", "徐霞客"),
                new Book("中国地名史话-典藏", "4.jpg", "徐兆奎/韩光辉 著"),
                new Book("访苏归来", "5.jpg", "[法]安德烈·纪德 著,李玉民 译"),
                new Book("中国通史:精校版", "6.jpg", "吕思勉 著"),
                new Book("了不起的盖茨比", "7.jpg", "[美]F. S.菲茨杰拉德 著,吴建国 译"),
                new Book("一个陌生女人的来信", "8.jpg", "[奥地利]斯蒂芬·茨威格 著"),
                new Book("老人与海", "9.jpg", "欧内斯特·米勒尔，海明威　等著"),
                new Book("警察与赞美诗", "10.jpg", "[美]欧·亨利 著,梁亦之 译"),
                new Book("巴黎圣母院", "11.jpg", "雨果"),
                new Book("霍乱时期的爱情", "12.jpg", "马尔克斯"),
                new Book("卡夫卡小说精选", "13.jpg", "[奥]卡夫卡"),
                new Book("一九八四", "14.jpg", "[英]乔治·奥威尔 著,董乐山 译"),
                new Book("儿子与情人", "15.jpg", "(英）戴维·赫伯特·劳伦斯　著")
        };
        List<Book> bookList = Arrays.asList(books);
        req.setAttribute("bookList",bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}