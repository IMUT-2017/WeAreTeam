<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/zui.css">
	<link rel="stylesheet" type="text/css" href="css/theme/zui-theme-green.css">
	<link rel="stylesheet" type="text/css" href="css/table.css">

	<script type="text/javascript" src="lib/jquery/jquery.js"></script>
	<script type="text/javascript" src="js/zui.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("a").click(function(){
				var aText=$(this).text();				
				if(aText=="删除"){
					alert("确定删除！");
					$(this).parent().parent().remove();
				}
			});
		});
	</script>7
</head>
<body>

		<div class="wrapper">
			<div class="panel">
				<div class="panel-heading"><h5>教师管理</h5></div>
				<div class="panel-body">
					<div class="pull-right"><a href="sqltable.jsp"><button class="btn btn-primary">添加栏目</button></a></div>
					<form action="findUserByname?type=1&pageIndex=1&pageNum=8" method="post">
						<div class="search">
   							搜索名称：
   								<input type="text" class="text" name="teachername" placeholder="搜索名称" style="width:150px;">
   							&nbsp;<button type="submit" value="查询" class="btn btn-primary-outline btn-xs"><i class="icon-search"></i>&nbsp;查询</button>  
   						</div>
					</form>
					<table class="table table-bordered table-hover table-striped">
				        <thead>
				          	<tr>
				          		<th width="40" class="text-center"><input type="checkbox" name="checkbox"></th>
					            
					            
					            <th width="200" class="text-center">教师编号</th>
					            <th width="150" class="text-center">姓名</th>
					            <th width="150" class="text-center">密码</th>
					            <th width="140" class="text-center">操作</th>
				          	</tr>
				        </thead>
				      <c:forEach items="${list }" var="user">  
				        <tbody>
				          	<tr>
					          	<td class="text-center"><input type="checkbox" name="checkbox"></td>
					           	            
					            <td class="text-center">${user.loginname}</td>
					            <td class="text-center">${user.username}</td>
					             <td class="text-center">${user.password}</td>
					            <td class="text-center">
									<button type="button" class="btn btn-sm btn-success"><i class="icon-edit"></i> 编辑</button>
									<a href="deleteTeacher?id=${user.id }"> <button type="button" class="btn btn-sm btn-danger"><i class="icon-trash"></i>删除</button></a>
					            </td>
				          	</tr>
				          	
				        </tbody>
				       </c:forEach> 
				        <tfoot>
							<tr>
					            <th colspan="8">
									<div class="pull-right">
										<c:if test="${pageIndex>1 }">
       		<a href="seeAllclass?pageIndex=${pageIndex-1 }&pageNum=4" >上一页</a>
         </c:if>
            <a href="seeAllclass?pageIndex=${pageIndex+1 }&pageNum=4" >下一页</a>	
									</div>
					            </th>
				          	</tr>
				        </tfoot>
				    </table>
				</div>
			</div>
		</div>
	
	
</body>
<script type="text/javascript" src="js/table.js"></script>
</html>