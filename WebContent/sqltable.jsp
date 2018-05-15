<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body align="center">
<div class="container" style="margin-top:150px;">
        <div class="form row">
            <div class="form-horizontal col-md-offset-3" id="login_form">
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="数据1" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="数据2" id="username" name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <div class="form-group">
                            <i class="fa fa-lock fa-lg"></i>
                            <input class="form-control required" type="file"  id="password" name="password"/>
                    </div>
                    <div class="form-group col-md-offset-9">
                        <a href="#" onclick="window.opener=null;window.open('','_self');window.close();"><button type="submit" class="btn btn-success" name="submit" style="width:300px;" onClick="successs();">确认提交</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script language="javascript">
function success(){
	alert("提交成功！")
}
</script> 
</html>