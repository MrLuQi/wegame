<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ctx}/css/table.css" />
<title></title>
<script type="text/javascript" src="${ctx }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function slectresilut() {
		//alert("safaads");
		var startime = $("#startime").val();
		var endtime = $("#endtime").val();
		alert(startime + endtime);
		if (startime > endtime) {
			return false
		} else {
			$.post("${ctx}/alone?startime=" + startime + "&endtime=" + endtime,
					null, function(data) {

					}, "json");
		}

	}
</script>

</head>
<body>
	<!--日期-->

	<div class="row">
		<span class="rowtxt">日期范围</span> <input type="date"
			value="${currentdate}" id="startime" /> <span>-</span> <input
			type="date" value="${currentdate}" id="endtime" />
		<button type="button" onclick="slectresilut()">查询</button>
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
				<tbody>
					<c:forEach items="${selectorders}" var="selectorders">
						<tr>
							<td>${selectorders.orderdate}</td>
							<td>${selectorders.ordertype}</td>
							<td>注数</td>
							<td>${selectorders.initamount}</td>
							<td>${selectorders.hitamount}</td>
							<td>${selectorders.backamount}</td>
							<td>赢亏</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>
</body>
</html>
