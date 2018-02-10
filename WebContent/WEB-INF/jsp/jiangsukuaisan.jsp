<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="${ctx }/css/Jiangsu.css" />
<script type="text/javascript" src="${ctx }/js/jquery-3.2.1.min.js"></script>
<style type="text/css">
.one{
	background: url(images/ball4.gif) no-repeat 14px 1px;
	height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
}
.two{
	background: url(images/ball4.gif) no-repeat 14px -27px;
	height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
}
.three{
	background: url(images/ball4.gif) no-repeat 14px -55px;
	height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
}
.four{
	background: url(images/ball4.gif) no-repeat 14px -81px;
	height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
}
.five{
	background: url(images/ball4.gif) no-repeat 14px -108px;
	height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
}
.six{
	background: url(images/ball4.gif) no-repeat 14px -135px;
	height: 28px;
    width: 44px;
    margin: 6px;
    float: left;
}

.cpone{
    background: url(images/ball4.gif) no-repeat 4px 1px;
    height: 30px;
    width: 32px;
    margin: 0px;
    float: left;
}
.cptwo{
	background: url(images/ball4.gif) no-repeat 12px -27px;
    height: 29px;
    width: 41px;
    margin: 1px;
    float: left;
}
.cpthree{
	background: url(images/ball4.gif) no-repeat 12px -55px;
    height: 29px;
    width: 41px;
    margin: 1px;
    float: left;
}
.cpfour{
	background: url(images/ball4.gif) no-repeat 12px -81px;
    height: 29px;
    width: 41px;
    margin: 1px;
    float: left;
}
.cpfive{
	background: url(images/ball4.gif) no-repeat 12px -108px;
    height: 29px;
    width: 41px;
    margin: 1px;
    float: left;
}
.cpsix{
	background: url(images/ball4.gif) no-repeat 12px -135px;
    height: 29px;
    width: 41px;
    margin: 1px;
    float: left;
}
.cptwo1{
    background: url(images/ball4.gif) no-repeat 4px -27px;
    height: 30px;
    width: 32px;
    margin: 0px;
    float: left;
}
.cpthree1{
    background: url(images/ball4.gif) no-repeat 4px -55px;
    height: 30px;
    width: 32px;
    margin: 0px;
    float: left;
}
.cpfour1{
    background: url(images/ball4.gif) no-repeat 4px -81px;
    height: 30px;
    width: 32px;
    margin: 0px;
    float: left;
}
.cpfive1{
    background: url(images/ball4.gif) no-repeat 4px -106px;
    height: 30px;
    width: 32px;
    margin: 0px;
    float: left;
}
.white{
    width: 10px;
    height: 1px;
    float: left;
}
</style>
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
			} else {
				fen = data.minute;
				minutes = "" + data.minute + "";
				minute = minutes.substring(1, 2);
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
			
			//游戏开始时间8:40-22:10
			//判断时间是否在游戏时间内
			if ((8 <data.hour&&data.hour < 22)||(data.hour == 8 && data.minute >=40)
					|| (data.hour == 22 && data.minute <= 10)) {
						//8:40时刷新页面
						if(data.hour == 8 && data.minute==40&&data.second==0){
							parent.location.reload();
						}
					//游戏时间之内
					var surplusfen = 9 - parseInt(minute); //剩余分钟
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
						parent.location.reload();
						alert("开奖啦~");
					}

				}else{
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
		var sum=0;
		var inputArray=$("input[type='text']");//取到所有的input text 并且放到一个数组中  
	     inputArray.each(//使用数组的循环函数 循环这个input数组  
	         function (){  
	             var input =$(this);//循环中的每一个input元素  
	       			sum+=Number($('#'+input.attr("id")).val());
	         }  
	     )
		JSTB.action = "${ctx}/tzdata?times=" + times+"&initamount="+sum;
		//	var time=document.getElementById("showDate").value;
		//var time =$("#showDate").val();
	
	     //获取用户余额data
	    $.post("${ctx}/balance",function(data){
	    	//alert(data);
	    	//alert(sum);
	    	if(sum>data){
		   		alert("不好意思,您投注金额大于余额,请重新投注!");
		   	}else{
		   		JSTB.submit();
				alert("投注成功,请耐心等待开奖结果,谢谢~");
				parent.location.reload();
		   	} 
	    })
	    	
		
	}
	//重置按钮
	function resetBets(){
	     var inputArray=$("input[type='text']");//取到所有的input text 并且放到一个数组中  
	     inputArray.each(//使用数组的循环函数 循环这个input数组  
	         function (){  
	             var input =$(this);//循环中的每一个input元素  
	         	  $('#'+input.attr("id")).val("");
	         }  
	     )  
		
		
	}
