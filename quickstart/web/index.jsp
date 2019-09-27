<%--
  Created by IntelliJ IDEA.
  User: yjy
  Date: 2019/9/27
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: yjy
  Date: 2019/9/21
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录</title>
</head>
<body>
登录
<%--  <h3>欢迎你：${pageContext.request.getAttribute("username")}</h3>--%>
<%--  <h3>密码：${pageContext.request.getAttribute("password")}</h3>--%>

<h3>欢迎你：<%=session.getAttribute("username")%></h3>
<h3>密码：<%=session.getAttribute("password")%></h3>
<a href="login.html">点击返回登录</a>
</body>
</html>
