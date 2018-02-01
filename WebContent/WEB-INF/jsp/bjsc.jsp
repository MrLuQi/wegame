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
							<th colspan="12">冠、亚军和</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="o_gysum_big">2.14</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="o_gysum_small">1.75</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">1.75</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">双</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">2.14</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
				</table>
				
				<!-- 冠军-->
				
				<div class="split_panel ">
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">冠军</th>
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
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">1V10龙</span></th>
								<td class="Glonghu_1V10l odds" id="o_longhu_1V10l">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="longhu_1V10l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">1V10虎</span></th>
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
								<th class="Gtitle2_big name" id="t_title2_big" title="亚军 大"><input type="hidden" id="k_title2_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle2_big odds" id="o_title2_big">1.99</td>
								<td class="Gtitle2_big amount ha"><input name="title2_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle2_small name" id="t_title2_small" title="亚军 小"><input type="hidden" id="k_title2_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle2_small odds" id="o_title2_small">1.99</td>
								<td class="Gtitle2_small amount ha"><input name="title2_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle2_dan name" id="t_title2_dan" title="亚军 单"><input type="hidden" id="k_title2_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle2_dan odds" id="o_title2_dan">1.99</td>
								<td class="Gtitle2_dan amount ha"><input name="title2_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle2_shuang name" id="t_title2_shuang" title="亚军 双"><input type="hidden" id="k_title2_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle2_shuang odds" id="o_title2_shuang">1.99</td>
								<td class="Gtitle2_shuang amount ha"><input name="title2_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_2V9l name" id="t_longhu_2V9l" title="亚军 2V9龙"><input type="hidden" id="k_longhu_2V9l" value="DX"><span class="b4">2V9龙</span></th>
								<td class="Glonghu_2V9l odds" id="o_longhu_2V9l">1.98</td>
								<td class="Glonghu_2V9l amount ha"><input name="longhu_2V9l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_2V9h name" id="t_longhu_2V9h" title="亚军 2V9虎"><input type="hidden" id="k_longhu_2V9h" value="DX"><span class="b4">2V9虎</span></th>
								<td class="Glonghu_2V9h odds" id="o_longhu_2V9h">1.98</td>
								<td class="Glonghu_2V9h amount ha"><input name="longhu_2V9h" class="ba"></td>
							</tr>
						</tbody>
					</table>
					
					<!-- 第三-->
					
					<table>
						<tbody>
							<tr class="head">
								<th colspan="3">第三名</th>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle3_big odds" id="o_title3_big">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="title3_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_small name" id="t_title3_small" title="第三名 小"><input type="hidden" id="k_title3_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle3_small odds" id="o_title3_small">1.99</td>
								<td class="Gtitle3_small amount ha"><input name="title3_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_dan name" id="t_title3_dan" title="第三名 单"><input type="hidden" id="k_title3_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle3_dan odds" id="o_title3_dan">1.99</td>
								<td class="Gtitle3_dan amount ha"><input name="title3_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_shuang name" id="t_title3_shuang" title="第三名 双"><input type="hidden" id="k_title3_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle3_shuang odds" id="o_title3_shuang">1.99</td>
								<td class="Gtitle3_shuang amount ha"><input name="title3_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8l name" id="t_longhu_3V8l" title="第三名 3V8龙"><input type="hidden" id="k_longhu_3V8l" value="DX"><span class="b4">3V8龙</span></th>
								<td class="Glonghu_3V8l odds" id="o_longhu_3V8l">1.98</td>
								<td class="Glonghu_3V8l amount ha"><input name="longhu_3V8l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8h name" id="t_longhu_3V8h" title="第三名 3V8虎"><input type="hidden" id="k_longhu_3V8h" value="DX"><span class="b4">3V8虎</span></th>
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
								<th class="Gtitle4_big name" id="t_title4_big" title="第四名 大"><input type="hidden" id="k_title4_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle4_big odds" id="o_title4_big">1.99</td>
								<td class="Gtitle4_big amount ha"><input name="title4_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle4_small name" id="t_title4_small" title="第四名 小"><input type="hidden" id="k_title4_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle4_small odds" id="o_title4_small">1.99</td>
								<td class="Gtitle4_small amount ha"><input name="title4_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle4_dan name" id="t_title4_dan" title="第四名 单"><input type="hidden" id="k_title4_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle4_dan odds" id="o_title4_dan">1.99</td>
								<td class="Gtitle4_dan amount ha"><input name="title4_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle4_shuang name" id="t_title4_shuang" title="第四名 双"><input type="hidden" id="k_title4_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle4_shuang odds" id="o_title4_shuang">1.99</td>
								<td class="Gtitle4_shuang amount ha"><input name="title4_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_4V7l name" id="t_longhu_4V7l" title="第四名 4V7龙"><input type="hidden" id="k_longhu_4V7l" value="DX"><span class="b4">4V7龙</span></th>
								<td class="Glonghu_4V7l odds" id="o_longhu_4V7l">1.98</td>
								<td class="Glonghu_4V7l amount ha"><input name="longhu_4V7l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_4V7h name" id="t_longhu_4V7h" title="第四名 4V7虎"><input type="hidden" id="k_longhu_4V7h" value="DX"><span class="b4">4V7虎</span></th>
								<td class="Glonghu_4V7h odds" id="o_longhu_4V7h">1.98</td>
								<td class="Glonghu_4V7h amount ha"><input name="longhu_4V7h" class="ba"></td>
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
								<th class="Gtitle5_big name" id="t_title5_big" title="第五名 大"><input type="hidden" id="k_title5_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle5_big odds" id="o_title5_big">1.99</td>
								<td class="Gtitle5_big amount ha"><input name="title5_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle5_small name" id="t_title5_small" title="第五名 小"><input type="hidden" id="k_title5_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle5_small odds" id="o_title5_small">1.99</td>
								<td class="Gtitle5_small amount ha"><input name="title5_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle5_dan name" id="t_title5_dan" title="第五名 单"><input type="hidden" id="k_title5_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle5_dan odds" id="o_title5_dan">1.99</td>
								<td class="Gtitle5_dan amount ha"><input name="title5_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle5_shuang name" id="t_title5_shuang" title="第五名 双"><input type="hidden" id="k_title5_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle5_shuang odds" id="o_title5_shuang">1.99</td>
								<td class="Gtitle5_shuang amount ha"><input name="title5_shuang" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_5V6l name" id="t_longhu_5V6l" title="第五名 5V6龙"><input type="hidden" id="k_longhu_5V6l" value="DX"><span class="b4">5V6龙</span></th>
								<td class="Glonghu_5V6l odds" id="o_longhu_5V6l">1.98</td>
								<td class="Glonghu_5V6l amount ha"><input name="longhu_5V6l" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_5V6h name" id="t_longhu_5V6h" title="第五名 5V6虎"><input type="hidden" id="k_longhu_5V6h" value="DX"><span class="b4">5V6虎</span></th>
								<td class="Glonghu_5V6h odds" id="o_longhu_5V6h">1.98</td>
								<td class="Glonghu_5V6h amount ha"><input name="longhu_5V6h" class="ba"></td>
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
								<th class="Gtitle6_big name" id="t_title6_big" title="第六名 大"><input type="hidden" id="k_title6_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle6_big odds" id="o_title6_big">1.99</td>
								<td class="Gtitle6_big amount ha"><input name="title6_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle6_small name" id="t_title6_small" title="第六名 小"><input type="hidden" id="k_title6_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle6_small odds" id="o_title6_small">1.99</td>
								<td class="Gtitle6_small amount ha"><input name="title6_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle6_dan name" id="t_title6_dan" title="第六名 单"><input type="hidden" id="k_title6_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle6_dan odds" id="o_title6_dan">1.99</td>
								<td class="Gtitle6_dan amount ha"><input name="title6_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle6_shuang name" id="t_title6_shuang" title="第六名 双"><input type="hidden" id="k_title6_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle6_shuang odds" id="o_title6_shuang">1.99</td>
								<td class="Gtitle6_shuang amount ha"><input name="title6_shuang" class="ba"></td>
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
								<th class="Gtitle7_big name" id="t_title7_big" title="第七名 大"><input type="hidden" id="k_title7_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle7_big odds" id="o_title7_big">1.99</td>
								<td class="Gtitle7_big amount ha"><input name="title7_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle7_small name" id="t_title7_small" title="第七名 小"><input type="hidden" id="k_title7_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle7_small odds" id="o_title7_small">1.99</td>
								<td class="Gtitle7_small amount ha"><input name="title7_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle7_dan name" id="t_title7_dan" title="第七名 单"><input type="hidden" id="k_title7_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle7_dan odds" id="o_title7_dan">1.99</td>
								<td class="Gtitle7_dan amount ha"><input name="title7_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle7_shuang name" id="t_title7_shuang" title="第七名 双"><input type="hidden" id="k_title7_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle7_shuang odds" id="o_title7_shuang">1.99</td>
								<td class="Gtitle7_shuang amount ha"><input name="title7_shuang" class="ba"></td>
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
								<th class="Gtitle8_big name" id="t_title8_big" title="第八名 大"><input type="hidden" id="k_title8_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle8_big odds" id="o_title8_big">1.99</td>
								<td class="Gtitle8_big amount ha"><input name="title8_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle8_small name" id="t_title8_small" title="第八名 小"><input type="hidden" id="k_title8_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle8_small odds" id="o_title8_small">1.99</td>
								<td class="Gtitle8_small amount ha"><input name="title8_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle8_dan name" id="t_title8_dan" title="第八名 单"><input type="hidden" id="k_title8_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle8_dan odds" id="o_title8_dan">1.99</td>
								<td class="Gtitle8_dan amount ha"><input name="title8_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle8_shuang name" id="t_title8_shuang" title="第八名 双"><input type="hidden" id="k_title8_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle8_shuang odds" id="o_title8_shuang">1.99</td>
								<td class="Gtitle8_shuang amount ha"><input name="title8_shuang" class="ba"></td>
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
								<th class="Gtitle9_big name" id="t_title9_big" title="第九名 大"><input type="hidden" id="k_title9_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle9_big odds" id="o_title9_big">1.99</td>
								<td class="Gtitle9_big amount ha"><input name="title9_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle9_small name" id="t_title9_small" title="第九名 小"><input type="hidden" id="k_title9_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle9_small odds" id="o_title9_small">1.99</td>
								<td class="Gtitle9_small amount ha"><input name="title9_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle9_dan name" id="t_title9_dan" title="第九名 单"><input type="hidden" id="k_title9_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle9_dan odds" id="o_title9_dan">1.99</td>
								<td class="Gtitle9_dan amount ha"><input name="title9_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle9_shuang name" id="t_title9_shuang" title="第九名 双"><input type="hidden" id="k_title9_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle9_shuang odds" id="o_title9_shuang">1.99</td>
								<td class="Gtitle9_shuang amount ha"><input name="title9_shuang" class="ba"></td>
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
								<th class="Gtitle10_big name" id="t_title10_big" title="第十名 大"><input type="hidden" id="k_title10_big" value="DX"><span class="b1">大</span></th>
								<td class="Gtitle10_big odds" id="o_title10_big">1.99</td>
								<td class="Gtitle10_big amount ha"><input name="title10_big" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle10_small name" id="t_title10_small" title="第十名 小"><input type="hidden" id="k_title10_small" value="DX"><span class="b2">小</span></th>
								<td class="Gtitle10_small odds" id="o_title10_small">1.99</td>
								<td class="Gtitle10_small amount ha"><input name="title10_small" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle10_dan name" id="t_title10_dan" title="第十名 单"><input type="hidden" id="k_title10_dan" value="DX"><span class="b3">单</span></th>
								<td class="Gtitle10_dan odds" id="o_title10_dan">1.99</td>
								<td class="Gtitle10_dan amount ha"><input name="title10_dan" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle10_shuang name" id="t_title10_shuang" title="第十名 双"><input type="hidden" id="k_title10_shuang" value="DX"><span class="b4">双</span></th>
								<td class="Gtitle10_shuang odds" id="o_title10_shuang">1.99</td>
								<td class="Gtitle10_shuang amount ha"><input name="title10_shuang" class="ba"></td>
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