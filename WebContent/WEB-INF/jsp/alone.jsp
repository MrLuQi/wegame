<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${ctx}/css/table.css" />
		<title></title>
	</head>
	<body>
		<!--日期-->
		
		<div class="row">
			<span class="rowtxt">日期范围</span>
			<input type="date" value="2015-09-24"/>
			<span>-</span>
			<input type="date" value="2015-09-24"/>
			<button>查询</button>
		</div>
		
		<!--table-->
		
		<div class="tables">
			<table border="1" cellspacing="0" cellpadding="0">
				<thead>
			        <tr>
			            <th class="ths">日期</th>
			           	<th class="ths">游戏</th>
			            <th class="ths">注数</th>
			            <th class="ths">下注金额</th>
			            <th class="ths">中奖金额</th>
			            <th class="ths">退水</th>
			            <th class="ths">盈亏</th>
			       	</tr>
		    	</thead>
					<tr>
						<th colspan="7" class="tds">暂无记录</th>
					</tr>
			</table>
		</div>
	</body>
</html>
