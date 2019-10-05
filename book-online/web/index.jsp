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
  <meta charset="UTF-8">
  <title>首页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
  <style type="text/css">
    *{
      margin: 0;
      padding: 0;
    }
    @font-face {
      font-family: 'iconfont';  /* project id 1432479 */
      src: url('//at.alicdn.com/t/font_1432479_3euznvfn9up.eot');
      src: url('//at.alicdn.com/t/font_1432479_3euznvfn9up.eot?#iefix') format('embedded-opentype'),
      url('//at.alicdn.com/t/font_1432479_3euznvfn9up.woff2') format('woff2'),
      url('//at.alicdn.com/t/font_1432479_3euznvfn9up.woff') format('woff'),
      url('//at.alicdn.com/t/font_1432479_3euznvfn9up.ttf') format('truetype'),
      url('//at.alicdn.com/t/font_1432479_3euznvfn9up.svg#iconfont') format('svg');
    }
    .iconfont{
      font-family:"iconfont" !important;
      font-size:16px;font-style:normal;
      -webkit-font-smoothing: antialiased;
      -webkit-text-stroke-width: 0.2px;
      -moz-osx-font-smoothing: grayscale;
    }
    body{
      color: #333;
    }
    header{
      height: 60px;
      background-color: rgb(161, 136, 127);
      display: flex;
      box-shadow: #aaaaaa;
      /* 垂直居中 */
      align-items: center;
      /* 水平居中 */
      justify-content: space-between;
      padding-right: 10px;
      padding-right: 10px;
    }
    .nav{
      flex: 0 0 50%;
      list-style: none;
      display: flex;
    }
    .nav li{
      margin-left: 30px;
      margin-right: 30px;
      width: 50px;
    }
    .user-info{
      display: flex;
      padding-right: 20px;
      flex-direction: row-reverse;
    }
    .nav li a{
      text-decoration: none;
      color: #eee;
    }
    .nav li a:hover{
      color: #fff;
    }
    /* 搜索区样式 */
    .search-wrap{
      height: 60px;
      background-color: rgb(224, 224, 224);
      display: flex;
      align-items: center;
      padding-left: 10%;
      margin-bottom: 10px;
    }
    .input-box{
      width: 350px;
      height: 35px;
      border: 1px solid #eee;
      border-radius: 5px;
      margin-left: 10px;
    }
    .container{
      width: 85%;
      margin: 0 auto;
      /* height: 600px; */
      background-color: rgb(188, 170, 164);
      display: flex;
      padding: 5px 5px 5px 5px;
    }
    .left{
      flex: 0 0 66%;
      height: 100%;
      background-color: #fff;
      padding: 10px 10px 10px 10px;
    }
    .right{
      flex: 0 0 32%;
      height: 100%;
      margin-left: 5px;
      background-color: #FFFFFF;
    }
    .right a{
      text-decoration: none;
      color:#000;
    }
    .right a:hover{
      color:#aaa;
    }
    .row{
      display: flex;
      /* 自动换行 */
      flex-wrap: wrap;
      padding: 5px 5px 5px 5px;
    }
    .column{
      flex: 0 0 18%;
      height: 250px;
      background-color: #FFFFFF;
      border-radius: 10px;
      margin: 5px 5px 5px 5px;
      text-align: center;
    }
    footer{
      height: 100px;
      background-color: #aaa;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .avatar{
      border-top-left-radius: 5%;
      border-top-right-radius: 5%;
      margin-top: 5px;
      margin-bottom: 5px;
      width: 100%;
      height: 70%;
    }
    .description{
      width:80%;
      margin:0 auto;
      font-size:13px;
      line-heignt:25px;
    }
    .button{
      width: 35px;
      height: 35px;
      background-color: #FFFFFF;
      border-radius: 5px;
      box-shadow: #333333;
      font-size: 16px;
      outline: none;
      border: none;
    }
    .circle-bin{
      width: 40px;
      height: 40px;
      border-radius: 50%;
      /*阴影效果*/
      box-shadow: #aaaaaa;
      outline: none;
      border: none;
    }
    .row-1{
      display: flex;
      flex-direction:column;
      padding:5px 5px 5px 5px;
    }
    .column1{
      width:95%;
      height:100px;
      background-color: #FFFFFF;
      margin:5px 5px 5px 5px;
    }
    img{
      border-top-left-radius: 5%;
      border-top-right-radius: 5%;
      margin-top: 5px;
      margin-bottom: 5px;
      width: 100%;
      height: 70%;
      cursor: pointer;
      transition: all 0.6s;
    }
    img:hover {
      transform: scale(1.1);
    }
  </style>
</head>
<body>
<!-- 顶部导航 -->
<header>
  <div id="top">
    <jsp:include page="top.jsp"/>
  </div>
</header>
<!-- 搜索区 -->
<div class="search-wrap">
  <h2>读书时刻</h2>
  <input type="text" placeholder="输入要搜索的内容" class="input-box">
  <button type="button" class="button">
    <a href="#"><i class="iconfont" style="color: #333333;font-size: 14px">&#xe600;</i></a>
  </button>

</div>
<div class="container">
  <!-- 主题内容区 -->
  <div class="left">
    <h2>好书精选</h2>
    <hr>
    <%
      List<Book> bookList = (List<Book>) request.getAttribute("bookList");
      pageContext.setAttribute("size",bookList.size());
    %>
    <div class="row">
      <%
        for(Book book:bookList){
          pageContext.setAttribute("book",book);
      %>
      <div class="column">
        <img src="image/${book.cover}" alt="">
        <p>${book.name}</p>
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
