<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>首页</title>
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container">
			<!--公告-->
			<div class="notice">
	        	<div class="text">
	        		<div class="word">
	                    站内公告：
	                    <div class="scroll_zi">
	                    	<div id="marqueeBox" style="overflow:hidden;height:30px"></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!--导航-->
			<div class="logos">
				<img src="images/logo.png" />
			</div>
			<div class="menu">
				<ul>
					<li>
						<a href="index.html" class="trans on">首页
							<i class="trans"></i>
						</a>
					</li>
					<li>
						<a href="index.html">立即开户
							<i class="trans"></i>
						</a>
					</li>
					<li>
						<a href="index.html">代理合作
							<i class="trans"></i>
						</a>
					</li>
					<li>
						<a href="index.html">最新优惠
							<i class="trans"></i>
						</a>
					</li>
					<li>
						<a href="index.html">常见问题
							<i class="trans"></i>
						</a>
					</li>
					<li>
						<a href="index.html">关于我们
							<i class="trans"></i>
						</a>
					</li>
				</ul>	
			</div>
		</div>
			<div class="content">
					<div class="header">
						<!--轮播-->
						<div id="myCarousel" class="carousel slide">
						    <!-- 轮播（Carousel）指标 -->
						    <ol class="carousel-indicators" style="bottom: 111px;">
						        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						        <li data-target="#myCarousel" data-slide-to="1"></li>
						        <li data-target="#myCarousel" data-slide-to="2"></li>
						    </ol>   
						    <!-- 轮播（Carousel）项目 -->
						    <div class="carousel-inner">
						        <div class="item active">
						            <img src="images/img1.png" alt="First slide">
						        </div>
						        <div class="item">
						            <img src="images/img2.png" alt="Second slide">
						        </div>
						        <div class="item">
						            <img src="images/img3.png" alt="Third slide">
						        </div>
						    </div>
				<!--登录-->
						<div class="login account">
			                <div class="box">
			                    <div class="t">用户登录 <span><a href="" target="_blank"></a></span></div>
			                    <div>
			                        <form action="login" method="post" id="login_form">
			                            <input type="hidden" name="go" value="pc">
			                            <div class="label">
			                                <em class="ico-user"></em><input type="text" name="username" class="txt" placeholder="请输入您的账号">
			                            </div>
			                            <div class="label2">
			                                <em class="ico-pwd"></em><input type="password" name="passwd" class="txt" placeholder="您的密码">
			                            </div>
			                            <div class="label2" style="width: 150px;float: left;">
			                                <em class="ico-code"></em><input type="text" name="piccode" class="txt1" placeholder="验证码">
			                            </div>
			                            <div class="code" style="float:left;width: 80px;"><img src="" alt="点击更换" draggable="false"></div>
			                            <div class="submit"><input type="submit"class="subinput" value="登录" id="login"></div>
			                            <div class="reg userreg"><a href="javascript:void(0)">注册</a></div>
			                        </form>
			                    </div>
			                </div>
			            </div>
			    <!--登录end-->
			    	</div>
				</div>
			</div>
		<!--list-->
		<div class="list">
			<div class="caizhong">
	    		<img src="images/list.png" width="1000" height="140">
		        <ul>
		        	<li>分分彩</li>
		            <li>重庆时时彩</li>
		            <li>香港六合彩</li>
		            <li>北京赛车PK拾</li>
		            <li>PC蛋蛋28</li>
		            <li>幸运飞艇</li>
		        </ul>
		    </div>
		</div>
	    <!--footer-->
	    <div class="footer">
			<div class="copyright">
		    	<img src="images/links.png"><br>
		    	Copyright ©2012-2017 五福彩票. All Rights Reserved
		    </div>
		</div>
		<script type="text/javascript" src="js/bootstrap.js" ></script>
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
	</body>
</html>
