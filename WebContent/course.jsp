<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="News Times Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/student.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<!-- ZUI 标准版压缩后的 CSS 文件 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/zui/1.8.1/css/zui.min.css">

<!-- ZUI Javascript 依赖 jQuery -->
<script src="//cdnjs.cloudflare.com/ajax/libs/zui/1.8.1/lib/jquery/jquery.js"></script>
<!-- ZUI 标准版压缩后的 JavaScript 文件 -->
<script src="//cdnjs.cloudflare.com/ajax/libs/zui/1.8.1/js/zui.min.js"></script>
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
<!-- title -->
<h2><p class="text-center">JavaWeb<br>第一节：火影忍者</p></h2>
<!-- title end -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<!-- video-grids -->
				<div class="video-grids">
					<div class="col-md-8 video-grids-left">
						<div class="video-grids-left1" style="text-align:center;">
							<video src="video/example.mp4" controls="controls" style="width:100%"></video>
							<br><br>
							<button class="btn btn-primary">上一节</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary">收藏</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary">下一节</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<br><br>
						</div>
						<div class="video-grids-left2">
							<div class="course_demo1">
								<ul id="flexiselDemo1">	
									<li>
										<div class="item">
											<img src="images/10.jpg" alt=" " class="img-responsive" />
											<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
													<i> </i>
											</a>
											<div id="small-dialog" class="mfp-hide">
												<iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
											</div>
											<div class="floods-text">
												<h3>The fed and inequality <span>Politics <label>|</label> <i>Adom Smith</i></span></h3>
												<p>5:56</p>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<img src="images/11.jpg" alt=" " class="img-responsive" />
											<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
													<i> </i>
											</a>
											<div id="small-dialog" class="mfp-hide">
												<iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
											</div>
											<div class="floods-text">
												<h3>The fastest insect in the world <span>Politics <label>|</label> <i>Adom Smith</i></span></h3>
												<p>5:56</p>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<img src="images/12.jpg" alt=" " class="img-responsive" />
											<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
													<i> </i>
											</a>
											<div id="small-dialog" class="mfp-hide">
												<iframe src="" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
											</div>
											<div class="floods-text">
												<h3>Billionaires versus Millionaires<span>Politics <label>|</label> <i>Adom Smith</i></span></h3>
												<p>5:56</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
											<!-- pop-up-box -->
												<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
												<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
												<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
											<!--//pop-up-box -->
											<script>
												$(document).ready(function() {
												$('.popup-with-zoom-anim').magnificPopup({
													type: 'inline',
													fixedContentPos: false,
													fixedBgPos: true,
													overflowY: 'auto',
													closeBtnInside: true,
													preloader: false,
													midClick: true,
													removalDelay: 300,
													mainClass: 'my-mfp-zoom-in'
												});
																												
												});
											</script>
									<!-- requried-jsfiles-for owl -->
										<script type="text/javascript">
							 $(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 3,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems: 2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							 });
							  </script>
							 <script type="text/javascript" src="js/jquery.flexisel.js"></script>
						</div>
					</div>
					<div class="col-md-4 video-grids-right">
						<div class="sap_tabs">	
							<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
								<ul class="resp-tabs-list">
									<li class="resp-tab-item grid1" aria-controls="tab_item-0" role="tab"><span>课件文档</span></li>
									<li class="resp-tab-item grid2" aria-controls="tab_item-1" role="tab"><span>我的收藏</span></li>
								</ul>				  	 
								<div class="resp-tabs-container">
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
											<div class="tab_list">
												<img src="images/10.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="tab_list1">
												<ul>
													<li><a href="#">作业</a> <label>|</label></li>
													<li>31.12.2015</li>
												</ul>
												<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="facts">
											<div class="tab_list">
												<img src="images/10.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="tab_list1">
												<ul>
													<li><a href="#">答案</a> <label>|</label></li>
													<li>31.12.2015</li>
												</ul>
												<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="tab_list">
												<img src="images/12.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="tab_list1">
												<ul>
													<li><a href="#">视频1</a> <label>|</label></li>
													<li>31.12.2015</li>
												</ul>
												<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="facts">
											<div class="tab_list">
												<img src="images/11.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="tab_list1">
												<ul>
													<li><a href="#" class="orange1">视频2</a> <label>|</label></li>
													<li>31.12.2015</li>
												</ul>
												<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="facts">
											<div class="tab_list">
												<img src="images/10.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="tab_list1">
												<ul>
													<li><a href="#" class="orange2">视频3</a> <label>|</label></li>
													<li>31.12.2015</li>
												</ul>
												<p><a href="#">Nam libero tempore, cum soluta nobis.</a></p>
											</div>
										  <div class="clearfix"> </div>
										</div>
									</div>
								</div>
								<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
								<script type="text/javascript">
									$(document).ready(function () {
										$('#horizontalTab').easyResponsiveTabs({
											type: 'default', //Types: default, vertical, accordion           
											width: 'auto', //auto or any width like 600px
											fit: true   // 100% fit in a container
										});
									});
								</script>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			<!-- //video-grids -->
			<!-- news-and-events -->
				<div class="news">
					<div class="news-grids">
						<div class="col-md-12 news-grid-left">
							<h3>评论区</h3>
							
                <div class="form-group" style="margin-top:50px;text-align:center;">
                    <div class="form-group">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-success" name="submit" style="width:300px;">发表评论</button>
                    </div>
                </div>
							<ul>
								<li>
									<div class="news-grid-left1">
										<img src="images/16.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="news-grid-right1">
										<h5>韩佳俊<label>|</label> <i>2018-5-15</i></h5>
										<p>真好看～</p>
									</div>
									<div class="clearfix"> </div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			<!-- //news-and-events -->
		</div>
	</div>
<!-- //banner-bottom -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
    <!-- bottom -->
<div style="height:100px;width:100%;bottom:0px;text-align:center;background-color:white;position:relative;padding-top:30px;">
Copyright© 2018 菏泽高级技工学校  版权所有 
联系电话:0530-3877888、3877900、3877968、18369000060   学校微信公众号：hzgjjx
</div>
<!-- bottom end -->
</body>
</html>