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
		function submitdata(){
			alert("购买成功，请等待开奖！祝你好运~");
			for(var i=1;i<=50;i++){
				var rate=$("#rate"+i+"").text();
				//alert(aa+"    geshu:"+i);
				$("#rate"+i+"").text("---");
			}
		}
		
		
		
		
		
		
		
		
		</script>
	</head>
	<!--开奖时间-->
	<body class="l_pk10 P_lm skin_red">
		<input type="hidden" id="page" value="lm" name="page">
		<div id="main">
			<form id="JSTB" action="${pageContext.request.contextPath }/tzdata" method="post">
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
						<input type="submit" onclick="submitdata()" value="确定" class="button">
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
							<th class="Ggysum_big name"  title="1点"><input type="hidden" id="" value="1">1点</th>
							<td class="Ggysum_big odds" id="rate1">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="SANJUN1" class="ba" id="SANJUN1"></td>
							
							<th class="Ggysum_small name"  title="2点"><input type="hidden" id="" value="2">2点</th>
							<td class="Ggysum_small odds" id="rate2">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="SANJUN2" class="ba" id="SANJUN2"></td>
							
							<th class="Ggysum_dan name"  title="3点"><input type="hidden" id="" value="3">3点</th>
							<td class="Ggysum_dan odds" id="rate3">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="SANJUN3" class="ba" id="SANJUN3"></td>
							
							<th class="Ggysum_shuang name" title="4点"><input type="hidden" id="" value="4">4点</th>
							<td class="Ggysum_shuang odds" id="rate3">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="SANJUN4" class="ba" id="SANJUN4"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="5点"><input type="hidden" id="" value="5">5点</th>
							<td class="Ggysum_big odds" id="rate5">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="SANJUN5" class="ba" id="SANJUN5"></td>
							
							<th class="Ggysum_small name"  title="6点"><input type="hidden" id="" value="6">6点</th>
							<td class="Ggysum_small odds" id="rate6">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="SANJUN6" class="ba" id="SANJUN6"></td>
							
							<th class="Ggysum_dan name"  title="大"><input type="hidden" id="" value="da">大</th>
							<td class="Ggysum_dan odds" id="rate7">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="DA" class="ba" id="DA"></td>
							
							<th class="Ggysum_shuang name" title="小"><input type="hidden" id="" value="xiao">小</th>
							<td class="Ggysum_shuang odds" id="rate8">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text" name="XIAO" class="ba" id="XIAO"></td>
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
							<th class="Ggysum_big name" title="1点"><input type="hidden" id="" value="1">1点</th>
							<td class="Ggysum_big odds" id="rate9">185.00</td>
							<td class="Ggysum_big amount ha"><input name="WEI1" class="ba" id="WEI1" ></td>
							
							<th class="Ggysum_small name"  title="2点"><input type="hidden" id="" value="2">2点</th>
							<td class="Ggysum_small odds" id="rate10">185.00</td>
							<td class="Ggysum_small amount ha"><input name="WEI2" class="ba" id="WEI2" ></td>
							
							<th class="Ggysum_dan name"  title="3点"><input type="hidden" id="" value="3">3点</th>
							<td class="Ggysum_dan odds" id="rate11">185.00</td>
							<td class="Ggysum_dan amount ha"><input name="WEI3" class="ba" id="WEI3"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="4点"><input type="hidden" id="" value="4">4点</th>
							<td class="Ggysum_big odds" id="rate12">185.00</td>
							<td class="Ggysum_big amount ha"><input name="WEI4" class="ba"  id="WEI4"></td>
							
							<th class="Ggysum_small name"  title="5点"><input type="hidden" id="" value="5">5点</th>
							<td class="Ggysum_small odds" id="rate13">185.00</td>
							<td class="Ggysum_small amount ha"><input name="WEI5" class="ba" id="WEI5"></td>
							
							<th class="Ggysum_dan name"  title="6点"><input type="hidden" id="" value="6">6点</th>
							<td class="Ggysum_dan odds" id="rate14">185.00</td>
							<td class="Ggysum_dan amount ha"><input name="WEI6" class="ba" id="WEI6"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="全骰"><input type="hidden" id="" value="quan">全骰</th>
							<td class="Ggysum_big odds" id="rate15">30.80</td>
							<td class="Ggysum_big amount ha"><input name="QUAN" class="ba" id="QUAN"></td>
							
							<th class="Ggysum_small name" id="t_gysum_small" title=""></th>
							<td class="Ggysum_small odds" id="o_gysum_small"></td>
							<td class="Ggysum_small amount ha"></td>
							<th class="Ggysum_dan name"  title=""></th>
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
							<th class="Ggysum_big name"  title="4点"><input type="hidden" id="" value="4">4点</th>
							<td class="Ggysum_big odds" id="rate16">54.50</td>
							<td class="Ggysum_big amount ha"><input name="four" class="ba"  id="four"></td>
							
							<th class="Ggysum_small name"  title="5点"><input type="hidden" id="k_gysum_small" value="5">5点</th>
							<td class="Ggysum_small odds" id="rate17">28.20</td>
							<td class="Ggysum_small amount ha"><input name="five" class="ba"  id="five"></td>
							
							<th class="Ggysum_dan name"  title="6点"><input type="hidden" id="k_gysum_dan" value="6">6点</th>
							<td class="Ggysum_dan odds" id="rate18">17.45</td>
							<td class="Ggysum_dan amount ha"><input name="six" class="ba"  id="six"></td>
							
							
							<th class="Ggysum_shuang name"  title="7点"><input type="hidden" id="k_gysum_shuang" value="7">7点	</th>
							<td class="Ggysum_shuang odds" id="rate19">11.30</td>
							<td class="Ggysum_shuang amount ha"><input name="seven" class="ba" id="seven"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="8点"><input type="hidden" id="" value="8">8点</th>
							<td class="Ggysum_big odds" id="rate20">8.10</td>
							<td class="Ggysum_big amount ha"><input name="eight" class="ba" id="eight"></td>
							
							<th class="Ggysum_small name"  title="9点"><input type="hidden" id="" value="9">9点</th>
							<td class="Ggysum_small odds" id="rate21">6.30</td>
							<td class="Ggysum_small amount ha"><input name="nine" class="ba" id="nine"></td>
							
							<th class="Ggysum_dan name"  title="10点"><input type="hidden" id="" value="10">10点</th>
							<td class="Ggysum_dan odds" id="rate22">6.30</td>
							<td class="Ggysum_dan amount ha"><input name="ten" class="ba" id="ten"></td>
							
							<th class="Ggysum_shuang name"  title="11点"><input type="hidden" id="" value="11">11点</th>
							<td class="Ggysum_shuang odds" id="rate23">6.30</td>
							<td class="Ggysum_shuang amount ha"><input name="eleven" class="ba" id="eleven"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="12点"><input type="hidden" id="" value="12">12点</th>
							<td class="Ggysum_big odds" id="rate24">6.30</td>
							<td class="Ggysum_big amount ha"><input name="twelve" class="ba" id="twelve"></td>
							
							<th class="Ggysum_small name"  title="13点"><input type="hidden" id="" value="13">13点</th>
							<td class="Ggysum_small odds" id="rate25">8.10</td>
							<td class="Ggysum_small amount ha"><input name="thirteen" class="ba" id="thirteen"></td>
							
							<th class="Ggysum_dan name"  title="14点"><input type="hidden" id="" value="14">14点</th>
							<td class="Ggysum_dan odds" id="rate26">11.30</td>
							<td class="Ggysum_dan amount ha"><input name="fourteen" class="ba" id="fourteen"></td>
							
							<th class="Ggysum_shuang name"  title="15点"><input type="hidden" id="" value="15">15点</th>
							<td class="Ggysum_shuang odds" id="rate27">17.45</td>
							<td class="Ggysum_shuang amount ha"><input name="fifteen" class="ba" id="fifteen"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="16点"><input type="hidden" id="" value="16">16点</th>
							<td class="Ggysum_big odds" id=rate28>28.20</td>
							<td class="Ggysum_big amount ha"><input name="sixteen" class="ba" id="sixteen"></td>
							
							<th class="Ggysum_small name"  title="17点"><input type="hidden" id="" value="17">17点</th>
							<td class="Ggysum_small odds" id="rate29">54.50</td>
							<td class="Ggysum_small amount ha"><input name="seventeen" class="ba" id="seventeen"></td>
							
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
							<th class="Ggysum_small name"  title="1,2"><input type="hidden" id="" value="1">1,2</th>
							<td class="Ggysum_small odds" id="rate30">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp1" class="ba" id="cp1"></td>
							
							<th class="Ggysum_dan name" title="1,3"><input type="hidden" id="" value="2">1,3</th>
							<td class="Ggysum_dan odds" id="rate31">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp2" class="ba" id="cp2"></td>
							
							<th class="Ggysum_shuang name"  title="1,4"><input type="hidden" id="" value="3">1,4</th>
							<td class="Ggysum_shuang odds" id="rate32">6.70</td>
							<td class="Ggysum_shuang amount ha"><input name="cp3" class="ba" id="cp3"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="1,5"><input type="hidden" id="" value="4">1,5</th>
							<td class="Ggysum_big odds" id="rate33">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp4" class="ba" id="cp4"></td>
							
							<th class="Ggysum_small name"  title="1,6"><input type="hidden" id="" value="5">1,6</th>
							<td class="Ggysum_small odds" id="rate34">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp5" class="ba" id="cp5"></td>
							
							<th class="Ggysum_dan name" title="2,3"><input type="hidden" id="" value="6">2,3</th>
							<td class="Ggysum_dan odds" id="rate35">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp6" class="ba" id="cp6"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="2,4"><input type="hidden" id="" value="7">2,4</th>
							<td class="Ggysum_big odds" id="rate36">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp7" class="ba" id="cp7"></td>
							
							<th class="Ggysum_small name"  title="2,5"><input type="hidden" id="" value="8">2,5</th>
							<td class="Ggysum_small odds" id="rate37">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp8" class="ba" id="cp8"></td>
							
							<th class="Ggysum_dan name"  title="2,6"><input type="hidden" id="" value="9">2,6</th>
							<td class="Ggysum_dan odds" id="rate38">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp9" class="ba" id="cp9"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="3,4"><input type="hidden" id="" value="10">3,4</th>
							<td class="Ggysum_big odds" id="rate39">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp10" class="ba" id="cp10"></td>
							
							<th class="Ggysum_small name"  title="3,5"><input type="hidden" id="" value="11">3,5</th>
							<td class="Ggysum_small odds" id="rate40">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp11" class="ba" id="cp11"></td>
							
							<th class="Ggysum_dan name"  title="3,6"><input type="hidden" id="" value="12">3,6</th>
							<td class="Ggysum_dan odds" id="rate41">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp12" class="ba" id="cp12"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="4,5"><input type="hidden" id="" value="13">4,5</th>
							<td class="Ggysum_big odds" id="rate42">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp13" class="ba" id="cp13"></td>
							
							<th class="Ggysum_small name"  title="4,6"><input type="hidden" id="" value="14">4,6</th>
							<td class="Ggysum_small odds" id="rate43">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp14" class="ba" id="cp14"></td>
							
							<th class="Ggysum_dan name"  title="5,6"><input type="hidden" id="" value="15">5,6</th>
							<td class="Ggysum_dan odds" id="rate44">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp15" class="ba" id="cp15"></td>
							
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
							<th class="Ggysum_big name"  title="1"><input type="hidden" id="" value="1">1点</th>
							<td class="Ggysum_big odds" id="rate45">11.00</td>
							<td class="Ggysum_big amount ha"><input name="dp1" class="ba" id="dp1"></td>
							
							<th class="Ggysum_small name"  title="2"><input type="hidden" id="" value="2">2点</th>
							<td class="Ggysum_small odds" id="rate46">11.00</td>
							<td class="Ggysum_small amount ha"><input name="dp2" class="ba" id="dp2"></td>
							
							<th class="Ggysum_dan name"  title="3"><input type="hidden" id="" value="3">3点</th>
							<td class="Ggysum_dan odds" id="rate47">11.00</td>
							<td class="Ggysum_dan amount ha"><input name="dp3" class="ba" id="dp3"></td>
							
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name"  title="4"><input type="hidden" id="" value="4">4点</th>
							<td class="Ggysum_big odds" id="rate48">11.00</td>
							<td class="Ggysum_big amount ha"><input name="dp4" class="ba" id="dp4"></td>
							
							<th class="Ggysum_small name"  title="5"><input type="hidden" id="" value="5">5点</th>
							<td class="Ggysum_small odds" id="rate49">11.00</td>
							<td class="Ggysum_small amount ha"><input name="dp5" class="ba" id="dp5"></td>
							
							<th class="Ggysum_dan name"  title="6"><input type="hidden" id="" value="6">6点</th>
							<td class="Ggysum_dan odds" id="rate50">11.00</td>
							<td class="Ggysum_dan amount ha"><input name="dp6" class="ba" id="dp6"></td>
							
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
					<th>江苏骰宝、大小 - 小</th>
					<td>2期</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
