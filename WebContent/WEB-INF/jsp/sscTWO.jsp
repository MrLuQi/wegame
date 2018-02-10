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
				function submitdata(){
				//投注金额
				var valList = [];
				//投注金额总数
				 var sum = 0;
				//把投注金额放入数组
				   $('.ba').each(function(){					
					//alert($(this).val());	
					valList.push(parseInt($(this).val()));
					}); 				 
				 //投注金额求和
				    for (var i = 0; i < valList.length; i++){ 
					   if(!isNaN(valList[i])){
						    sum += valList[i];
					   } ; 
					   }  
				alert("购买成功，请等待开奖！祝你好运~");
				for(var i=1;i<=37;i++){
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
		<form id="JSTB" action="${pageContext.request.contextPath }/sscTWOdata" method="post">
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
							<th colspan="1">号</th>
							<th colspan="1">赔率</th>
							<th colspan="1">金额</th>
							<th colspan="1">号</th>
							<th colspan="1">赔率</th>
							<th colspan="1">金额</th>
							<th colspan="1">号</th>
							<th colspan="1">赔率</th>
							<th colspan="1">金额</th>
							<th colspan="1">号</th>
							<th colspan="1">赔率</th>
							<th colspan="1">金额</th>
							<th colspan="1">号</th>
							<th colspan="1">赔率</th>
							<th colspan="1">金额</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">0</th>
							<td class="Ggysum_big odds" id="o_gysum_big">9.95</td>
							<td class="Ggysum_big amount ha"><input name="ZERO1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">1</th>
							<td class="Ggysum_small odds" id="o_gysum_small">9.95</td>
							<td class="Ggysum_small amount ha"><input name="ONE1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">2</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">9.95</td>
							<td class="Ggysum_dan amount ha"><input name="TWO1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">3</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">9.95</td>
							<td class="Ggysum_shuang amount ha"><input name="THREE1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">4</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">9.95</td>
							<td class="Ggysum_shuang amount ha"><input name="FOUR1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">5</th>
							<td class="Ggysum_big odds" id="o_gysum_big">9.95</td>
							<td class="Ggysum_big amount ha"><input name="FIVE1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">6</th>
							<td class="Ggysum_small odds" id="o_gysum_small">9.95</td>
							<td class="Ggysum_small amount ha"><input name="SIX1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">7</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">9.95</td>
							<td class="Ggysum_dan amount ha"><input name="SEVEN1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">8</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">9.95</td>
							<td class="Ggysum_shuang amount ha"><input name="EIGHT1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">9</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">9.95</td>
							<td class="Ggysum_shuang amount ha"><input name="NINE1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="o_gysum_big">1.99</td>
							<td class="Ggysum_big amount ha"><input name="DA1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="o_gysum_small">1.99</td>
							<td class="Ggysum_small amount ha"><input name="XIAO1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">1.99</td>
							<td class="Ggysum_dan amount ha"><input name="DAN1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">双</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">1.99</td>
							<td class="Ggysum_dan amount ha"><input name="SHUANG1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
						</tr>
					</tbody>
				</table>
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">总和/龙虎和</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="rate1">1.98</td>
							<td class="Ggysum_big amount ha"><input name="DA" onkeyup="this.value=this.value.replace(/\D/g,'')"    class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="rate2">1.98</td>
							<td class="Ggysum_small amount ha"><input name="XIAO" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="rate3">1.98</td>
							<td class="Ggysum_dan amount ha"><input name="DAN" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">双</th>
							<td class="Ggysum_shuang odds" id="rate4">1.98</td>
							<td class="Ggysum_shuang amount ha"><input name="SHUANG" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">龙</th>
							<td class="Ggysum_big odds" id="rate5">1.98</td>
							<td class="Ggysum_big amount ha"><input name="LONG" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">虎</th>
							<td class="Ggysum_small odds" id="rate6">1.98</td>
							<td class="Ggysum_small amount ha"><input name="HU" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">和</th>
							<td class="Ggysum_dan odds" id="rate7">8.80</td>
							<td class="Ggysum_dan amount ha"><input name="HE" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
						
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
							<td class="Ggysum_big odds" id="rate78">69.00</td>
							<td class="Ggysum_big amount ha"><input name="BAOZI" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">顺子</th>
							<td class="Ggysum_small odds" id="rate79">11.00</td>
							<td class="Ggysum_small amount ha"><input name="SHUNZI" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">对子</th>
							<td class="Ggysum_dan odds" id="rate80">2.55</td>
							<td class="Ggysum_dan amount ha"><input name="DUIZI" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">半顺</th>
							<td class="Ggysum_shuang odds" id="rate81">1.80</td>
							<td class="Ggysum_shuang amount ha"><input name="BANSHUN" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">杂六</th>
							<td class="Ggysum_shuang odds" id="rate82">2.00</td>
							<td class="Ggysum_shuang amount ha"><input name="ZALIU" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
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
							<td class="Ggysum_big odds" id="rate78">69.00</td>
							<td class="Ggysum_big amount ha"><input name="BAOZI1" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">顺子</th>
							<td class="Ggysum_small odds" id="rate79">11.00</td>
							<td class="Ggysum_small amount ha"><input name="SHUNZI1" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">对子</th>
							<td class="Ggysum_dan odds" id="rate80">2.55</td>
							<td class="Ggysum_dan amount ha"><input name="DUIZI1" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">半顺</th>
							<td class="Ggysum_shuang odds" id="rate81">1.80</td>
							<td class="Ggysum_shuang amount ha"><input name="BANSHUN1" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">杂六</th>
							<td class="Ggysum_shuang odds" id="rate82">2.00</td>
							<td class="Ggysum_shuang amount ha"><input name="ZALIU1" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
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
							<td class="Ggysum_big odds" id="rate78">69.00</td>
							<td class="Ggysum_big amount ha"><input name="BAOZI2" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">顺子</th>
							<td class="Ggysum_small odds" id="rate79">11.00</td>
							<td class="Ggysum_small amount ha"><input name="SHUNZI2" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">对子</th>
							<td class="Ggysum_dan odds" id="rate80">2.55</td>
							<td class="Ggysum_dan amount ha"><input name="DUIZI2" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">半顺</th>
							<td class="Ggysum_shuang odds" id="rate81">1.80</td>
							<td class="Ggysum_shuang amount ha"><input name="BANSHUN2" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">杂六</th>
							<td class="Ggysum_shuang odds" id="rate82">2.00</td>
							<td class="Ggysum_shuang amount ha"><input name="ZALIU2" onkeyup="this.value=this.value.replace(/\D/g,'')"   class="ba"></td>
						</tr>

					</tbody>
				</table>
				
			</div>
			
			
			<!--按钮-->
			
			
			<div class="control bcontrol">
				<div class="lefts" style="display:none">已经选中 <span id="betcount"></span> 注</div>
				<div class="buttons">
					<label class="checkdefault"><input type="checkbox" class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label class="quickAmount"><span class="color_lv bold">金额</span> <input></label>
				<!-- 	<input type="button" class="button" value="确定" onclick="bet()"><input type="button" class="button" value="重置" onclick="resetBets()"> -->
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
<div class="kefu">
				<div class="ke-top">
					<h3>客服中心</h3>
				</div>
				<div class="speak">
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/button_old_11.gif" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
				</div>
				<div class="speak">
					<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/button_old_11.gif" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
				</div>
			</div>
	</body>

</html>