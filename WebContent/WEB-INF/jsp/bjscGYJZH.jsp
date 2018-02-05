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
		function submitdata(){
			alert("购买成功，请等待开奖！祝你好运~");
			for(var i=1;i<=21;i++){
				var rate=$("#rate"+i+"").text();
				//alert(aa+"    geshu:"+i);
				$("#rate"+i+"").text("---");
			}
		}
		</script>
		<!--  -->
	</head>
<!-- content-->
	<body class="l_pk10 P_lm skin_red">
		<input type="hidden" id="page" value="lm" name="page">
		<div id="main">
		<form id="JSTB" action="${pageContext.request.contextPath }/bjscgyzhdata" method="post">
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
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">3</th>
							<td class="Ggysum_big odds" id="rate1">39.00</td>
							<td class="Ggysum_big amount ha"><input name="GYZH1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">4</th>
							<td class="Ggysum_small odds" id="rate2">39.00</td>
							<td class="Ggysum_small amount ha"><input  name="GYZH2" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">5</th>
							<td class="Ggysum_dan odds" id="rate3">18.00</td>
							<td class="Ggysum_dan amount ha"><input name="GYZH3" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">6</th>
							<td class="Ggysum_shuang odds" id="rate4">18.00</td>
							<td class="Ggysum_shuang amount ha"><input  name="GYZH4" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">7</th>
							<td class="Ggysum_big odds" id="rate5">12.00</td>
							<td class="Ggysum_big amount ha"><input  name="GYZH5" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">8</th>
							<td class="Ggysum_small odds" id="rate6">12.00</td>
							<td class="Ggysum_small amount ha"><input name="GYZH6" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">9</th>
							<td class="Ggysum_dan odds" id="rate7">9.00</td>
							<td class="Ggysum_dan amount ha"><input name="GYZH7" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">10</th>
							<td class="Ggysum_shuang odds" id="rate8">9.00</td>
							<td class="Ggysum_shuang amount ha"><input name="GYZH8" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">11</th>
							<td class="Ggysum_big odds" id="rate9">7.20</td>
							<td class="Ggysum_big amount ha"><input  name="GYZH9" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">12</th>
							<td class="Ggysum_small odds" id="rate10">9.00</td>
							<td class="Ggysum_small amount ha"><input  name="GYZH10" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">13</th>
							<td class="Ggysum_dan odds" id="rate11">9.00</td>
							<td class="Ggysum_dan amount ha"><input  name="GYZH11" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">14</th>
							<td class="Ggysum_shuang odds" id="rate12">12.00</td>
							<td class="Ggysum_shuang amount ha"><input  name="GYZH12" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">15</th>
							<td class="Ggysum_big odds" id="rate13">12.00</td>
							<td class="Ggysum_big amount ha"><input  name="GYZH13" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">16</th>
							<td class="Ggysum_small odds" id="rate14">18.00</td>
							<td class="Ggysum_small amount ha"><input  name="GYZH14" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">17</th>
							<td class="Ggysum_dan odds" id="rate15">18.00</td>
							<td class="Ggysum_dan amount ha"><input  name="GYZH15" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">18</th>
							<td class="Ggysum_shuang odds" id="rate16">39.00</td>
							<td class="Ggysum_shuang amount ha"><input  name="GYZH16" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">19</th>
							<td class="Ggysum_big odds" id="rate17">39.00</td>
							<td class="Ggysum_big amount ha"><input  name="GYZH17" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="rate18">2.14</td>
							<td class="Ggysum_big amount ha"><input  name="GYZH18" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="rate19">1.75</td>
							<td class="Ggysum_small amount ha"><input  name="GYZH19" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="rate20">1.75</td>
							<td class="Ggysum_dan amount ha"><input  name="GYZH20" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">双</th>
							<td class="Ggysum_shuang odds" id="rate21">1.75</td>
							<td class="Ggysum_shuang amount ha"><input  name="GYZH21" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
						</tr>
					</tbody>
				</table>
				
			</div>
			
			
			<!--按钮-->
			
			
			<div class="control bcontrol">
				<div class="lefts" style="display:none">已经选中 <span id="betcount"></span> 注</div>
				<div class="buttons">
			<label class="checkdefault"><input type="checkbox" class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label class="quickAmount"><span class="color_lv bold">金额</span> <input></label>
					<input type="submit" class="button" value="确定" onclick="submitdata()"><input type="button" class="button" value="重置" onclick="resetBets()">
				</div>
			</div>
			</form>
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