<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx }/css/change.css" />
		<script type="text/javascript" src="${ctx }/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
		$(function() {
			 $.post("${ctx}/balance",function(data){
				$("#balance").html(data+".00");	 
			 })
		})
		</script>
	</head>
	<body>
		<table border="1" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th colspan="2" class="changepass">
						会员资料
					</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<td class="ptext"><span>会员编号</span></td>
					<th class="pword">
						<p>${member_session.memberno }</p>
					</th>
				</tr>
				<tr>
					<td class="ptext"><span>用户状态</span></td>
					<th class="pword">
						<p>${member_session.status.equals("1")?"正常":"冻结"}</p>
					</th>
				</tr>
				<tr>
					<td class="ptext"><span>金币：</span></td>
					<th class="pword">
						<p id="balance"></p>
					</th>
				</tr>
			</thead>
		</table>
	</body>
</html>
