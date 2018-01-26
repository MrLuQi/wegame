<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--<link rel="icon" type="image/x-icon" href="/nomain88/images/index/favicon.ico">-->
    <title>欢迎光临</title>
    <link rel="stylesheet" href="${ctx}/css/main.css" />
</head>
<body class="skin_blue">
<div id="header" class="header">
    <div class="logo" style="top:0px; margin-left:5px;">
        <img src="images/100000019.png" style="width: 200px; height: 66px;">
    </div>
    <div class="top">
        <div class="menu">
            <div class="menu1">
                <div id="result_info" class="draw_number">
                    <div>江苏快3</div>
                    <div>20180124048期开奖</div>
                </div>
                <a id="result_balls" target="_blank" class="t_k3 l_jsk3">
                	<span>
                		<b class="b5">5</b>
                	</span>
                	<span>
                		<b class="b5">5</b>
                	</span>
                	<span>
                		<b class="b5">5</b>
                	</span>
                </a>
            </div>
            <div class="menu2">
                <span><a target="frame" href="">未结明细</a></span> |
                <span><a href="" target="frame">今天已结</a></span> |
                <span><a href="" target="frame">报表查询</a></span> |
                <span><a href="" target="frame">开奖结果</a></span> <br>
                <span><a target="frame" href="">个人资讯</a></span> |
                <span><a target="frame" href="">修改密码</a></span> |
                <span><a href="" target="frame">游戏规则</a></span> |
                <span id="skinPanel" class=""><a href="javascript:void(0)" class="selected">更换皮肤</a><ul
                            style="display: none;"><li><i style="background:#dc2f39"></i><a
                                    href="javascript:changeSkin('red')">红色</a></li><li><i
                                    style="background:#5382bc"></i><a href="javascript:changeSkin('blue')">蓝色</a></li><li><i
                                    style="background:#cdcdcd"></i><a
                                    href="javascript:changeSkin('gray')">灰色</a></li></ul></span>
            </div>
            <div class="menu3">
                <a href="" class="logout"></a>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="lotterys">
        	<div class="show">
        		<a>
        			<span>江苏快3</span>
        		</a>
        		<a href="">
        			<span>新疆时时彩</span>
        		</a>
        		<a href="">
        			<span>北京赛车</span>
        		</a>
        		<a href="">
        			<span>幸运飞艇</span>
        		</a>
        		<a href="">
        			<span>重庆时时彩</span>
        		</a>
        		<a href="">
        			<span>PC蛋蛋</span>
        		</a>
        	</div>
        </div>
    </div>
</div>
        <div id="main">
        <div class="side_left" id="side">
        <div class="user_info">
            <div class="title">账户信息</div>

            <div class="zhanghu" id="account">
                <div class="info">
                    <label>编号：</label><span> 155825</span></div>
                <div class="info"><label>金币：</label><span class="balance">0</span></div>
                <div class="info"><label>未结算金额：</label><span class="betting">0</span></div>
            </div>
        </div>
                    <div class="betdone" id="drawOfficial">
                <!--div class="title"><a href="http://k58.com/list-bjpk10.html" target="_blank">开奖直播</a></div-->

                <!--div class="title"><a href="/pc.php?c=pc&a=member" target="frame">个人中心</a></div-->
                <div class="title">
                    <a href="" target="frame">在线充值</a>
                </div>
                <div class="title">
                    <a href="" target="frame">在线提款</a>
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
	<div class="frame">
		<iframe id="frame" src="${ctx }/beijingsaiche"></iframe>
	</div>
</div>		
</body>
</html>