<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- ZUI 标准版压缩后的 CSS 文件 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/zui/1.8.1/css/zui.min.css">

<!-- ZUI Javascript 依赖 jQuery -->
<script src="//cdnjs.cloudflare.com/ajax/libs/zui/1.8.1/lib/jquery/jquery.js"></script>
<!-- ZUI 标准版压缩后的 JavaScript 文件 -->
<script src="//cdnjs.cloudflare.com/ajax/libs/zui/1.8.1/js/zui.min.js"></script>
<link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/login.css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<!-- logo -->
<div style="text-align:center;">
<img src="img/logo.png"/>
</div>
<!-- logo end -->
<!-- head -->
<div style="margin:0 auto;">
<nav class="navbar navbar-default" role="navigation"> 
    <div class="container-fluid"> 
        <div class="navbar-header" style="padding-left:15%"> 
            <a class="navbar-brand" href="index.jsp"><font color="black">首页</font></a> 
        </div>
        <div class="navbar-header"> 
            <a class="navbar-brand" href="mycourse.jsp"><font color="black">我的课程</font></a> 
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="teacher.jsp"><font color="black">教师管理界面</font></a> 
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="admin.jsp"><font color="black">管理员管理界面</font></a> 
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="personal.jsp"><font color="black">个人中心</font></a> 
        </div>
        <ul class="nav navbar-nav navbar-right" style="padding-right:15%">
            <a class="navbar-brand" href="login.jsp" style="background-color:blue;"><font color="white">登陆</font></a> 
        </ul> 
    </div> 
</nav>
</div>
<!-- head end -->
<div class="container">
        <div class="form row">
            <div class="form-horizontal col-md-offset-3" id="login_form">
                <h3 class="form-title">修改密码</h3>
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                            <i class="fa fa-lock fa-lg"></i>
                            <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8"/>
                    </div>
                     <div class="form-group">
                            <i class="fa fa-lock fa-lg"></i>
                            <input class="form-control required" type="password" placeholder="NewPassword" id="password" name="password" maxlength="8"/>
                    </div>
                     <div class="form-group">
                            <i class="fa fa-lock fa-lg"></i>
                            <input class="form-control required" type="password" placeholder="ConfirmPassword" id="password" name="password" maxlength="8"/>
                    </div>
                    <div class="form-group col-md-offset-9">
                        <a href="login.jsp"><button type="submit" class="btn btn-success pull-right" name="submit">确认修改</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <!-- bottom -->
<div style="height:100px;width:100%;bottom:0px;text-align:center;background-color:white;position:absolute;padding-top:30px;">
Copyright© 2018 菏泽高级技工学校  版权所有 
联系电话:0530-3877888、3877900、3877968、18369000060   学校微信公众号：hzgjjx
</div>
<!-- bottom end -->
</body>
</html>