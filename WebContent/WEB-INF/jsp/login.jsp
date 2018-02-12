<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>欢迎您加入本站</title>
		<link rel="stylesheet" href="${ctx}/css/index.css" />
		<link rel="stylesheet" href="${ctx}/css/bootstrap.min.css" />
		<script type="text/javascript" src="${ctx}/js/bootstrap.js"></script>
		<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/ShowDiv.js"></script>
		<script type="text/javascript" src="${ctx}/js/bootstrap-3.3.7.js" ></script>
		<script type="text/javascript">
		 
		      //验证码 
		      var code; 
		      function createCode(){ 
		        code = '';//首先默认code为空字符串 
		        var codeLength = 4;//设置长度，这里看需求，我这里设置了4 
		        var codeV = $("#code"); 
		        //设置随机字符 
		        var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z'); 
		        for(var i = 0; i < codeLength; i++){ //循环codeLength 我设置的4就是循环4次   
		           var index = Math.floor(Math.random()*36); //设置随机数范围,这设置为0 ~ 36  
		           code += random[index]; //字符串拼接 将每次随机的字符 进行拼接 
		      } 
		        codeV.val(code);//将拼接好的字符串赋值给展示的Value 
		      } 
		      //页面开始加载验证码 
		      //createCode(); 
		      //验证码Div加载点击事件 
		     /*  $("code").bind('click',function() { 
		          createCode(); 
		        });  */
		      function validate(){
		          var oValue = document.getElementById('input').value.toUpperCase();
		          if(oValue ==0){
		              alert('请输入验证码');
		          }else if(oValue != code){
		              alert('验证码不正确，请重新输入');
		              oValue = ' ';
		              createCode();
		          }else{
		              window.open('http://www.baidu.com','_self');
		          }
		      }

		      //设置此处的原因是每次进入界面展示一个随机的验证码，不设置则为空
		  /*     window.onload = function (){

		        
		      } */

		</script>
		<style type="text/css">
		#code{  
                font-family:Arial;  
                font-style:italic;  
                font-weight:bold;  
                border:0;  
                letter-spacing:2px;  
                color:blue;  
            }
		
		</style>
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
			<div class="navs" style="position: relative;">
			<!--导航-->
			<div class="logos">
				<img src="${ctx}/images/logo.png" />
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
						<a id="t1" value="点击弹出层" onclick="ShowDiv('MyDiv','fade')" />代理合作
							<i class="trans"></i>
						</a>
					</li>
					<li>
						<a id="t2">最新优惠
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
			<!--弹出层-->
			<div id="fade" class="black_overlay">
			</div>
			<div id="MyDiv" class="white_content">
			<div style="text-align: right; cursor: default; height: 40px;">
			<span style="font-size: 16px;" onclick="CloseDiv('MyDiv','fade')">关闭</span>
			</div>
						这是一个弹出框
			</div>
		</div><!--style="bottom: 111px;-->
		<div class="content">
			<div class="header">
				<!--轮播-->
				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators" style="bottom: 143px;">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="${ctx}/images/img1.png" alt="First slide">
						</div>
						<div class="item">
							<img src="${ctx}/images/img2.png" alt="Second slide">
						</div>
						<div class="item">
							<img src="${ctx}/images/img3.png" alt="Third slide">
						</div>
					</div>
					<!--登录-->
					<div class="login account" id="div1" style="display:block">
						<div class="box">
							<div class="t">用户登录 <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2054344716&site=qq&menu=yes"></a></span></div>
							<div>
							<form action="${pageContext.request.contextPath }/UsernameAndPassword" method="post" id="login_form">
								
								 <c:choose>
						<c:when test="${requestScope.message == null }">
							<span style="padding-top: 0px;margin-left: 70px;"></span>
						</c:when>
						<c:otherwise>
							<span style="padding-top: 5px"><font style="color:red;">${requestScope.message}</font></span>
						</c:otherwise>
						</c:choose>
									<input type="hidden" name="go" value="pc">
									<div class="label">
										<em class="ico-user"></em><input type="text" name="memberno" class="txt" placeholder="请输入您的账号">
									</div>
									<div class="label2">
										<em class="ico-pwd"></em><input type="password" name="passpwd" class="txt" placeholder="您的密码">
									</div>
									<!-- <div class="label2" style="width: 150px;float: left;">
										<em class="ico-code"></em><input type="text" name="piccode" class="txt1" placeholder="验证码">
									</div>
									<div class="code" style="float:left;width: 80px;"><img src="" alt="点击更换" draggable="false"></div> -->
									<div class="submit"><input type="submit" class="subinput" value="登录" id="login"></div>
									<div class="reg userreg">
										<a id="showHidden" >注册</a>
									</div>
								</form>
								</div>
							</div>
					</div>
					<!--登录end-->
					<!--注册-->
					<div class="login" id="div2" style="display:none">
						<div class="box">
							<div class="t">用户注册 <span><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2054344716&site=qq&menu=yes"></a></span></div>
							<div>
			                       <form action="${pageContext.request.contextPath }/register" method="post" id="register_form">
									<input type="hidden" name="go" value="pc">
									<div class="label">
										<em class="ico-user"></em><input type="text" name="loginname" class="txt" placeholder="请输入您的账号">
									</div>
									<div class="label2">
										<em class="ico-pwd"></em><input type="password" name="password" class="txt" placeholder="您的密码">
									</div>
									<div class="label2">
										<em class="ico-pwd"></em>   <input type="password"  class="txt" placeholder="确认密码">
									</div>
									<!-- <div class="label2" style="width: 150px;float: left;">
									<em class="ico-code"></em>    
									<input type = "text" name="piccode"  id = "input"  class="txt1" value="" placeholder="验证码">
									</div>  -->
									<!-- <div class="label2">
									<em class="ico-code"></em>  
										 <input type = "button" id="code" onclick="createCode()"/>  
										 <input type="text" name="piccode" 	class="txt1" placeholder="验证码">
									</div> -->
									<!-- <div class="code" style="float:left;width: 80px;">
									   <input type = "button" value = "验证" onclick = "validate()"/>
									<img src="" alt="点击更换" draggable="false" style="margin:8px;">
									</div> -->
									<div class="submit"><input type="button" class="subinput" value="完成" id="login"></div>
									<div class="reg userreg">
										<a id="showback">返回登录</a>
									</div>
								</form>
								</div>
						</div>
					</div>
					<!--注册end-->
				</div>
			</div>
			</div>
			
	
		<!--list-->
		<div class="list">
			<div class="caizhong">
				<img src="${ctx}/images/list.png" width="1000" height="140">
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
				<img src="${ctx}/images/links.png"><br> Copyright ©2012-2017 五福彩票. All Rights Reserved
			</div>
		</div>
		<script type="text/javascript" src="${ctx}/js/show.js"></script>
	</body>

</html>