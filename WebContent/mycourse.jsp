<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>老师</title>
	<link rel="stylesheet" type="text/css" href="css/zui.css">
	<link rel="stylesheet" type="text/css" href="css/theme/zui-theme-green.css">
	<link rel="stylesheet" type="text/css" href="css/table.css">

	<script type="text/javascript" src="lib/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/zui.js"></script>
</head>

<body style="text-align:center">
<!-- logo -->
<div style="text-align:center;background-color: white;">
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
            <a class="navbar-brand" href="mycourse.jsp" style="background-color:blue;"><font color="white">我的课程</font></a> 
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
            <a class="navbar-brand" href="login.jsp"><font color="black">登陆</font></a> 
        </ul> 
    </div> 
</nav>
</div>
<!-- head end -->
<!-- search -->
<div class="input-group">
  <div class="input-control search-box search-box-circle has-icon-left has-icon-right search-example" id="searchboxExample">
    <input id="inputSearchExample3" type="search" class="form-control search-input" placeholder="搜索">
    <label for="inputSearchExample3" class="input-control-icon-left search-icon"><i class="icon icon-search"></i></label>
  </div>
  <span class="input-group-btn">
    <button class="btn btn-primary" type="button">搜索</button>
  </span>
</div>
<!-- search end -->
<!-- video -->
<div style="margin:0 auto;">
<div class="cards">
  <div class="col-md-4 col-sm-6 col-lg-3">
    <div class="card"><a href="course.jsp"><img src="img/idxbg.jpg"></img></a></div>
    火影忍者
  </div>
  <div class="col-md-4 col-sm-6 col-lg-3">
    <div class="card"><a href="course.jsp"><img src="img/idxbg.jpg"></img></a></div>
    火影忍者
  </div>
  <div class="col-md-4 col-sm-6 col-lg-3">
    <div class="card"><a href="course.jsp"><img src="img/idxbg.jpg"></img></a></div>
    火影忍者
  </div>
  <div class="col-md-4 col-sm-6 col-lg-3">
    <div class="card"><a href="course.jsp"><img src="img/idxbg.jpg"></img></a></div>
    火影忍者
  </div>
</div>
</div>
<!-- vieo end -->
<!-- bottom -->
<div style="height:100px;width:100%;bottom:0px;text-align:center;background-color:white;position:absolute;padding-top:30px;">
Copyright© 2018 菏泽高级技工学校  版权所有 
联系电话:0530-3877888、3877900、3877968、18369000060   学校微信公众号：hzgjjx
</div>
<!-- bottom end -->
</body>
</html>