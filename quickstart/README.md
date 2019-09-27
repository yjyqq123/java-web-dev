# quickstart起步
## 登录
- login.html登录页面输入用户名和密码，通过表单发起请求
![1.jpg](http://ww1.sinaimg.cn/large/0068yrkzgy1g7eh6wv5qnj30ea093mxg.jpg)

- LoginServlet拦截到"/login.do"请求，将用户名记入session，跳转到index.jsp
![2.jpg](http://ww1.sinaimg.cn/large/0068yrkzgy1g7eh9r53a2j30f408waad.jpg)

- index.jsp首页点击返回登录，又跳转到index.jsp重新登陆
![3.jpg](http://ww1.sinaimg.cn/large/0068yrkzgy1g7ehci35x9j30e707z74l.jpg)