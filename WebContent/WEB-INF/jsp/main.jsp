<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>欢迎光临</title>
	<link rel="stylesheet" href="${ctx}/css/main.css" />
	<script>
		//tap切换导航
		function Tabs(tabs_name, contents_name, tabs_checked_style, contents_checked_style) {
			var tabs = document.querySelectorAll(tabs_name),
				contents = document.querySelectorAll(contents_name),
				e_mark = 0;
			for(var i = 0, len = tabs.length; i < len; i++) {
				tabs[i].num = i;
				tabs[i].onclick = function() {
					tabs[e_mark].classList.toggle(tabs_checked_style);
					tabs[this.num].classList.toggle(tabs_checked_style);
					contents[e_mark].classList.toggle(contents_checked_style);
					contents[this.num].classList.toggle(contents_checked_style);
					e_mark = this.num;
				};
			}
		}
	</script>
	<style>
		a{
			color: #F7F7F7;
		}
		a:hover{
			color: #C9302C;
		}
		li {
			width: 60px;
			display: block;
			float: left;
			border-right: 1px solid #F7F7F7;
		}
		#content-box {
			position: relative;
			clear: both;
			width: 100%;
			height: 38px;
			margin: 0 2px;
		}
		
		.contents {
			position: absolute;
			left: 189px;
			top: 5px;
			width: 1000px;
			height: 30px;
			font-size: 12px;
			text-align: center;
			z-index: 0;
			opacity: 0;
			visibility: hidden;
		}
		
		.contents-checked {
			z-index: 1;
			opacity: 1;
			visibility: visible;
		}
		.b5{
			background: url(images/ball4.gif) no-repeat 7px 1px;
			    height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
		}
		.t_k3{
			    float: left;
    height: 45px;
    width: 48%;
		}
	</style>
	<script type="text/javascript">
		window.onload = function main() {
			Tabs(".list-item", ".contents", "list-item-checked", "contents-checked");

		}
	</script>
</head>

