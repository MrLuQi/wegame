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
		/* function submitdata(){
			alert("购买成功，请等待开奖！祝你好运~");
			for(var i=1;i<=50;i++){
				var rate=$("#rate"+i+"").text();
				//alert(aa+"    geshu:"+i);
				$("#rate"+i+"").text("---");
			}
		} */
		
		
		
		
		
		
		
		
		</script>
	</head>
	<body class="l_pk10 P_lm skin_red">
		<input type="hidden" id="page" value="lm" name="page">
		<div id="main">
			<!---->
			<form id="JSTB" action="${pageContext.request.contextPath }/pcddxzdata" method="post">
			<div id="header">
				<div class="lottery_info">
					<div class="lottery_info_left floatleft"><span class="name" id="lotteryName">PC蛋蛋</span> — <span class="gameName" id="gameName">PC蛋蛋</span><span class="result">&nbsp;今日输赢：<span id="bresult">0</span></span>
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
			
			<!--table-->
			
		<div id="bet_panel" class="bet_panel input_panel">		
			<table class="table_lm">
					<tbody>
						<tr class="head">
							<th colspan="12">混合</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >大</th>
							<td class="Ggysum_big odds" id="o_gysum_big">2.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba" name="DA" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">小</th>
							<td class="Ggysum_small odds" id="o_gysum_small">2.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba"  name="XIAO" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">单</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">2.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"  name="DAN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >双</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang" >2.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba" name="SHUANG" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX"  >大单</th>
							<td class="Ggysum_big odds" id="o_gysum_big">4.10</td>
							<td class="Ggysum_big amount ha"><input class="ba" name="DADAN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">大双</th>
							<td class="Ggysum_small odds" id="o_gysum_small">4.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba"  name="DASHUANG" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">小单</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">4.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba"  name="XIAODAN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">小双</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">4.10</td>
							<td class="Ggysum_shuang amount ha"><input class="ba"  name="XIAOSHUANG" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >极大</th>
							<td class="Ggysum_big odds" id="o_gysum_big">15.00</td>
							<td class="Ggysum_big amount ha"><input class="ba" name="JIDA" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX">极小</th>
							<td class="Ggysum_small odds" id="o_gysum_small">15.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba"  name="JIXIAO" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
				</table>
				
				
				
				
				
				<table class="table_lm">
					<tbody>
						<tr class="head">
							<th colspan="12">单码</th>
						</tr>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX">0</th>
							<td class="Ggysum_big odds" id="o_gysum_big">800.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba"  name="ZERO" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >1</th>
							<td class="Ggysum_small odds" id="o_gysum_small">260.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="ONE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX" >2</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">130.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba" name="TWO" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >3</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">80.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba" name="THREE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >4</th>
							<td class="Ggysum_big odds" id="o_gysum_big">53.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba" name="FOUR"></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >5</th>
							<td class="Ggysum_small odds" id="o_gysum_small">38.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="FIVE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX" >6</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">28.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba" name="SIX" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >7</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">22.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba" name="SEVEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >8</th>
							<td class="Ggysum_big odds" id="o_gysum_big">18.00</td>
							<td class="Ggysum_big amount ha"><input class="ba" name="EIGHT" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >9</th>
							<td class="Ggysum_small odds" id="o_gysum_small">15.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="NINE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX">10</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">13.00</td>
							<td class="Ggysum_dan amount ha"><input class="ba"  name="TEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX">11</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">13.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba"  name="ELEVEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >12</th>
							<td class="Ggysum_big odds" id="o_gysum_big">12.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba"name="TWELVE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >13</th>
							<td class="Ggysum_small odds" id="o_gysum_small">12.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="THIRTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX" >14</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">12.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba" name="FOURTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >15</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">12.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba"name="FIFTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >16</th>
							<td class="Ggysum_big odds" id="o_gysum_big">13.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba" name="SIXTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >17</th>
							<td class="Ggysum_small odds" id="o_gysum_small">13.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="SENENTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX" >18</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">15.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba" name="EIGHTEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >19</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">18.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba" name="NINETEEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >20</th>
							<td class="Ggysum_big odds" id="o_gysum_big">22.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba" name="TWENTY" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >21</th>
							<td class="Ggysum_small odds" id="o_gysum_small">28.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="TWENTY_ONE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX" >22</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">38.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba" name="TWENTY_TWO" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >23</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">53.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba" name="TWENTY_THREE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th class="Ggysum_big name" id="t_gysum_big" title="冠、亚军和 大"><input type="hidden" id="k_gysum_big" value="GDX" >24</th>
							<td class="Ggysum_big odds" id="o_gysum_big">80.00</td>
							<td class="Ggysum_big amount ha"><input  class="ba" name="TWENTY_FOUR" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_small name" id="t_gysum_small" title="冠、亚军和 小"><input type="hidden" id="k_gysum_small" value="GDX" >25</th>
							<td class="Ggysum_small odds" id="o_gysum_small">130.00</td>
							<td class="Ggysum_small amount ha"><input  class="ba" name="TWENTY_FIVE" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_dan name" id="t_gysum_dan" title="冠、亚军和 单"><input type="hidden" id="k_gysum_dan" value="GDX" >26</th>
							<td class="Ggysum_dan odds" id="o_gysum_dan">260.00</td>
							<td class="Ggysum_dan amount ha"><input  class="ba" name="TWENTY_SIX" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
							<th class="Ggysum_shuang name" id="t_gysum_shuang" title="冠、亚军和 双"><input type="hidden" id="k_gysum_shuang" value="GDX" >27</th>
							<td class="Ggysum_shuang odds" id="o_gysum_shuang">800.00</td>
							<td class="Ggysum_shuang amount ha"><input  class="ba" name="TWENTY_SEVEN" onkeyup="this.value=this.value.replace(/\D/g,'')" ></td>
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
