<%@ page language="java" import="entity.*" import="java.util.List"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>管理员</title>
<link rel="stylesheet" type="text/css" href="css/zui.css">
<link rel="stylesheet" type="text/css"
	href="css/theme/zui-theme-green.css">
<link rel="stylesheet" type="text/css" href="css/table.css">

<script type="text/javascript" src="lib/jquery/jquery.js"></script>
<script type="text/javascript" src="js/zui.js"></script>
</head>
<body>
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
            <a class="navbar-brand" href="mycourse.jsp"><font color="black">我的课程</font></a> 
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="teacher.jsp"><font color="black">教师管理界面</font></a> 
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="admin.jsp" style="background-color:blue;"><font color="white">管理员管理界面</font></a> 
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
<!-- slide nav -->
<div style="position:absolute;">
<nav class="menu" data-ride="menu" style="width: 180px;padding-top:10%">
  <ul id="treeMenu" class="tree tree-menu" data-ride="tree">
    <li>
      <a href="#"><i class="icon icon-circle-blank"></i>课程管理</a>
    </li>
    <li>
      <a href="#"><i class="icon icon-circle-blank"></i>教师管理</a>
    </li>
    <li>
      <a href="#"><i class="icon icon-circle-blank"></i>学生管理</a>
    </li>
  </ul>
</nav>
</div>
<!-- slide nav end -->
		<div class="main-content" style="padding-top:0px;">
			<div class="wrapper">
				<div class="panel" id="course" style="display: block">
					<div class="panel-heading">
						<h5>课程管理</h5>
					</div>
					<div class="panel-body">
						<div class="pull-right">
							<a href="sqltable.html"><button class="btn btn-primary">添加栏目</button></a>
						</div>
						<form action="#" method="post">
							<div class="search">
								搜索名称： <input type="text" class="text" name="topic"
									placeholder="搜索名称" style="width: 150px;"> &nbsp;
								<button type="submit" value="查询"
									class="btn btn-primary-outline btn-xs">
									<i class="icon-search"></i>&nbsp;查询
								</button>
							</div>
						</form>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th width="50" class="text-center">课程ID</th>
									<th width="200" class="text-center">名称</th>
									<th width="150" class="text-center">教师</th>
									<th width="140" class="text-center">详情</th>
									<th width="140" class="text-center">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td class="text-center">英雄联盟</td>
									<td class="text-center">韩佳俊</td>
									<td class="text-center">暂无</td>
									<td class="text-center">
										<button type="button" class="btn btn-sm btn-success">
											<i class="icon-edit"></i> 编辑
										</button>
										<button type="button" class="btn btn-sm btn-danger">
											<i class="icon-trash"></i> 删除
										</button>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th colspan="8">
										<div class="pull-right">
											<ul class="pager">
												<li class="previous"><a href="#">«</a></li>
												<li><a href="#">1</a></li>
												<li class="active"><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">...</a></li>
												<li><a href="#">10</a></li>
												<li class="next"><a href="#">»</a></li>
											</ul>
										</div>
									</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
				<div class="panel" id="teacher" style="display: none">
					<div class="panel-heading">
						<h5>教师管理</h5>
					</div>
					<div class="panel-body">
						<div class="pull-right">
							<a href="sqltable.html"><button class="btn btn-primary">添加栏目</button></a>
						</div>
						<form action="#" method="post">
							<div class="search">
								搜索名称： <input type="text" class="text" name="topic"
									placeholder="搜索名称" style="width: 150px;"> &nbsp;
								<button type="submit" value="查询"
									class="btn btn-primary-outline btn-xs">
									<i class="icon-search"></i>&nbsp;查询
								</button>
							</div>
						</form>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th width="40" class="text-center"><input type="checkbox"
										name="checkbox"></th>
									<th width="50" class="text-center">教师ID</th>
									<th width="150" class="text-center">姓名</th>
									<th width="200" class="text-center">密码</th>
									<th width="140" class="text-center">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><input type="checkbox"
										name="checkbox"></td>
									<td class="text-center">1</td>
									<td class="text-center">韩佳俊</td>
									<td class="text-center">叫我大哥</td>
									<td class="text-center">
										<button type="button" class="btn btn-sm btn-success">
											<i class="icon-edit"></i> 编辑
										</button>
										<button type="button" class="btn btn-sm btn-danger">
											<i class="icon-trash"></i> 删除
										</button>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th colspan="8">
										<div class="pull-right">
											<ul class="pager">
												<li class="previous"><a href="#">«</a></li>
												<li><a href="#">1</a></li>
												<li class="active"><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">...</a></li>
												<li><a href="#">10</a></li>
												<li class="next"><a href="#">»</a></li>
											</ul>
										</div>
									</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
				<div class="panel" id="student" style="display: none">
					<div class="panel-heading">
						<h5>学生管理</h5>
					</div>
					<div class="panel-body">
						<div class="pull-right">
							<a href="sqltable.html"><button class="btn btn-primary">添加栏目</button></a>
						</div>
						<form action="#" method="post">
							<div class="search">
								搜索名称： <input type="text" class="text" name="topic"
									placeholder="搜索名称" style="width: 150px;"> &nbsp;
								<button type="submit" value="查询"
									class="btn btn-primary-outline btn-xs">
									<i class="icon-search"></i>&nbsp;查询
								</button>
							</div>
						</form>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th width="50" class="text-center">学生ID</th>
									<th width="200" class="text-center">姓名</th>
									<th width="200" class="text-center">密码</th>
									<th width="200" class="text-center">权限</th>
									<th width="140" class="text-center">操作</th>
								</tr>
							</thead>
							<tbody><tr>
									<td class="text-center">1</td>
									<td class="text-center">吕浩田</td>
									<td class="text-center">大哥你好</td>
									<td class="text-center">学生</td>
									<td class="text-center">
									<button type="button" class="btn btn-sm btn-success">
											<i class="icon-edit"></i> 编辑
										</button>
										<button type="button" class="btn btn-sm btn-danger">
											<i class="icon-trash"></i> 删除
										</button>
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th colspan="8">
										<div class="pull-right">
											<ul class="pager">
												<li class="previous"><a href="#">«</a></li>
												<li><a href="#">1</a></li>
												<li class="active"><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">...</a></li>
												<li><a href="#">10</a></li>
												<li class="next"><a href="#">»</a></li>
											</ul>
										</div>
									</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	<script type="text/javascript" src="js/table.js"></script>
	<!-- bottom -->
<div style="height:100px;width:100%;bottom:0px;text-align:center;background-color:white;position:relative;padding-top:30px;">
Copyright© 2018 菏泽高级技工学校  版权所有 
联系电话:0530-3877888、3877900、3877968、18369000060   学校微信公众号：hzgjjx
</div>
<!-- bottom end -->
</body>
<script type="text/javascript">
function displayCourse()
{
	var divCourse = document.getElementById("course");
	divCourse.style.display="block";
	var divTeacher = document.getElementById("teacher");
	divTeacher.style.display="none";
	var divStudent = document.getElementById("student");
	divStudent.style.display="none";
}
function displayTeacher()
{
	var divCourse = document.getElementById("course");
	divCourse.style.display="none";
	var divTeacher = document.getElementById("teacher");
	divTeacher.style.display="block";
	var divStudent = document.getElementById("student");
	divStudent.style.display="none";
}
function displayStudent()
{
	var divCourse = document.getElementById("course");
	divCourse.style.display="none";
	var divTeacher = document.getElementById("teacher");
	divTeacher.style.display="none";
	var divStudent = document.getElementById("student");
	divStudent.style.display="block";
}
</script>
</html>