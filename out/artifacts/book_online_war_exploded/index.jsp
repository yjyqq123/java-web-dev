<%--
  Created by IntelliJ IDEA.
  User: yjy
  Date: 2019/9/27
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.web.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>首页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
  <style type="text/css">
    h2, h3 {
      color: rgb(73, 73, 73);
    }

    #search {
      height: 80px;
      background-color: rgb(246, 246, 241);
      display: flex;
      align-items: center;
      padding-left: 8%;
      margin-bottom: 10px;
    }

    .search-input {
      flex: 0 0 40%;
      height: 35px;
      background-color: #fff;
      border: none;
      border-radius: 3px;
      margin-left: 50px;
    }

    .search-btn {
      width: 35px;
      height: 35px;
      background-color: rgb(155, 154, 143);
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .search-btn img {
      width: 50%;
      height: 50%;
    }

    .card {
      height: 180px;
      margin: 20px 5px 20px 5px;
    }

    .card img {
      width: 100%;
      height: 90%;
    }

    .card p {
      font-size: 13px;
      color: #9b9b9b;
    }

    .col-4 img {
      margin: 10px 5px 20px 5px;
      width: 80%;
    }

    hr {
      width: 90%;
      color: #eee;
      margin-top: 10px;
    }
  </style>
</head>
<body>
<%
  List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<%--使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享--%>
<div id="top">
  <jsp:include page="top.jsp"/>
</div>

<%--搜索区--%>
<div id="search">
  <h2>读书时刻</h2>
  <input type="text" placeholder="书名、作者、ISBN" class="search-input">
  <div class="search-btn">
    <img src="images/search.png" alt="">
  </div>
</div>

<%--主体内容区--%>
<div class="container">
  <div class="row">
    <%--左侧2/3主体部分--%>
    <div class="col-8">
      <h3>新书速递</h3>
      <hr>
      <div class="row">
        <%--遍历图书数据集合，将每个图书对象放入页面对象--%>
        <%
          for (Book book : bookList) {
            pageContext.setAttribute("book", book);
        %>
        <%--引用col-2表示每行显示5本，再追加card细节样式--%>
        <div class="col-2 card">
          <%--点击每本图书封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
          <a href="${pageContext.request.contextPath}/detail/${book.id}">
            <img src="images/${book.cover}" alt="">
          </a>
          <p style="color: rgb(51, 119, 178)">${book.name}</p>
          <p>${book.author}</p>
        </div>
        <%
          }
        %>
      </div>
    </div>
  <div class="right">
    <div class="row-1">
      <div class="column1">
        <a href="#"><h3>文学</h3></a>
        <br>
        <p><a href="#">小说</a> <a href="#">青春文学</a> <a href="#">中国散文</a> <a href="#">外国散文</a> <a href="#">悬疑推理</a> <a href="#">文学理论</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>社科</h3></a>
        <br>
        <p><a href="#">历史</a> <a href="#">哲学/宗教</a> <a href="#">社会科学</a> <a href="#">政治军事</a> <a href="#">传记</a> <a href="#">文化</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>少儿</h3></a>
        <br>
        <p><a href="#">中国儿童文学</a> <a href="#">外国儿童文学</a> <a href="#">科普读物</a> <a href="#">绘本</a> <a href="#">动漫/卡通</a> <a href="#">幼儿启蒙</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>艺术</h3></a>
        <br>
        <p><a href="#">绘画</a> <a href="#">书法镌刻</a> <a href="#">艺术理论</a> <a href="#">摄影</a> <a href="#">音乐</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>生活</h3></a>
        <br>
        <p><a href="#">美食</a> <a href="#">保健/心理健康</a> <a href="#">旅游</a> <a href="#">家庭教育</a> <a href="#">家居休闲</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>文教</h3></a>
        <br>
        <p><a href="#">中小学教辅</a> <a href="#">外语</a> <a href="#">教材</a> <a href="#">医学</a> <a href="#">计算机</a></p>
      </div>
    </div>
  </div>
</div>
<!-- 脚注区 -->
<footer>
  <ul>
    <li>京信市监发[2002]122号</li>
    <li>http://www.bookschina.com/,</li>
    <li>营业执照</li>
    <li>中国图书网</li>
  </ul>
  <ul>
    <li>正品保证</li>
    <li>精品团购</li>
    <li>尾货图书</li>
    <li>全国快递</li>
  </ul>
</footer>
</body>
</html>
