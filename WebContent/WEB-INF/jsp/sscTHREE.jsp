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
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">总和/龙虎和</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="o_gysum_big">1.98</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="o_gysum_small">1.98</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">1.98</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">双</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">1.98</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">龙</th>
							<td class="Ggysum_big odds" id="o_gysum_big">1.98</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">虎</th>
							<td class="Ggysum_small odds" id="o_gysum_small">1.98</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">和</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">8.80</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
						
						</tr>
					</tbody>
				</table>
				
					<!--万位-->
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">万位</th>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">0</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">1</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">9.95</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">2</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">3</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">4</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">5</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">6</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">7</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
						</tbody>
					</table>	
					<!--千-->
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">千位</th>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">0</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">1</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">9.95</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">2</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">3</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">4</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">5</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">6</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">7</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
						</tbody>
					</table>	
					
					
					<!--百-->
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">百位</th>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">0</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">1</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">9.95</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">2</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">3</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">4</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">5</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">6</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">7</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
						</tbody>
					</table>	
					
					<!--十-->
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">十位</th>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">0</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">1</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">9.95</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">2</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">3</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">4</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">5</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">6</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">7</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
						</tbody>
					</table>	
					
					
					<!--个-->
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">个位</th>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle1_big odds" id="o_title1_big">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="title1_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle1_small odds" id="o_title1_small">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="title1_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle1_dan odds" id="o_title1_dan">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="title1_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle1_shuang odds" id="o_title1_shuang">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="title1_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">0</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">1</span></th>
								<td class="Glonghu_1V10h odds" id="o_longhu_1V10h">9.95</td>
								<td class="Glonghu_1V10h amount ha"><input name="longhu_1V10h" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">2</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">3</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">4</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">5</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">6</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">7</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">9.95</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
						</tbody>
					</table>	
					
					
					
				
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="15">前三球</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">豹子</th>
							<td class="Ggysum_big odds" id="o_gysum_big">69.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">顺子</th>
							<td class="Ggysum_small odds" id="o_gysum_small">11.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">对子</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">2.55</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">半顺</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">1.80</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">杂六</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">2.00</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>

					</tbody>
				</table>
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="15">中三球</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">豹子</th>
							<td class="Ggysum_big odds" id="o_gysum_big">69.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">顺子</th>
							<td class="Ggysum_small odds" id="o_gysum_small">11.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">对子</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">2.55</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">半顺</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">1.80</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">杂六</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">2.00</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
						
						</tr>
					</tbody>
				</table>
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="15">后三球</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">豹子</th>
							<td class="Ggysum_big odds" id="o_gysum_big">69.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">顺子</th>
							<td class="Ggysum_small odds" id="o_gysum_small">11.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">对子</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">2.55</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">半顺</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">1.80</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">杂六</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">2.00</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
						
						</tr>
					</tbody>
				</table>
				
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