<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx }/css/Jiangsu.css" />
		<script type="text/javascript" src="${ctx }/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
		
		
		
		
		
		
		
		
		
		</script>
	</head>
	<!--开奖时间-->
	<body class="l_pk10 P_lm skin_red">
		<input type="hidden" id="page" value="lm" name="page">
		<div id="main">
			<div id="header">
				<div class="lottery_info">
					<div class="lottery_info_left floatleft"><span class="name" id="lotteryName">江苏快3</span> — <span class="gameName" id="gameName">大小骰宝</span><span class="result">&nbsp;今日输赢：<span id="bresult">0</span></span>
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
			
<!--table表-->
			<div id="bet_panel" class="bet_panel input_panel">
				<!--江苏骰宝-->
				<table class="table_lm" style="width: 98%;" >
					<tbody>
						<tr class="head">
							<th colspan="12">江苏骰宝、大小</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="1点"><input type="hidden" id="k_gysum_big" value="1">1点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">1.99</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="2点"><input type="hidden" id="k_gysum_small" value="2">2点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">1.99</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="3点"><input type="hidden" id="k_gysum_dan" value="3">3点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">1.99</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="4点"><input type="hidden" id="k_gysum_shuang" value="4">4点</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">1.99</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="5点"><input type="hidden" id="k_gysum_big" value="5">5点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">1.99</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="6点"><input type="hidden" id="k_gysum_small" value="6">6点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">1.99</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="大"><input type="hidden" id="k_gysum_dan" value="da">大</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">1.99</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="小"><input type="hidden" id="k_gysum_shuang" value="xiao">小</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">1.99</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
				</table>
				
					
				<!--围骰-->
				
				
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">围骰、全骰</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="1点"><input type="hidden" id="k_gysum_big" value="1">1点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">185.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="2点"><input type="hidden" id="k_gysum_small" value="2">2点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">185.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="3点"><input type="hidden" id="k_gysum_dan" value="3">3点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">185.00</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="4点"><input type="hidden" id="k_gysum_big" value="4">4点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">185.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="5点"><input type="hidden" id="k_gysum_small" value="5">5点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">185.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="6点"><input type="hidden" id="k_gysum_dan" value="6">6点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">185.00</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="全骰"><input type="hidden" id="k_gysum_big" value="quan">全骰</th>
							<td class="Ggysum_big odds" id="o_gysum_big">30.80</td>
							<td class="Ggysum_big amount ha"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title=""></th>
							<td class="Ggysum_small odds" id="o_gysum_small"></td>
							<td class="Ggysum_small amount ha"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title=""></th>
							<td class="Ggysum_dan odds" id="o_gysum_dan"></td>
							<td class="Ggysum_dan amount ha"></td> 
						</tr>
					</tbody>
				</table>
				
				
				<!--点数-->
				
				
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">点数</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="4点"><input type="hidden" id="k_gysum_big" value="4">4点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">54.50</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="5点"><input type="hidden" id="k_gysum_small" value="5">5点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">28.20</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="6点"><input type="hidden" id="k_gysum_dan" value="6">6点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">17.45</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="7点"><input type="hidden" id="k_gysum_shuang" value="7">7点	</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">11.30</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="8点"><input type="hidden" id="k_gysum_big" value="8">8点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">8.10</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="9点"><input type="hidden" id="k_gysum_small" value="9">9点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">6.30</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="10点"><input type="hidden" id="k_gysum_dan" value="10">10点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">6.30</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="11点"><input type="hidden" id="k_gysum_shuang" value="11">11点</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">6.30</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="12点"><input type="hidden" id="k_gysum_big" value="12">12点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">6.30</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="13点"><input type="hidden" id="k_gysum_small" value="13">13点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">8.10</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="14点"><input type="hidden" id="k_gysum_dan" value="14">14点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">11.30</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="15点"><input type="hidden" id="k_gysum_shuang" value="15">15点</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">17.45</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="16点"><input type="hidden" id="k_gysum_big" value="16">16点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">28.20</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="17点"><input type="hidden" id="k_gysum_small" value="17">17点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">54.50</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							
						</tr>
					</tbody>
					
				</table>
				
				<!--长牌-->
				
				
			<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">长牌</th>
						</tr>
						<tr>
							<th class="Ggysum_small name" id="t_gysum_small" title="1,2"><input type="hidden" id="k_gysum_small" value="1">1,2</th>
							<td class="Ggysum_small odds" id="o_gysum_small">6.70</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="1,3"><input type="hidden" id="k_gysum_dan" value="2">1,3</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="1,4"><input type="hidden" id="k_gysum_shuang" value="3">1,4</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">6.70</td>
							<td class="Ggysum_shuang amount ha"><input name="gysum_shuang" class="ba"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="1,5"><input type="hidden" id="k_gysum_big" value="4">1,5</th>
							<td class="Ggysum_big odds" id="o_gysum_big">6.70</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="1,6"><input type="hidden" id="k_gysum_small" value="5">1,6</th>
							<td class="Ggysum_small odds" id="o_gysum_small">6.70</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="2,3"><input type="hidden" id="k_gysum_dan" value="6">2,3</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="2,4"><input type="hidden" id="k_gysum_big" value="7">2,4</th>
							<td class="Ggysum_big odds" id="o_gysum_big">6.70</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="2,5"><input type="hidden" id="k_gysum_small" value="8">2,5</th>
							<td class="Ggysum_small odds" id="o_gysum_small">6.70</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="2,6"><input type="hidden" id="k_gysum_dan" value="9">2,6</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="3,4"><input type="hidden" id="k_gysum_big" value="10">3,4</th>
							<td class="Ggysum_big odds" id="o_gysum_big">6.70</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="3,5"><input type="hidden" id="k_gysum_small" value="11">3,5</th>
							<td class="Ggysum_small odds" id="o_gysum_small">6.70</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="3,6"><input type="hidden" id="k_gysum_dan" value="12">3,6</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="4,5"><input type="hidden" id="k_gysum_big" value="13">4,5</th>
							<td class="Ggysum_big odds" id="o_gysum_big">6.70</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="4,6"><input type="hidden" id="k_gysum_small" value="14">4,6</th>
							<td class="Ggysum_small odds" id="o_gysum_small">6.70</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="5,6"><input type="hidden" id="k_gysum_dan" value="15">5,6</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
				</table>
				
				
				<!--短牌-->
				
				
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">短牌</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="1">1点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">11.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="2">2点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">11.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="3">3点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">11.00</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="4">4点</th>
							<td class="Ggysum_big odds" id="o_gysum_big">11.00</td>
							<td class="Ggysum_big amount ha"><input name="gysum_big" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="5">5点</th>
							<td class="Ggysum_small odds" id="o_gysum_small">11.00</td>
							<td class="Ggysum_small amount ha"><input name="gysum_small" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="6">6点</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">11.00</td>
							<td class="Ggysum_dan amount ha"><input name="gysum_dan" class="ba"></td>
							
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
		
		<!--排行-->
		
		
		<table id="changlong">
			<thead>
				<tr>
					<th colspan="2" class="table_side">两面长龙排行</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>江苏骰宝、大小 - 小</th>
					<td>2期</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
