package com.web.listener;

import com.web.entity.Book;
import com.web.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "aaa@qq.com", "698d51a19d8a121ce581499d7b701668", "开到荼蘼", "user1.jpg", "江苏南京", LocalDate.of(2018, 6, 11)),
                new User(2, "bbb@qq.com", "698d51a19d8a121ce581499d7b701668", "小幸运", "user2.jpg", "浙江杭州", LocalDate.of(2019, 2, 18)),
                new User(3, "ccc@qq.com", "698d51a19d8a121ce581499d7b701668", "往后余生", "user3.jpg", "湖北武汉", LocalDate.of(2019, 8, 19))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
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
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}