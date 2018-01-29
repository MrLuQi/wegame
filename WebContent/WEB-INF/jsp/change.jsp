<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${ctx }/css/change.css" />
	</head>
	<body>
		<table border="1" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th colspan="2" class="changepass">
						修改密码
					</th>
				</tr>
			</thead>
			<thead>
				<tr>
					<td class="ptext"><span>旧密码</span></td>
					<th class="pword">
						<input type="password" name="password" class="txt" />
					</th>
				</tr>
				<tr>
					<td class="ptext"><span>新密码</span></td>
					<th class="pword">
						<input type="password" name="password" class="text" />
					</th>
				</tr>
				<tr>
					<td class="ptext"><span>确认密码</span></td>
					<th class="pword">
						<input type="password" name="password" class="texts" />
					</th>
				</tr>
			</thead>
		</table>
		<div class="button">
			
			<button>确定</button>
			<button>重置</button>
			
		</div>
	</body>
</html>
