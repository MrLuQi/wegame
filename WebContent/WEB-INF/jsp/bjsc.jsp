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
	$(function() {
		setInterval("getTime();", 1000); //每隔一秒执行一次 
	})
	//取得系统当前时间 
	var times = "";
	
	function getTime() {
		$.post("${ctx}/time", function(data) {
			times = data.year + "/" + data.month + "/" + data.day + " "
					+ data.hour + ":" + data.minute + ":" + data.second;
			if (data.hour < 10) {
				var h = data.hour;
				var hour = "0" + h;
			} else {
				hour = data.hour;
			}
			if (data.minute < 10) {
				var m = data.minute;
				var fen = "0" + m;
				var minutes = "0" + m;
				var minute = minutes.substring(1, 2);
				if (minute >= 5) {
					minute = "0" + parseInt(minute) - 5
				}
			} else {
				fen = data.minute;
				minutes = "" + data.minute + "";
				minute = minutes.substring(1, 2);
				if (minute >= 5) {
					minute = "" + parseInt(minute) - 5
				}
			}
			if (data.second < 10) {
				var s = data.second;
				var second = "0" + s;
			} else {
				second = data.second;
			}
			var time = data.year + "/" + data.month + "/" + data.day + " "
					+ hour + ":" + fen + ":" + second;
			$("#showDate").html(time);
			if ((9 < data.hour && data.hour < 23)
					|| (data.hour == 9 && data.minute >= 2)
					|| (data.hour == 23 && data.minute <= 57)) {
				//8:40时刷新页面
				if (data.hour == 9 && data.minute == 0 && data.second == 0) {
					parent.location.reload();
				}
				//游戏时间之内
				var surplusfen = 4 - parseInt(minute); //剩余分钟
				var surplusmiao = 60 - parseInt(data.second);//剩余秒钟
				var closefen = surplusfen - 2;//封盘剩余分钟
				$("#cdRefresh").html(surplusmiao + "秒");
				//秒+00
				if (surplusmiao < 10) {
					var aa = "0" + surplusmiao;
					//alert(aa);
					$("#cdClose").html(closefen + ":" + aa);
					$("#cdDraw").html(surplusfen + ":" + aa);
				} else {
					$("#cdDraw").html(surplusfen + ":" + surplusmiao);
					$("#cdClose").html(closefen + ":" + surplusmiao);
				}
				//surplusmiao 不会等于0	   
				/* 封盘，禁止投注 */
				if ((closefen == 0 && surplusmiao == 1) || closefen < 0) {
					$("#cdClose").html("00:00");
					$("#sub1").attr("disabled", true);
					$("#sub2").attr("disabled", true);
					//封盘
					for (var i = 1; i <= 100; i++) {
						var rate = $("#rate" + i + "").text();
						//alert(aa+"    geshu:"+i);
						$("#rate" + i + "").text("---");
					}
					//alert("封盘啦~");
				} else {
					$("#sub1").attr("disabled", false);
					$("#sub2").attr("disabled", false);
				}
				/* 开奖  */
				if (surplusfen == 0 && surplusmiao == 1) {
					//刷新页面--显示倍率
					parent.location.reload();
					alert("开奖啦~");
				}

			} else {
				//游戏时间之外  
				//alert("stop!");
				//console.log("stop!");
				$("#cdClose").html("请等待游戏开盘");
				$("#cdDraw").html("请等待游戏开盘");
				//按钮禁止点击
				$("#sub1").attr("disabled", true);
				$("#sub2").attr("disabled", true);
				//
				for (var i = 1; i <= 100; i++) {
					var rate = $("#rate" + i + "").text();
					//alert(aa+"    geshu:"+i);
					$("#rate" + i + "").text("---");
				}
			}

		})
	}
	function submitdata() {
		
		//投注金额
		var sum = 0;
		var valList = [];
		//把投注金额放入数组
		$('.ba').each(function() {
			//alert($(this).val());	
			valList.push(parseInt($(this).val()));
		});
		//投注金额求和
		for (var i = 0; i < valList.length; i++) {
			if (!isNaN(valList[i])) {
				sum += valList[i];
			}
			;
		}
		JSTB.action = "${ctx}/bjsclm?times=" + times + "&initamount=" + sum;
		//	var time=document.getElementById("showDate").value;
		//var time =$("#showDate").val();
		//获取用户余额data
		$.post("${ctx}/balance", function(data) {
			//alert(data);
			//alert(sum);
			if (sum > data) {
				alert("不好意思,您投注金额大于余额,请重新投注!");
				return false;
			} else {
				//JSTB.submit();
				alert("投注成功,请耐心等待开奖结果,谢谢~");
			}
		})

	}
	//重置按钮
	function resetBets() {
		var inputArray = $("input[type='text']");//取到所有的input text 并且放到一个数组中  
		inputArray.each(//使用数组的循环函数 循环这个input数组  
		function() {
			var input = $(this);//循环中的每一个input元素  
			$('#' + input.attr("id")).val(" ");
		})

	}