<body class="skin_blue">
	<div id="header" class="header">
		<!--logo-->
		<div class="logo" style="top:0px; margin-left:5px;">
			<img src="images/100000019.png" style="width: 200px; height: 66px;">
		</div>
		<!--top-->
		<div class="top">
			<div class="menu">
				<div class="menu1">
					<div id="result_info" class="draw_number">
						<div>江苏快3</div>
						<div>20180124048期开奖</div>
					</div>
					<div id="result_balls" target="_blank" class="t_k3 l_jsk3">
						<div class="b5"></div>
						<div class="b5"></div>
						<div class="b5"></div>
					</div>
				</div>

				<!--选项-->

				<div class="menu2">
					<span><a  href="${ctx}/alone"target="Exhibition">未结明细</a></span> |
					<span><a href="${ctx}/day"target="Exhibition">今天已结</a></span> |
					<span><a href="${ctx}/alone"target="Exhibition">报表查询</a></span> |
					<span><a href="${ctx}/result"target="Exhibition">开奖结果</a></span> <br>
					<span><a href="${ctx}/information"target="Exhibition">个人资讯</a></span> |
					<span><a href="${ctx}/change"target="Exhibition">修改密码</a></span> |
					<span><a href="${ctx}/alone"target="Exhibition">游戏规则</a></span> |
					<span id="skinPanel" class=""><a href="javascript:void(0)" class="selected">更换皮肤</a><ul
                            style="display: none;"><li><i style="background:#dc2f39"></i><a
                                    href="javascript:changeSkin('red')">红色</a></li><li><i
                                    style="background:#5382bc"></i><a href="javascript:changeSkin('blue')">蓝色</a></li><li><i
                                    style="background:#cdcdcd"></i><a
                                    href="javascript:changeSkin('gray')">灰色</a></li></ul></span>
				</div>
				<div class="menu3">
					<a href="${ctx }/toLogout" class="logout"></a>
				</div>
				<div style="clear:both;"></div>
			</div>

			<!--导航-->

			<div class="lotterys">
				<div class="show" id="list-title">
					<a href="${ctx }/jsks" target="Exhibition" class="list-item list-item-checked">
						<span>江苏快3</span>
					</a>
					<a href="${ctx }/bjsc" target="Exhibition" class="list-item">
						<span>北京赛车</span>
					</a>
					<a href="${ctx }/pcdd" target="Exhibition" class="list-item">
			 			<span>PC蛋蛋</span>
					</a>
					<a href="${ctx }/lhc" target="Exhibition" class="list-item">
						<span>六合彩</span>
					</a>
					<a href="${ctx }/ssc"target="Exhibition" class="list-item">
						<span>重庆时时彩</span>
					</a>
					<a href="${ctx }/jsft"target="Exhibition" class="list-item">
						<span>急速飞艇</span>
					</a>
				</div>
			</div>

			<!--导航-->

			<div id="content-box">
				<div class="contents contents-checked">
					<li>
						<a href="${ctx }/jiangsukuaisan" target="Exhibition">大小骰宝</a>

						<a href="${ctx }/jsks" target="Exhibition">大小骰宝</a>
					</li>
				</div>
				<div class="contents">
					<li>
						<a href="${ctx }/bjsc" target="Exhibition">两面</a>
					</li>
					<li>
						<a href="${ctx }/bjscDH" target="Exhibition">1~10</a>
					</li>
					<li>
						<a href="${ctx }/bjscGYJZH" target="Exhibition">冠军组合</a>
					</li>
				</div>
				<div class="contents">
					<li>
						<a href="${ctx }/pcdd" target="Exhibition">PC蛋蛋</a>
					</li>
				</div>
				<div class="contents">
					<li>
						<a>特码</a>
					</li>
					<li>
						<a>色波</a>
					</li>
					<li>
						<a>合肖</a>
					</li>
					<li>
						<a>正码</a>
					</li>
					<li>
						<a>正码1~6</a>
					</li>
					<li style="width: 120px;">
						<a>生肖正肖~肖总肖</a>
					</li>
					<li>
						<a>头尾数</a>
					</li>
					<li>
						<a>连肖连尾</a>
					</li>
					<li>
						<a>连码</a>
					</li>
					<li>
						<a>自选不中</a>
					</li>
				</div>
				<div class="contents">
					<li>
						<a href="${ctx }/ssc" target="Exhibition">两面</a>
					</li>
					<li>
						<a href="${ctx }/sscONE" target="Exhibition">第一球</a>
					</li>
					<li>
						<a href="${ctx }/sscTWO" target="Exhibition">第二球</a>
					</li>
					<li>
						<a href="${ctx }/sscTHREE" target="Exhibition">第三球</a>
					</li>
					<li>
						<a href="${ctx }/sscFOUR" target="Exhibition">第四球</a>
					</li>
					<li>
						<a href="${ctx }/sscFIVE" target="Exhibition">第五球</a>
					</li>
				</div>
								<div class="contents">
					<li>
						<a href="${ctx }/bjsc" target="Exhibition">两面</a>
					</li>
					<li>
						<a href="${ctx }/jsftDH" target="Exhibition">1~10</a>
					</li>
					<li>
						<a href="${ctx }/jsftGYJZH" target="Exhibition">冠军组合</a>
					</li>
				</div>
			</div>
		</div>
	</div>
	<!-- left-->
	<div id="main">
		<div class="side_left" id="side">
			<div class="user_info">
				<div class="title">账户信息</div>

				<div class="zhanghu" id="account">
					<div class="info">
						<label>编号：</label><span> ${member_session.mid }</span></div>
					<div class="info"><label>金币：</label><span class="balance"> ${member_session.balance }</span></div>
					<div class="info"><label>未结算金额：</label><span class="betting">0</span></div>
				</div>
			</div>
			<div class="betdone" id="drawOfficial">
				<div class="title">
					<a href="">请联系客服充值</a>
				</div>
				<div class="title">
					<a href="${ctx }/pay02" target="Exhibition">在线提款</a>
				</div>
			</div>
			<div class="betdone" id="lastBets">
				<div class="title"><span>最新注单</span></div>
				<ul class="bets"></ul>
			</div>
			<div style="display:none" id="betResultPanel">
				
				<div class="control s0">
					<a href="">返 回</a>
				</div>
				<div id="betResultDrawNumber" class="title"></div>
				<div class="bresults">
					<ul class="bets" id="betReulstList"></ul>
					<table class="total s0">
						<tbody>
							
							<tr>
								<td class="label">下注金额</td>
								<td id="betResultCount"></td>
							</tr>
							<tr>
								<td class="label">合计金额</td>
								<td id="betResultTotal"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="iframes">
			<iframe id="Exhibition" name="Exhibition" src="${ctx }/jsks" marginheight="0" marginwidth="0" frameborder="0" scrolling="yes" style="position: relative;left: 10px;top: 10px;width: 100%;height: 100%;"></iframe>
		</div>
		</div>
</body>

</html>
