<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/Jiangsu.css" />
<script type="text/javascript" src="${ctx }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		setInterval("getTime();", 1000); //每隔一秒执行一次 
	})
	//取得系统当前时间 
	var times = "";
	var pp = "";
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

			//游戏开始时间9:00-23:55
			//判断时间是否在游戏时间内
			if ((9 < data.hour && data.hour < 23)
					|| (data.hour == 9 && data.minute >= 0)
					|| (data.hour == 23 && data.minute <= 55)) {
				//8:40时刷新页面
				if (data.hour == 9 && data.minute == 00 && data.second == 0) {
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
					for (var i = 1; i <= 50; i++) {
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
					/* window.onload = function() {
						$.post("${ctx}/periods", function(data) {
							alert(data);
							$("#drawNumber").html(data);
						})
					} */
					window.location.reload=function() {
						$.post("${ctx}/periods", function(data1) {
							pp=data1;
							$("#drawNumber").html(data1);
						})
					}
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
				for (var i = 1; i <= 50; i++) {
					var rate = $("#rate" + i + "").text();
					//alert(aa+"    geshu:"+i);
					$("#rate" + i + "").text("---");
				}
			}

		})
	}
	//确认按钮
	function submitdata() {

		//投注金额
		var sum = 0;
		//JSTB.action = "${ctx}/tzdata?times=" + times;
		//	var time=document.getElementById("showDate").value;
		//var time =$("#showDate").val();
		var valList = [];
		//投注金额总数

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
		JSTB.action = "${ctx}/pcddxzdata?times=" + times + "&initamount=" + sum+"&periods"+pp;
		//获取用户余额data
		$.post("${ctx}/balance", function(data) {
			//alert(data);
			//alert(sum);
			if (sum > data) {
				alert("不好意思,您投注金额大于余额,请重新投注!");
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
			$('#' + input.attr("id")).val("");
		})

	}
</script>
</head>

<body class="l_pk10 P_lm skin_red">
	<input type="hidden" id="page" value="lm" name="page">
	<div id="main">
		<!---->
		<%-- 	action="${pageContext.request.contextPath }/pcddxzdata" method="post" --%>
		<form id="JSTB"
			action="${pageContext.request.contextPath }/pcddxzdata" method="post">
			<div id="header">
				<div class="lottery_info">
					<div class="lottery_info_left floatleft">
						<span class="name" id="lotteryName">PC蛋蛋</span> — <span
							class="gameName" id="gameName">PC蛋蛋</span><span class="result">&nbsp;今日输赢：<span
							id="bresult">0</span></span>
					</div>
					<div class="lottery_info_right floatright">
						<span id="showDate"></span>&nbsp;&nbsp;<span id="drawNumber"></span>期&nbsp;&nbsp;距离封盘：<span
							class="color_lv bold"><span id="cdClose"></span></span>&nbsp;&nbsp;距离开奖：<span
							class="color_lv bold"> <span id="cdDraw"></span></span> <span
							id="cdRefresh" style="float: right; width: 50px;"></span>
					</div>
					<div class="clearfloat"></div>
				</div>
				<div class="control n_anniu">
					<div class="buttons">
						<label class="checkdefault"><input type="checkbox"
							class="checkbox"><span class="color_lv bold">预设</span></label>&nbsp;&nbsp;<label
							class="quickAmount"><span class="color_lv bold">金额</span>
							<input></label> <input type="button" onclick="bet()" id="sub1"
							value="确定" class="button"> <input type="button"
							onclick="resetBets()" value="重置" class="button">
					</div>

				</div>
			</div>

			<!--table-->

			<div id="bet_panel" class="bet_panel input_panel">
				<table class="table_lm">
					<tbody>
						<tr class="head">
							<th colspan="12">混合</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">大</th>
							<td class="Ggysum_big odds" id="rate1">2.00</td>
							<td class="Ggysum_big amount ha"><input class="ba" name="DA"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="rate2">2.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="XIAO" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="rate3">2.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="DAN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">双</th>
							<td class="Ggysum_shuang odds" id="rate4">2.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="SHUANG" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">大单</th>
							<td class="Ggysum_big odds" id="rate5">4.10</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="DADAN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">大双</th>
							<td class="Ggysum_small odds" id="rate6">4.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="DASHUANG"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">小单</th>
							<td class="Ggysum_dan odds" id="rate7">4.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="XIAODAN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">小双</th>
							<td class="Ggysum_shuang odds" id="rate8">4.10</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="XIAOSHUANG"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">极大</th>
							<td class="Ggysum_big odds" id="rate9">15.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="JIDA" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">极小</th>
							<td class="Ggysum_small odds" id="rate10">15.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="JIXIAO" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
				</table>





				<table class="table_lm">
					<tbody>
						<tr class="head">
							<th colspan="12">单码</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">0</th>
							<td class="Ggysum_big odds" id="rate11">800.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="ZERO" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">1</th>
							<td class="Ggysum_small odds" id="rate12">260.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="ONE" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">2</th>
							<td class="Ggysum_dan odds" id="rate13">130.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="TWO" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">3</th>
							<td class="Ggysum_shuang odds" id="rate14">80.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="THREE" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">4</th>
							<td class="Ggysum_big odds" id="rate15">53.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="FOUR"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">5</th>
							<td class="Ggysum_small odds" id="rate16">38.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="FIVE" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">6</th>
							<td class="Ggysum_dan odds" id="rate17">28.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="SIX" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">7</th>
							<td class="Ggysum_shuang odds" id="rate18">22.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="SEVEN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">8</th>
							<td class="Ggysum_big odds" id="rate19">18.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="EIGHT" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">9</th>
							<td class="Ggysum_small odds" id="rate20">15.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="NINE" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">10</th>
							<td class="Ggysum_dan odds" id="rate21">13.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="TEN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">11</th>
							<td class="Ggysum_shuang odds" id="rate22">13.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="ELEVEN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">12</th>
							<td class="Ggysum_big odds" id="rate23">12.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="TWELVE" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">13</th>
							<td class="Ggysum_small odds" id="rate24">12.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="THIRTEEN"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">14</th>
							<td class="Ggysum_dan odds" id="rate25">12.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="FOURTEEN"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">15</th>
							<td class="Ggysum_shuang odds" id="rate26">12.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="FIFTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">16</th>
							<td class="Ggysum_big odds" id="rate27">13.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="SIXTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">17</th>
							<td class="Ggysum_small odds" id="rate28">13.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="SENENTEEN"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">18</th>
							<td class="Ggysum_dan odds" id="rate29">15.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="EIGHTEEN"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">19</th>
							<td class="Ggysum_shuang odds" id="rate30">18.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="NINETEEN"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">20</th>
							<td class="Ggysum_big odds" id="rate31">22.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="TWENTY" onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">21</th>
							<td class="Ggysum_small odds" id="rate32">28.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="TWENTY_ONE"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">22</th>
							<td class="Ggysum_dan odds" id="rate33">38.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="TWENTY_TWO"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">23</th>
							<td class="Ggysum_shuang odds" id="rate34">53.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="TWENTY_THREE"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input
								type="hidden" id="k_gysum_big" value="GDX">24</th>
							<td class="Ggysum_big odds" id="rate35">80.00</td>
							<td class="Ggysum_big amount ha"><input class="ba"
								name="TWENTY_FOUR"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input
								type="hidden" id="k_gysum_small" value="GDX">25</th>
							<td class="Ggysum_small odds" id="rate36">130.00</td>
							<td class="Ggysum_small amount ha"><input class="ba"
								name="TWENTY_FIVE"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input
								type="hidden" id="k_gysum_dan" value="GDX">26</th>
							<td class="Ggysum_dan odds" id="rate37">260.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"
								name="TWENTY_SIX"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang"
								title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang"
								value="GDX">27</th>
							<td class="Ggysum_shuang odds" id="rate38">800.00</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"
								name="TWENTY_SEVEN"
								onkeyup="this.value=this.value.replace(/\D/g,'')"></td>
						</tr>
					</tbody>
				</table>
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
						id="sub2" onclick="submitdata()"><input type="button"
						class="button" value="重置" onclick="resetBets()">
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
