<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx }/css/table.css" />
	</head>
	<body>
		<div class="tables">
			<table border="1" cellspacing="0" cellpadding="0">
				<thead>
			        <tr>
			            <th class="ths">注单号</th>
			           	<th class="ths">时间</th>
			            <th class="ths">类型</th>
			            <th class="ths">玩法</th>
			            <th class="ths5">下注金额</th>
			            <th class="ths">退水</th>
			            <th class="ths">结果</th>
			       	</tr>
		    	</thead>
		    	<tbody>
		    	<c:forEach items="${selectNowDateOrder}" var="selectNowDateOrder">
					<tr>
							<td>${selectNowDateOrder.orderno}</td>
							<td>${selectNowDateOrder.orderdate}</td>
							<td>${selectNowDateOrder.ordertype}</td>
							<td>${selectNowDateOrder.orderwanfa}</td>
							<td>${selectNowDateOrder.initamount}</td>
							<td>${selectNowDateOrder.backamount}</td>
							<td>${selectNowDateOrder.hitamount}</td>
					</tr>
					</c:forEach>
					<th colspan="7" class="tds">暂无数据！</th>
					</tbody>
					<thead>
				        <tr>
				            <th class="tha"></th>
				           	<th class="tha"></th>
				            <th class="tha"></th>
				            <th class="tha">总计</th>
				            <th class="tha5"></th>
				            <th class="tha">0</th>
				            <th class="tha"></th>
				       	</tr>
			    </thead>
			</table>
		</div>
	</body>
</html>