</script>

</head>
<!--开奖时间-->
<body class="l_pk10 P_lm skin_red">
	<%-- <input type="hidden" id="is" value="<%=request.getParameter("is")%>">  --%>
	<input type="hidden" id="page" value="lm" name="page">
	<div id="main">
		<form id="JSTB" name="JSTB"
			action="${pageContext.request.contextPath }/tzdata" method="post">
			<div id="header">
				<div class="lottery_info">
					<div class="lottery_info_left floatleft">
						<span class="name" id="lotteryName">江苏快3</span> — <span
							class="gameName" id="gameName">大小骰宝</span><span class="result">&nbsp;今日输赢：<span
							id="bresult">0</span></span>
					</div>
					<div class="lottery_info_right floatright">
						<span id="showDate"></span>&nbsp;&nbsp;<span id="drawNumber">663585</span>期&nbsp;&nbsp;距离封盘：<span
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
							</label> <input type="button" onclick="submitdata()"
							id="sub1" value="确定" class="button"> <input type="button"
							onclick="resetBets()" value="重置" class="button">
					</div>

				</div>
			</div>

			<!--table表-->
			<div id="bet_panel" class="bet_panel input_panel">
				<!--江苏骰宝-->
				<table class="table_lm" style="width: 98%;">
					<tbody>
						<tr class="head">
							<th colspan="12">江苏骰宝、大小</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" title="1点"><input type="hidden"
								id="" value="1"><div class="one"></div></th>
							<td class="Ggysum_big odds" id="rate1">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="SANJUN1" class="ba" id="SANJUN1"
								onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
								
							<th class="Ggysum_small name" title="2点"><input
								type="hidden" id="" value="2"><div class="two"></div></th>
							<td class="Ggysum_small odds" id="rate2">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="SANJUN2" class="ba" id="SANJUN2"
								onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
								
							<th class="Ggysum_dan name" title="3点"><input type="hidden"
								id="" value="3"><div class="three"></div></th>
							<td class="Ggysum_dan odds" id="rate3">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="SANJUN3" class="ba" id="SANJUN3" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_shuang name" title="4点"><input
								type="hidden" id="" value="4"><div class="four"></div></th>
							<td class="Ggysum_shuang odds" id="rate4">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="SANJUN4" class="ba" id="SANJUN4" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="5点"><input type="hidden"
								id="" value="5"><div class="five"></div></th>
							<td class="Ggysum_big odds" id="rate5">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="SANJUN5" class="ba" id="SANJUN5" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="6点"><input
								type="hidden" id="" value="6"><div class="six"></div></th>
							<td class="Ggysum_small odds" id="rate6">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="SANJUN6" class="ba" id="SANJUN6" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="大"><input type="hidden"
							  	id="" value="da">大</th>
							<td class="Ggysum_dan odds" id="rate7">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="DA" class="ba" id="DA" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_shuang name" title="小"><input
								type="hidden" id="" value="xiao">小</th>
							<td class="Ggysum_shuang odds" id="rate8">1.99</td>
							<td class="Ggysum_big amount ha"><input type="text"
								name="XIAO" class="ba" id="XIAO" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
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
							<th class="Ggysum_big name" title="1点"><input type="hidden"
								id="" value="1"><div class="white"></div><div class="one"></div></th>
							<td class="Ggysum_big odds" id="rate9">185.00</td>
							<td class="Ggysum_big amount ha"><input name="WEI1" type="text"
								class="ba" id="WEI1" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="2点"><input
								type="hidden" id="" value="2"><div class="white"></div><div class="two"></div></th>
							<td class="Ggysum_small odds" id="rate10">185.00</td>
							<td class="Ggysum_small amount ha"><input name="WEI2" type="text"
								class="ba" id="WEI2" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="3点"><input type="hidden"
								id="" value="3"><div class="white"></div><div class="three"></div></th>
							<td class="Ggysum_dan odds" id="rate11">185.00</td>
							<td class="Ggysum_dan amount ha"><input name="WEI3" type="text"
								class="ba" id="WEI3" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="4点"><input type="hidden"
								id="" value="4"><div class="white"></div><div class="four"></div></th>
							<td class="Ggysum_big odds" id="rate12">185.00</td>
							<td class="Ggysum_big amount ha"><input name="WEI4" type="text"
								class="ba" id="WEI4" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="5点"><input
								type="hidden" id="" value="5"><div class="white"></div><div class="five"></div></th>
							<td class="Ggysum_small odds" id="rate13">185.00</td>
							<td class="Ggysum_small amount ha"><input name="WEI5" type="text"
								class="ba" id="WEI5" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="6点"><input type="hidden"
								id="" value="6"><div class="white"></div><div class="six"></div></th>
							<td class="Ggysum_dan odds" id="rate14">185.00</td>
							<td class="Ggysum_dan amount ha"><input name="WEI6" type="text"
								class="ba" id="WEI6" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="全骰"><input type="hidden"
								id="" value="quan">全骰</th>
							<td class="Ggysum_big odds" id="rate15">30.80</td>
							<td class="Ggysum_big amount ha"><input name="QUAN" type="text"
								class="ba" id="QUAN" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" id="t_gysum_small" title=""></th>
							<td class="Ggysum_small odds" id="o_gysum_small"></td>
							<td class="Ggysum_small amount ha"></td>
							<th class="Ggysum_dan name" title=""></th>
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
							<th class="Ggysum_big name" title="4点"><input type="hidden"
								id="" value="4">4点</th>
							<td class="Ggysum_big odds" id="rate16">54.50</td>
							<td class="Ggysum_big amount ha"><input name="four" type="text"
								class="ba" id="four" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="5点"><input
								type="hidden" id="k_gysum_small" value="5">5点</th>
							<td class="Ggysum_small odds" id="rate17">28.20</td>
							<td class="Ggysum_small amount ha"><input name="five" type="text"
								class="ba" id="five" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="6点"><input type="hidden"
								id="k_gysum_dan" value="6">6点</th>
							<td class="Ggysum_dan odds" id="rate18">17.45</td>
							<td class="Ggysum_dan amount ha"><input name="six" type="text"
								class="ba" id="six" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>


							<th class="Ggysum_shuang name" title="7点"><input
								type="hidden" id="k_gysum_shuang" value="7">7点</th>
							<td class="Ggysum_shuang odds" id="rate19">11.30</td>
							<td class="Ggysum_shuang amount ha"><input name="seven" type="text"
								class="ba" id="seven" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="8点"><input type="hidden"
								id="" value="8">8点</th>
							<td class="Ggysum_big odds" id="rate20">8.10</td>
							<td class="Ggysum_big amount ha"><input name="eight" type="text"
								class="ba" id="eight" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="9点"><input
								type="hidden" id="" value="9">9点</th>
							<td class="Ggysum_small odds" id="rate21">6.30</td>
							<td class="Ggysum_small amount ha"><input name="nine" type="text"
								class="ba" id="nine" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="10点"><input type="hidden"
								id="" value="10">10点</th>
							<td class="Ggysum_dan odds" id="rate22">6.30</td>
							<td class="Ggysum_dan amount ha"><input name="ten" type="text"
								class="ba" id="ten" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_shuang name" title="11点"><input
								type="hidden" id="" value="11">11点</th>
							<td class="Ggysum_shuang odds" id="rate23">6.30</td>
							<td class="Ggysum_shuang amount ha"><input name="eleven" type="text"
								class="ba" id="eleven" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="12点"><input type="hidden"
								id="" value="12">12点</th>
							<td class="Ggysum_big odds" id="rate24">6.30</td>
							<td class="Ggysum_big amount ha"><input name="twelve" type="text"
								class="ba" id="twelve" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="13点"><input
								type="hidden" id="" value="13">13点</th>
							<td class="Ggysum_small odds" id="rate25">8.10</td>
							<td class="Ggysum_small amount ha"><input name="thirteen" type="text"
								class="ba" id="thirteen" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="14点"><input type="hidden"
								id="" value="14">14点</th>
							<td class="Ggysum_dan odds" id="rate26">11.30</td>
							<td class="Ggysum_dan amount ha"><input name="fourteen" type="text"
								class="ba" id="fourteen" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_shuang name" title="15点"><input
								type="hidden" id="" value="15">15点</th>
							<td class="Ggysum_shuang odds" id="rate27">17.45</td>
							<td class="Ggysum_shuang amount ha"><input name="fifteen" type="text"
								class="ba" id="fifteen" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="16点"><input type="hidden"
								id="" value="16">16点</th>
							<td class="Ggysum_big odds" id=rate28>28.20</td>
							<td class="Ggysum_big amount ha"><input name="sixteen" type="text"
								class="ba" id="sixteen" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="17点"><input
								type="hidden" id="" value="17">17点</th>
							<td class="Ggysum_small odds" id="rate29">54.50</td>
							<td class="Ggysum_small amount ha"><input name="seventeen" type="text"
								class="ba" id="seventeen" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

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
							<th class="Ggysum_small name" title="1,2"><input
								type="hidden" id="" value="1"><div class="cpone"></div><div class="cptwo"></div></th>
							<td class="Ggysum_small odds" id="rate30">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp1" type="text"
								class="ba" id="cp1" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="1,3"><input type="hidden"
								id="" value="2"><div class="cpone"></div><div class="cpthree"></div></th>
							<td class="Ggysum_dan odds" id="rate31">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp2" type="text"
								class="ba" id="cp2" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_shuang name" title="1,4"><input
								type="hidden" id="" value="3"><div class="cpone"></div><div class="cpfour"></div></th>
							<td class="Ggysum_shuang odds" id="rate32">6.70</td>
							<td class="Ggysum_shuang amount ha"><input name="cp3" type="text"
								class="ba" id="cp3" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="1,5"><input type="hidden"
								id="" value="4"><div class="cpone"></div><div class="cpfive"></div></th>
							<td class="Ggysum_big odds" id="rate33">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp4" type="text"
								class="ba" id="cp4" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="1,6"><input
								type="hidden" id="" value="5"><div class="cpone"></div><div class="cpsix"></div></th>
							<td class="Ggysum_small odds" id="rate34">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp5" type="text"
								class="ba" id="cp5" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="2,3"><input type="hidden"
								id="" value="6"><div class="cptwo1"></div><div class="cpthree"></div></th>
							<td class="Ggysum_dan odds" id="rate35">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp6" type="text"
								class="ba" id="cp6" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="2,4"><input type="hidden"
								id="" value="7"><div class="cptwo1"></div><div class="cpfour"></div></th>
							<td class="Ggysum_big odds" id="rate36">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp7" type="text"
								class="ba" id="cp7" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="2,5"><input
								type="hidden" id="" value="8"><div class="cptwo1"></div><div class="cpfive"></div></th>
							<td class="Ggysum_small odds" id="rate37">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp8" type="text"
								class="ba" id="cp8" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="2,6"><input type="hidden"
								id="" value="9"><div class="cptwo1"></div><div class="cpsix"></div></th>
							<td class="Ggysum_dan odds" id="rate38">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp9" type="text"
								class="ba" id="cp9" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="3,4"><input type="hidden"
								id="" value="10"><div class="cpthree1"></div><div class="cpfour"></div></th>
							<td class="Ggysum_big odds" id="rate39">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp10" type="text"
								class="ba" id="cp10" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="3,5"><input
								type="hidden" id="" value="11"><div class="cpthree1"></div><div class="cpfive"></div></th>
							<td class="Ggysum_small odds" id="rate40">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp11" type="text"
								class="ba" id="cp11" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="3,6"><input type="hidden"
								id="" value="12"><div class="cpthree1"></div><div class="cpsix"></div></th>
							<td class="Ggysum_dan odds" id="rate41">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp12" type="text"
								class="ba" id="cp12" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="4,5"><input type="hidden"
								id="" value="13"><div class="cpfour1"></div><div class="cpfive"></div></th>
							<td class="Ggysum_big odds" id="rate42">6.70</td>
							<td class="Ggysum_big amount ha"><input name="cp13" type="text"
								class="ba" id="cp13" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="4,6"><input
								type="hidden" id="" value="14"><div class="cpfour1"></div><div class="cpsix"></div></th>
							<td class="Ggysum_small odds" id="rate43">6.70</td>
							<td class="Ggysum_small amount ha"><input name="cp14" type="text"
								class="ba" id="cp14" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="5,6"><input type="hidden"
								id="" value="15"><div class="cpfive1"></div><div class="cpsix"></div></th>
							<td class="Ggysum_dan odds" id="rate44">6.70</td>
							<td class="Ggysum_dan amount ha"><input name="cp15" type="text"
								class="ba" id="cp15" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

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
							<th class="Ggysum_big name" title="1"><input type="hidden"
								id="" value="1"><div class="white"></div><div class="one"></div></th>
							<td class="Ggysum_big odds" id="rate45">11.00</td>
							<td class="Ggysum_big amount ha"><input name="dp1" type="text"
								class="ba" id="dp1" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="2"><input type="hidden"
								id="" value="2"><div class="white"></div><div class="two"></div></th>
							<td class="Ggysum_small odds" id="rate46">11.00</td>
							<td class="Ggysum_small amount ha"><input name="dp2" type="text"
								class="ba" id="dp2" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="3"><input type="hidden"
								id="" value="3"><div class="white"></div><div class="three"></div></th>
							<td class="Ggysum_dan odds" id="rate47">11.00</td>
							<td class="Ggysum_dan amount ha"><input name="dp3" type="text"
								class="ba" id="dp3" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" title="4"><input type="hidden"
								id="" value="4"><div class="white"></div><div class="four"></div></th>
							<td class="Ggysum_big odds" id="rate48">11.00</td>
							<td class="Ggysum_big amount ha"><input name="dp4" type="text"
								class="ba" id="dp4" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_small name" title="5"><input type="hidden"
								id="" value="5"><div class="white"></div><div class="five"></div></th>
							<td class="Ggysum_small odds" id="rate49">11.00</td>
							<td class="Ggysum_small amount ha"><input name="dp5" type="text"
								class="ba" id="dp5" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

							<th class="Ggysum_dan name" title="6"><input type="hidden"
								id="" value="6"><div class="white"></div><div class="six"></div></th>
							<td class="Ggysum_dan odds" id="rate50">11.00</td>
							<td class="Ggysum_dan amount ha"><input name="dp6" type="text"
								class="ba" id="dp6" onkeyup="this.value=this.value.replace(/\D/g,'')"
								></td>

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
						<input></label> <input type="button" class="button" value="确定"
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
