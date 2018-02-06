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
			for(var i=1;i<=100;i++){
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
		<form id="JSTB" action="${pageContext.request.contextPath }/bjscdhdata" method="post">
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
								<td class="Gtitle1_dan odds" id="rate1">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH0" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate"2>1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH1" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate3">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH2" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate4">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="DH3" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate5">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="DH4" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate6">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH5" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate7">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="DH6" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate8">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="DH7" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate9">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH8" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate10">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH9" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate11">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH10" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate12">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH11" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate13">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH12" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate14">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="DH13" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate15">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="DH14" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate16">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH15" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate17">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="DH16" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate18">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="DH17" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate19">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH18" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate20">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH19" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle3_big odds" id="rate21">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="DH20" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">2</span></th>
								<td class="Gtitle3_big odds" id="rate22">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="DH21" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">3</span></th>
								<td class="Gtitle3_big odds" id="rate23">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="DH22" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input type="hidden" id="k_title3_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle3_big odds" id="rate24">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="DH23" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_small name" id="t_title3_small" title="第三名 小"><input type="hidden" id="k_title3_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle3_small odds" id="rate25">1.99</td>
								<td class="Gtitle3_small amount ha"><input name="DH24" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_dan name" id="t_title3_dan" title="第三名 单"><input type="hidden" id="k_title3_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle3_dan odds" id="rate26">1.99</td>
								<td class="Gtitle3_dan amount ha"><input name="DH25" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_shuang name" id="t_title3_shuang" title="第三名 双"><input type="hidden" id="k_title3_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle3_shuang odds" id="rate27">1.99</td>
								<td class="Gtitle3_shuang amount ha"><input name="DH26" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8l name" id="t_longhu_3V8l" title="第三名 3V8龙"><input type="hidden" id="k_longhu_3V8l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_3V8l odds" id="rate28">1.98</td>
								<td class="Glonghu_3V8l amount ha"><input name="DH27" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8h name" id="t_longhu_3V8h" title="第三名 3V8虎"><input type="hidden" id="k_longhu_3V8h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_3V8h odds" id="rate29">1.98</td>
								<td class="Glonghu_3V8h amount ha"><input name="DH28" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8h name" id="t_longhu_3V8h" title="第三名 3V8虎"><input type="hidden" id="k_longhu_3V8h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_3V8h odds" id="rate30">1.98</td>
								<td class="Glonghu_3V8h amount ha"><input name="DH29" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate31">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH30" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate32">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH31" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate33">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH32" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate34">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="DH33" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate35">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="DH34" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate36">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH35" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate37">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="DH36" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate38">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="DH37" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate39">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH38" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate40">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH39" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate41">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH40" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate42">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH41" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate43">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH42" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate44">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="DH43" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate45">1.99</td>
								<td class="Gtitle1_small amount ha"><input  name="DH44" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate46">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH45" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate47">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input  name="DH46"  onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate48">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input  name="DH47" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate49">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH48" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate50">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH49" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate51">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH50" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate52">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH51" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate53">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH52" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate54">1.99</td>
								<td class="Gtitle1_big amount ha"><input  name="DH53" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate55">1.99</td>
								<td class="Gtitle1_small amount ha"><input  name="DH54" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate56">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH55" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate57">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="DH56" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate58">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input  name="DH57" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate59">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH58" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate60">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH59" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate61">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH60" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate62">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH61" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate63">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH62" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate64">1.99</td>
								<td class="Gtitle1_big amount ha"><input  name="DH63" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate65">1.99</td>
								<td class="Gtitle1_small amount ha"><input  name="DH64" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate66">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH65" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate67">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input  name="DH66" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate68">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input  name="DH67" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate69">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH68" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate70">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH69" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate71">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH70" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate72">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="DH71" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate73">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH72" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate74">1.99</td>
								<td class="Gtitle1_big amount ha"><input  name="DH73" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate75">1.99</td>
								<td class="Gtitle1_small amount ha"><input  name="DH74" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate76">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH75" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate77">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="DH76" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate78">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input  name="DH77" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate79">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH78" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate80">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH79" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate81">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH80" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate82">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH81" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate83">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH82" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate84">1.99</td>
								<td class="Gtitle1_big amount ha"><input  name="DH83" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate85">1.99</td>
								<td class="Gtitle1_small amount ha"><input  name="DH84" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate86">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH85" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate87">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input  name="DH86" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate88">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input  name="DH87" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate89">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH88" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate90">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH89" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<td class="Gtitle1_dan odds" id="rate91">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH90" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">2</span></th>
								<td class="Gtitle1_dan odds" id="rate92">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH91" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">3</span></th>
								<td class="Gtitle1_dan odds" id="rate93">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH92" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input type="hidden" id="k_title1_big" value="DX"><span class="b1">4</span></th>
								<td class="Gtitle1_big odds" id="rate94">1.99</td>
								<td class="Gtitle1_big amount ha"><input  name="DH93" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input type="hidden" id="k_title1_small" value="DX"><span class="b2">5</span></th>
								<td class="Gtitle1_small odds" id="rate95">1.99</td>
								<td class="Gtitle1_small amount ha"><input  name="DH94" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input type="hidden" id="k_title1_dan" value="DX"><span class="b3">6</span></th>
								<td class="Gtitle1_dan odds" id="rate96">1.99</td>
								<td class="Gtitle1_dan amount ha"><input  name="DH95" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang" title="冠军 双"><input type="hidden" id="k_title1_shuang" value="DX"><span class="b4">7</span></th>
								<td class="Gtitle1_shuang odds" id="rate97">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input  name="DH96" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l" title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l" value="DX"><span class="b4">8</span></th>
								<td class="Glonghu_1V10l odds" id="rate98">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input  name="DH97" onkeyup="this.value=this.value.replace(/\D/g,'')"  class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">9</span></th>
								<td class="Glonghu_1V10h odds" id="rate99">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH98" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h" title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h" value="DX"><span class="b4">10</span></th>
								<td class="Glonghu_1V10h odds" id="rate100">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="DH99" onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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