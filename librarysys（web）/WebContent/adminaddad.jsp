<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="alljavabean.Identity" %>

<!DOCTYPE html>
<html>
<head>
  <title>系统管理员-录入管理员</title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <link rel="stylesheet" type="text/css" href="./font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="./style/adminMain.css">
  <link rel="stylesheet" type="text/css" href="./style/adminReader.css">
  <script type="text/javascript" src="./script/jquery-2.1.4.min.js"></script>
  <script type="text/javascript">
     $(document).ready(function() {
          $(".left ul li:eq(3)").css("color","#FFF");
          $(".left ul li:eq(3)").css("background-color","#B78DE7");
          $(".left ul").find('li:eq(3)').children(".trig").css('display', 'block');
     });
  </script>
</head>
<body>
   <%
   String username=null;		
	Identity idt=(Identity)request.getSession().getAttribute("idt");		
		
	if(idt==null )
	{
	   username="";
	   String info="您必须登录才能访问图书馆管理系统，禁止越权访问";
		   request.setAttribute("info", info);
	   request.getRequestDispatcher("login.jsp").forward(request, response);
	   
	   
	}
	else{
		username=idt.getUsername();
	}
      String tip="";
      if(request.getAttribute("tip")!=null)
    	  tip=(String)request.getAttribute("tip");
   %>
   <div class="ad_page">
    <div class="header">
      <img src="./images/logo.png">
      <div class="state">
        <div class="ad_name"><div class="fa_i"><i class="fa fa-user"></i></div><a href="">系统管理员：<%=username %></a></div>
        <div class="out"><a href="dealloginout">退出</a></div>
      </div>
      <div class="clear"></div>
    </div>
    <div class="content">
      <div class="left">
        <ul>
          <a href="adminaddreader.jsp"><li>录入新读者<div class="trig"></div></li></a>
          <a href="adminoutreader.jsp"><li>删除读者<div class="trig"></div></li></a>
          <a href="adminalterreader.jsp"><li>修改读者信息<div class="trig"></div></li></a>
          <a href="adminaddad.jsp"><li>录入图书管理员<div class="trig"></div></li></a>
          <a href="adminoutad.jsp"><li>删除图书管理员<div class="trig"></div></li></a>
          <a href="adminalterad.jsp"><li>修改管理员信息<div class="trig"></div></li></a>
          <a href="adminsearchreader.jsp"><li>查看读者信息<div class="trig"></div></li></a>
          <a href="adminsearchad.jsp"><li>查看管理员信息<div class="trig"></div></li></a>
          <a href="adminpersonal.jsp"><li>管理员中心<div class="trig"></div></li></a>
        </ul>
      </div>
      <form action="addreaderadcheck" method="post">
      <div class="right">
      <!-- class="ad_data"的div中是系统管理员系统的切换部分 -->
      
        <div class="ad_data">
                <div class="data"><label>编号</label><input name="k1"/></div>
                <div class="data"><label>用户名</label><input  name="k2"/></div>
                <div class="data"><label>初始密码</label><input  name="k3"/></div>
                <div class="data"><label>电话</label><input  name="k4"/></div>
                <div class="data"><label>邮箱</label><input  name="k5"/></div>
                <button class="add_btn" type="submit">确认添加<p style="color:red;font-size:16px;"><%=tip%></p></button>
                
        </div>
       
      </div>
       </form>
      <div class="clear"></div>
      
    </div>
   </div>
</body>
</html>