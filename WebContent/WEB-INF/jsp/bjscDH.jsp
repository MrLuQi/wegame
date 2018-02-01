<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
<link rel="stylesheet" href="css/Jiangsu.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
			var lottery = 'pk10';
			var lotteryType = '0';
			var template = 'pk10'
		</script>
		<!--  -->
	</head>
<!-- content-->
	<body class="l_pk10 P_lm skin_red">
		<input type="hidden" id="page" value="lm" name="page">
		<div id="main">
			<div id="header">
				<!--开奖-->
				<div class="lottery_info">
					<div class="lottery_info_left floatleft"><span class="name" id="lotteryName">北京赛车</span> — <span class="gameName" id="gameName">两面</span><span class="result">&nbsp;今日输赢：<span id="bresult">0</span></span>
					</div>
					<div class="lottery_info_right floatright"><span id="drawNumber">663585</span>期&nbsp;&nbsp;距离封盘：<span class="color_lv bold"><span id="cdClose">01:11</span></span>&nbsp;&nbsp;距离开奖：<span class="color_lv bold">
						<span id="cdDraw">02:11</span></span>
						<span id="cdRefresh" style="float:right;width: 50px;">3秒</span>
					</div>
					<div class="clearfloat"></div>
				</div>
				<div class="control n_anniu">
					<div class="buttons">
						<label class="checkdefault"><input type="checkbox" class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label class="quickAmount"><span class="color_lv bold">金额</span> <input></label>
						<input type="button" onclick="bet()" value="确定" class="button">
						<input type="button" onclick="resetBets()" value="重置" class="button">
					</div>

				</div>
			</div>
		<!-- table表-->
			<div id="bet_panel" class="bet_panel input_panel">
				
				<!-- 冠军-->
				
				<div class="split_panel ">
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">冠军</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--亚军-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">亚军</th>
							</tr>
							
							
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--季军-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第三名</th>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">1</span></th>
								<td class="Gtitle3_big odds" id="o_title3_big">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="title3_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">2</span></th>
								<td class="Gtitle3_big odds" id="o_title3_big">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="title3_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">3</span></th>
								<td class="Gtitle3_big odds" id="o_title3_big">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="title3_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle3_big odds" id="o_title3_big">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="title3_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_small name" id="t_title3_small" title="第三名 小"><input type="hidden" id="k_title3_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle3_small odds" id="o_title3_small">1.99</td>
								<td class="Gtitle3_small amount ha"><input name="title3_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_dan name" id="t_title3_dan" title="第三名 单"><input type="hidden" id="k_title3_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle3_dan odds" id="o_title3_dan">1.99</td>
								<td class="Gtitle3_dan amount ha"><input name="title3_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_shuang name" id="t_title3_shuang" title="第三名 双"><input type="hidden" id="k_title3_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle3_shuang odds" id="o_title3_shuang">1.99</td>
								<td class="Gtitle3_shuang amount ha"><input name="title3_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8l name" id="t_longhu_3V8l" title="第三名 3V8龙"><input type="hidden" id="k_longhu_3V8l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_3V8l odds" id="o_longhu_3V8l">1.98</td>
								<td class="Glonghu_3V8l amount ha"><input name="longhu_3V8l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8h name" id="t_longhu_3V8h" title="第三名 3V8虎"><input type="hidden" id="k_longhu_3V8h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_3V8h odds" id="o_longhu_3V8h">1.98</td>
								<td class="Glonghu_3V8h amount ha"><input name="longhu_3V8h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8h name" id="t_longhu_3V8h" title="第三名 3V8虎"><input type="hidden" id="k_longhu_3V8h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_3V8h odds" id="o_longhu_3V8h">1.98</td>
								<td class="Glonghu_3V8h amount ha"><input name="longhu_3V8h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--四-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第四名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--五-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第五名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--六-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第六名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--七-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第七名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--八-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第八名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--九-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第九名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!--十-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第十名</th>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">1</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			
			<!--按钮-->
			
			
			<div class="control bcontrol">
				<div class="lefts" style="display:none">已经选中 <span id="betcount"></span> 注</div>
				<div class="buttons">
					<label class="checkdefault"><input type="checkbox" class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label class="quickAmount"><span class="color_lv bold">金额</span> <input></label>
					<input type="button" class="button" value="确定" onclick="bet()"><input type="button" class="button" value="重置" onclick="resetBets()">
				</div>
			</div>
		</div>
		
		<!--排行-->
		
		
		<table id="changlong">
			<thead>
				<tr>
					<th colspan="2" class="table_side">两面长龙排行</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>第7名 - 小</th>
					<td>7 期</td>
				</tr>
				<tr>
					<th>第8名 - 大</th>
					<td>6 期</td>
				</tr>
				<tr>
					<th>龙虎 - 3V8虎</th>
					<td>6 期</td>
				</tr>
				<tr>
					<th>龙虎 - 4V7龙</th>
					<td>6 期</td>
				</tr>
				<tr>
					<th>第3名 - 小</th>
					<td>5 期</td>
				</tr>
				<tr>
					<th>第7名 - 单</th>
					<td>5 期</td>
				</tr>
				<tr>
					<th>第5名 - 双</th>
					<td>4 期</td>
				</tr>
				<tr>
					<th>第9名 - 双</th>
					<td>4 期</td>
				</tr>
				<tr>
					<th>冠、亚军和 - 单</th>
					<td>4 期</td>
				</tr>
				<tr>
					<th>第4名 - 大</th>
					<td>3 期</td>
				</tr>
				<tr>
					<th>第3名 - 单</th>
					<td>2 期</td>
				</tr>
			</tbody>
		</table>

	</body>

</html>