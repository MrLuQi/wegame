<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			body{
				font-family: "微软雅黑";
			}
			p{
				    position: absolute;
    color: #D8D8D8;
    font-size: 10px;
    top: 415px;
			}
			h2{
				    font-size: 18px;
				    color: #006DCC;
    position: absolute;
    top: 434px;
			}
			.tishi{
				    background: #2196f3;
				    border-bottom-right-radius: 100px;
    border-top-left-radius: 100px;
    text-align: center;
				width: 20%;
				height: 50px;
				line-height: 40px;
				padding: 10px;
				margin: 10px;
				float: left;
			}
			.centen{
				width: 100%;
				height: 85px;
			}
			.xuanzhe{
				height: 80px;
    width: 100%;
    position: absolute;
    top: 140px;
    left: 30px;
			}
			.box1{
				float: left;
			}
			.box2{
				float: left;
				padding: 10px;
				margin-left: 20px;
				border: 1px solid #D9D9D9;
				height: 250px;
				width: 300px;
			}
			.bll{
				height: 20px;
				width: 20px;
				border: 10px;
				border-radius: 50%;
				background: #ADADAD;
			}
			.input-group-btn{
				    background: rgb(255, 42, 42);
    color: #dadfe9;
    left: 30px;
    border: 1px;
    border-radius: 1px;
    box-shadow: 2px 2px 1px #000000;
    position: absolute;
    top: 549px;
    height: 30px;
    width: 100px;
			}
		</style>
	</head>
	<body>
		<div class="box">
		<div class="centen">
			<div class="tishi">1.&nbsp;填写金额</div>
			<div class="tishi">2.&nbsp;选择银行</div>
			<div class="tishi">3.&nbsp;充值到账</div>
		</div>
		<div class="xuanzhe">
			<div class="box1">
				银行卡汇款
			</div>
			<div class="box2">
				<div class="bll"></div>
				<div class="box-ul">
					<ul>
						<li>银行名称：中国工商银行</li>
					</ul>
					<ul>
						<li>收款人：某某某</li>
					</ul>
					<ul>
						<li>开户网点：中国工商银行</li>
					</ul>
					<ul>
						<li>银行账号：3636363263363363</li>
					</ul>
				</div>
			</div>
		</div>
		<p>温馨提示：为确保财务第一时间为您添加游戏额度，请你尽量不要转账整数&nbsp;(例如：收入￥：5000，&nbsp;请￥5000.68)谢谢！</p>
		</div>
		<h2 style="color: #006DCC;">友情提示：请每次入款前登录会员核对银行账号是否使用。入款至已过期账号，公司无法查收，恕不负责！<br />在您转账成功后，请点击“我已存款”，通知客服确认到账哦！</h2>
		<input type="button" class="input-group-btn" id="input-btn" value="开始充值"/></input>
	</body>
</html>
