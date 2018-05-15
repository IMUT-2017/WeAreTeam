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

<body>
<div class="main">
	<aside class="sidebar">
		<div class="sidebar-menu">
			<div class="item vertical">
				<a href="#">
					<i class="icon icon-server"></i>
					<span>课程1</span>
					<span class="arrow"></span>
				</a>
				<div class="vertical-menu">
					<a href="#">第一节</a>
					<a href="#">第二节</a>
					<a href="#">第三节</a>
					<a href="course.html">添加新节</a>
				</div>
			</div>
			<div class="item vertical">
				<a href="#">
					<i class="icon icon-server"></i>
					<span>课程2</span>
					<span class="arrow"></span>
				</a>
				<div class="vertical-menu">
					<a href="#">第一节</a>
					<a href="#">第二节</a>
					<a href="#">第三节</a>
					<a href="course.html">添加新节</a>
				</div>
			</div>
		</div>
	</aside>
	<div class="main-content">
		<div class="wrapper">
		<ol class="breadcrumb">
  				<li><a href="#"><i class="icon icon-home"></i>课程1</a></li>
			</ol>
			<div class="panel">
				<div class="panel-heading"><h5>新节</h5></div>
				<div class="panel-body">
					<div class="pull-right"><a href="sqltable.html"><button class="btn btn-primary">添加栏目</button></a></div>
					<form action="#" method="post">
						<div class="search">
   							搜索名称：
   								<input type="text" class="text" name="topic" placeholder="搜索名称" style="width:150px;">
   							&nbsp;<button type="submit" value="查询" class="btn btn-primary-outline btn-xs"><i class="icon-search"></i>&nbsp;查询</button>  
   						</div>
					</form>
					<table class="table table-bordered table-hover table-striped">
				        <thead>
				          	<tr>
				          		<th width="40" class="text-center"><input type="checkbox" name="checkbox"></th>
					            <th width="50" class="text-center">ID</th>
					            <th>栏目名称</th>
					            <th width="200" class="text-center">节名称</th>
					            <th width="150" class="text-center">课件数</th>
					            <th width="140" class="text-center">作业数</th>
				          	</tr>
				        </thead>
				        <tbody>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
					            </td>
				          	</tr>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					            <td class="text-center">1</td>
					            <td>这是栏目名称</td>
					            <td class="text-center">--</td>
					            <td class="text-center">2016-06-05 16:20</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i> 删除</button>
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
</div>
	<script type="text/javascript" src="js/table.js"></script>
</body>
</html>