</script>
<!--  -->
</head>
<!-- content-->
<body class="l_pk10 P_lm skin_red">
	<input type="hidden" id="page" value="lm" name="page">
	<div id="main">
		<form id="JSTB" 
			method="post">
			<div id="header">
				<!--开奖-->
				<div class="lottery_info">
					<div class="lottery_info_left floatleft">
						<span class="name" id="lotteryName">北京赛车</span> — <span
							class="gameName" id="gameName">两面</span><span class="result">&nbsp;今日输赢：<span
							id="bresult">0</span></span>
					</div>
					<div class="lottery_info_right floatright">
						<span id="showDate"></span>&nbsp;&nbsp;<span id="drawNumber">663585</span>期&nbsp;&nbsp;距离封盘：<span
							class="color_lv bold"><span id="cdClose">01:11</span></span>&nbsp;&nbsp;距离开奖：<span
							class="color_lv bold"> <span id="cdDraw">02:11</span></span> <span
							id="cdRefresh" style="float: right; width: 50px;">3秒</span>
					</div>
					<div class="clearfloat"></div>
				</div>
				<div class="control n_anniu">
					<div class="buttons">
						<label class="checkdefault"><input type="checkbox"
							class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label
							class="quickAmount"><span class="color_lv bold">金额</span>
							<input></label> <input type="button" onclick="bet()" value="确定"
							class="button"> <input type="button"
							onclick="resetBets()" value="重置" class="button">
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
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="rate1">2.14</td>
							<td class="Ggysum_big amount ha"><input name="LM0"
								onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="rate2">1.75</td>
							<td class="Ggysum_small amount ha"><input name="LM1"
								onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="rate3">1.75</td>
							<td class="Ggysum_dan amount ha"><input name="LM2"
								onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">双</th>
							<td class="Ggysum_shuang odds" id="rate4">2.14</td>
							<td class="Ggysum_shuang amount ha"><input name="LM3"
								onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle1_big name" id="t_title1_big" title="冠军 大"><input
									type="hidden" id="k_title1_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle1_big odds" id="rate5">1.99</td>
								<td class="Gtitle1_big amount ha"><input name="LM4"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_small name" id="t_title1_small" title="冠军 小"><input
									type="hidden" id="k_title1_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle1_small odds" id="rate6">1.99</td>
								<td class="Gtitle1_small amount ha"><input name="LM5"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_dan name" id="t_title1_dan" title="冠军 单"><input
									type="hidden" id="k_title1_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle1_dan odds" id="rate7">1.99</td>
								<td class="Gtitle1_dan amount ha"><input name="LM6"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle1_shuang name" id="t_title1_shuang"
									title="冠军 双"><input type="hidden" id="k_title1_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle1_shuang odds" id="rate8">1.99</td>
								<td class="Gtitle1_shuang amount ha"><input name="LM7"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10l name" id="t_longhu_1V10l"
									title="冠军 1V10龙"><input type="hidden" id="k_longhu_1V10l"
									value="DX"><span class="b4">1V10龙</span></th>
								<td class="Glonghu_1V10l odds" id="rate9">1.98</td>
								<td class="Glonghu_1V10l amount ha"><input name="LM8"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_1V10h name" id="t_longhu_1V10h"
									title="冠军 1V10虎"><input type="hidden" id="k_longhu_1V10h"
									value="DX"><span class="b4">1V10虎</span></th>
								<td class="Glonghu_1V10h odds" id="rate10">1.98</td>
								<td class="Glonghu_1V10h amount ha"><input name="LM9"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle2_big name" id="t_title2_big" title="亚军 大"><input
									type="hidden" id="k_title2_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle2_big odds" id="rate11">1.99</td>
								<td class="Gtitle2_big amount ha"><input name="LM10"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle2_small name" id="t_title2_small" title="亚军 小"><input
									type="hidden" id="k_title2_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle2_small odds" id="rate12">1.99</td>
								<td class="Gtitle2_small amount ha"><input name="LM11"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle2_dan name" id="t_title2_dan" title="亚军 单"><input
									type="hidden" id="k_title2_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle2_dan odds" id="rate13">1.99</td>
								<td class="Gtitle2_dan amount ha"><input name="LM12"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle2_shuang name" id="t_title2_shuang"
									title="亚军 双"><input type="hidden" id="k_title2_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle2_shuang odds" id="rate14">1.99</td>
								<td class="Gtitle2_shuang amount ha"><input name="LM13"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_2V9l name" id="t_longhu_2V9l" title="亚军 2V9龙"><input
									type="hidden" id="k_longhu_2V9l" value="DX"><span
									class="b4">2V9龙</span></th>
								<td class="Glonghu_2V9l odds" id="rate15">1.98</td>
								<td class="Glonghu_2V9l amount ha"><input name="LM14"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_2V9h name" id="t_longhu_2V9h" title="亚军 2V9虎"><input
									type="hidden" id="k_longhu_2V9h" value="DX"><span
									class="b4">2V9虎</span></th>
								<td class="Glonghu_2V9h odds" id="rate16">1.98</td>
								<td class="Glonghu_2V9h amount ha"><input name="LM15"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle3_big name" id="t_title3_big" title="第三名 大"><input
									type="hidden" id="k_title3_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle3_big odds" id="rate17">1.99</td>
								<td class="Gtitle3_big amount ha"><input name="LM16"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_small name" id="t_title3_small" title="第三名 小"><input
									type="hidden" id="k_title3_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle3_small odds" id="rate18">1.99</td>
								<td class="Gtitle3_small amount ha"><input name="LM17"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_dan name" id="t_title3_dan" title="第三名 单"><input
									type="hidden" id="k_title3_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle3_dan odds" id="rate19">1.99</td>
								<td class="Gtitle3_dan amount ha"><input name="LM18"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle3_shuang name" id="t_title3_shuang"
									title="第三名 双"><input type="hidden" id="k_title3_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle3_shuang odds" id="rate20">1.99</td>
								<td class="Gtitle3_shuang amount ha"><input name="LM19"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8l name" id="t_longhu_3V8l"
									title="第三名 3V8龙"><input type="hidden" id="k_longhu_3V8l"
									value="DX"><span class="b4">3V8龙</span></th>
								<td class="Glonghu_3V8l odds" id="rate21">1.98</td>
								<td class="Glonghu_3V8l amount ha"><input name="LM20"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_3V8h name" id="t_longhu_3V8h"
									title="第三名 3V8虎"><input type="hidden" id="k_longhu_3V8h"
									value="DX"><span class="b4">3V8虎</span></th>
								<td class="Glonghu_3V8h odds" id="rate22">1.98</td>
								<td class="Glonghu_3V8h amount ha"><input name="LM21"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle4_big name" id="t_title4_big" title="第四名 大"><input
									type="hidden" id="k_title4_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle4_big odds" id="rate23">1.99</td>
								<td class="Gtitle4_big amount ha"><input name="LM22"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle4_small name" id="t_title4_small" title="第四名 小"><input
									type="hidden" id="k_title4_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle4_small odds" id="rate24">1.99</td>
								<td class="Gtitle4_small amount ha"><input name="LM23"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle4_dan name" id="t_title4_dan" title="第四名 单"><input
									type="hidden" id="k_title4_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle4_dan odds" id="rate25">1.99</td>
								<td class="Gtitle4_dan amount ha"><input name="LM24"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle4_shuang name" id="t_title4_shuang"
									title="第四名 双"><input type="hidden" id="k_title4_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle4_shuang odds" id="rate26">1.99</td>
								<td class="Gtitle4_shuang amount ha"><input name="LM25"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_4V7l name" id="t_longhu_4V7l"
									title="第四名 4V7龙"><input type="hidden" id="k_longhu_4V7l"
									value="DX"><span class="b4">4V7龙</span></th>
								<td class="Glonghu_4V7l odds" id="rate27">1.98</td>
								<td class="Glonghu_4V7l amount ha"><input name="LM26"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_4V7h name" id="t_longhu_4V7h"
									title="第四名 4V7虎"><input type="hidden" id="k_longhu_4V7h"
									value="DX"><span class="b4">4V7虎</span></th>
								<td class="Glonghu_4V7h odds" id="rate28">1.98</td>
								<td class="Glonghu_4V7h amount ha"><input name="LM27"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle5_big name" id="t_title5_big" title="第五名 大"><input
									type="hidden" id="k_title5_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle5_big odds" id="rate29">1.99</td>
								<td class="Gtitle5_big amount ha"><input name="LM28"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle5_small name" id="t_title5_small" title="第五名 小"><input
									type="hidden" id="k_title5_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle5_small odds" id="rate30">1.99</td>
								<td class="Gtitle5_small amount ha"><input name="LM29"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle5_dan name" id="t_title5_dan" title="第五名 单"><input
									type="hidden" id="k_title5_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle5_dan odds" id="rate31">1.99</td>
								<td class="Gtitle5_dan amount ha"><input name="LM30"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle5_shuang name" id="t_title5_shuang"
									title="第五名 双"><input type="hidden" id="k_title5_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle5_shuang odds" id="rate32">1.99</td>
								<td class="Gtitle5_shuang amount ha"><input name="LM31"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_5V6l name" id="t_longhu_5V6l"
									title="第五名 5V6龙"><input type="hidden" id="k_longhu_5V6l"
									value="DX"><span class="b4">5V6龙</span></th>
								<td class="Glonghu_5V6l odds" id="rate33">1.98</td>
								<td class="Glonghu_5V6l amount ha"><input name="LM32"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Glonghu_5V6h name" id="t_longhu_5V6h"
									title="第五名 5V6虎"><input type="hidden" id="k_longhu_5V6h"
									value="DX"><span class="b4">5V6虎</span></th>
								<td class="Glonghu_5V6h odds" id="rate34">1.98</td>
								<td class="Glonghu_5V6h amount ha"><input name="LM33"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle6_big name" id="t_title6_big" title="第六名 大"><input
									type="hidden" id="k_title6_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle6_big odds" id="rate35">1.99</td>
								<td class="Gtitle6_big amount ha"><input name="LM34"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle6_small name" id="t_title6_small" title="第六名 小"><input
									type="hidden" id="k_title6_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle6_small odds" id="rate36">1.99</td>
								<td class="Gtitle6_small amount ha"><input name="LM35"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle6_dan name" id="t_title6_dan" title="第六名 单"><input
									type="hidden" id="k_title6_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle6_dan odds" id="rate37">1.99</td>
								<td class="Gtitle6_dan amount ha"><input name="LM36"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle6_shuang name" id="t_title6_shuang"
									title="第六名 双"><input type="hidden" id="k_title6_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle6_shuang odds" id="rate38">1.99</td>
								<td class="Gtitle6_shuang amount ha"><input name="LM37"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle7_big name" id="t_title7_big" title="第七名 大"><input
									type="hidden" id="k_title7_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle7_big odds" id="rate39">1.99</td>
								<td class="Gtitle7_big amount ha"><input name="LM38"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle7_small name" id="t_title7_small" title="第七名 小"><input
									type="hidden" id="k_title7_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle7_small odds" id="rate40">1.99</td>
								<td class="Gtitle7_small amount ha"><input name="LM39"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle7_dan name" id="t_title7_dan" title="第七名 单"><input
									type="hidden" id="k_title7_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle7_dan odds" id="rate41">1.99</td>
								<td class="Gtitle7_dan amount ha"><input name="LM40"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle7_shuang name" id="t_title7_shuang"
									title="第七名 双"><input type="hidden" id="k_title7_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle7_shuang odds" id="rate42">1.99</td>
								<td class="Gtitle7_shuang amount ha"><input name="LM41"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle8_big name" id="t_title8_big" title="第八名 大"><input
									type="hidden" id="k_title8_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle8_big odds" id="rate43">1.99</td>
								<td class="Gtitle8_big amount ha"><input name="LM42"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle8_small name" id="t_title8_small" title="第八名 小"><input
									type="hidden" id="k_title8_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle8_small odds" id="rate44">1.99</td>
								<td class="Gtitle8_small amount ha"><input name="LM43"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle8_dan name" id="t_title8_dan" title="第八名 单"><input
									type="hidden" id="k_title8_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle8_dan odds" id="rate45">1.99</td>
								<td class="Gtitle8_dan amount ha"><input name="LM44"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle8_shuang name" id="t_title8_shuang"
									title="第八名 双"><input type="hidden" id="k_title8_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle8_shuang odds" id="rate46">1.99</td>
								<td class="Gtitle8_shuang amount ha"><input name="LM45"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle9_big name" id="t_title9_big" title="第九名 大"><input
									type="hidden" id="k_title9_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle9_big odds" id="rate47">1.99</td>
								<td class="Gtitle9_big amount ha"><input name="LM46"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle9_small name" id="t_title9_small" title="第九名 小"><input
									type="hidden" id="k_title9_small" value="DX"><span
									class="b2">小</span></th>
								<td class="Gtitle9_small odds" id="rate48">1.99</td>
								<td class="Gtitle9_small amount ha"><input name="LM47"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle9_dan name" id="t_title9_dan" title="第九名 单"><input
									type="hidden" id="k_title9_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle9_dan odds" id="rate49">1.99</td>
								<td class="Gtitle9_dan amount ha"><input name="LM48"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle9_shuang name" id="t_title9_shuang"
									title="第九名 双"><input type="hidden" id="k_title9_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle9_shuang odds" id="rate50">1.99</td>
								<td class="Gtitle9_shuang amount ha"><input name="LM49"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
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
								<th class="Gtitle10_big name" id="t_title10_big" title="第十名 大"><input
									type="hidden" id="k_title10_big" value="DX"><span
									class="b1">大</span></th>
								<td class="Gtitle10_big odds" id="rate51">1.99</td>
								<td class="Gtitle10_big amount ha"><input name="LM50"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle10_small name" id="t_title10_small"
									title="第十名 小"><input type="hidden" id="k_title10_small"
									value="DX"><span class="b2">小</span></th>
								<td class="Gtitle10_small odds" id="rate52">1.99</td>
								<td class="Gtitle10_small amount ha"><input name="LM51"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle10_dan name" id="t_title10_dan" title="第十名 单"><input
									type="hidden" id="k_title10_dan" value="DX"><span
									class="b3">单</span></th>
								<td class="Gtitle10_dan odds" id="rate53">1.99</td>
								<td class="Gtitle10_dan amount ha"><input name="LM52"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
							<tr>
								<th class="Gtitle10_shuang name" id="t_title10_shuang"
									title="第十名 双"><input type="hidden" id="k_title10_shuang"
									value="DX"><span class="b4">双</span></th>
								<td class="Gtitle10_shuang odds" id="rate54">1.99</td>
								<td class="Gtitle10_shuang amount ha"><input name="LM53"
									onkeyup="this.value=this.value.replace(/\D/g,'')" class="ba"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>


			<!--按钮-->


			<div class="control bcontrol">
				<div class="lefts" style="display: none">
					已经选中 <span id="betcount"></span> 注
				</div>
				<div class="buttons">
					<label class="checkdefault"><input type="checkbox"
						class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label
						class="quickAmount"><span class="color_lv bold">金额</span>
						<input></label> <input type="submit" class="button" value="确定"
						onclick="submitdata()"><input type="button" class="button"
						value="重置" onclick="resetBets()">
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