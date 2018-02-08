<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			body {
				font-family: "微软雅黑", Verdana, Arial, Helvetica, sans-serif;
			}
			li:visited
			li:hover
			li:active {
				background: #006DCC;
			}
			
			a:hover{
				background: #006DCC;
			}
			a{
				color: #000;
    text-decoration: none;
			}
			.pay-top {
				padding: 20px;
				height: 170px;
				width: 79%;
			}
			
			.top-left {
				    float: left;
    width: 65%;
    height: auto;
			}
			.top-right li{
				    text-align: center;
    width: 80px;
    float: left;
    display: block;
			}
			.top-right {
				    margin-top: 126px;
    float: right;
			}
			
			.logo {
				float: left;
				height: 150px;
				width: 150px;
			}
			
			.name-number {
				    height: 50px;
    float: right;
    width: 381px;
			}
			
			.ree {
				margin-left: 6px;
				margin-top: 40px;
				background: red;
				border: 1px;
				box-shadow: 2px 2px 1px 1px;
				border-radius: 3px;
				text-shadow: -1px 0px 0px;
			}
			
			
			
			.iframes{
				padding-top: 30px;
				border-top: 1px solid #DDD;
			}
			.kefu{
				right: 3px;
    position: absolute;
    padding: 0;
    height: 200px;
    width: 100px;
    text-align: center;
    border: 1px solid #2196F3;
    margin: 0;
    top: 138px;
			}
			.ke-top{
				    height: 53px;
    line-height: 55px;
    background: #2196F3;
    color: #FFF;
			}
			span{
				    padding: 0;
    margin: 0;
			}
			.active:visited{
			color: #006DCC;
			}
			.speak{
				margin-top: 19px;
			}
		</style>
	</head>

	<body>
		<div class="pay-top">
			<div class="top-left">
				<div class="ree-btn">
					<div class="logo">
						<img src="images/toux.png" / style="height: 110px;">
					</div>
					<div class="name-number">
						<span style="    font-size: 30px;
    color: #006DCC;
    margin-right: 10%;">编号：155813</span><span>余额：</span><span style="color: #006DCC;">0.00</span>
						<button class="ree">快速充值中心</button>
					</div>
				</div>
			</div>
			<div class="top-right">
				<ul>
					<li>
						<a href="${ctx}/chongzhi" target="chong" class="active">充值</a>
					</li>
					<li>
						<a href="${ctx}/tixian" target="chong">提款</a>
					</li>
					<li>
						<a href="#" target="chong">交易历史</a>
					</li>
				</ul>
			</div>
			<div class="kefu">
				<div class="ke-top">
					<span>客服中心</span>
				</div>
				<div class="speak">
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/button_old_11.gif" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
				</div>
				<div class="speak">
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/button_old_11.gif" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
				</div>
			</div>
		</div>
		<div class="iframes">
			<iframe id="chong" name="chong" src="${ctx}/chongzhi" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" style="position: relative;left: 10px;top: 10px;width: 99%;height: 700px;"></iframe>
	</body>

</html>