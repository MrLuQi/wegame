<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/j-select.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="js/jquery-jSelect.min.js" ></script>
		<script type="text/javascript" src="js/jquery-nicescroll.js" ></script>
		<script>
		    $(".select").jSelect();
		</script>
		</script>
		<style>
			body{
				font-family: "微软雅黑";
			}
			.from-text{
				float: left;
    width: 105px;
			}
			input{
				    height: 22px;
    border-radius: 4px;
    width: 150px;
    padding: 0;
			}
			.from{
				    position: absolute;
    top: 100px;
    left: 19%;
			}
			section{
				margin-top: 20px;
			}
			.select{
				height: 27px;
    border-radius: 3px;
			}
			.centen{
				width: 100%;
				height: 85px;
			}
			.tishi{
				background: #2196f3;
				    border-bottom-right-radius: 100px;
    border-top-left-radius: 100px;
    text-align: center;
				width: 20%;
				height: 50px;
				line-height: 40px;
				padding: 10px;
				margin: 10px;
				float: left;
			}
		</style>
	</head>
	<body>
		<div class="head">
			<div class="centen">
			<div class="tishi">1.&nbsp;填写金额</div>
			<div class="tishi">2.&nbsp;选择银行</div>
			<div class="tishi">3.&nbsp;充值到账</div>
		</div>
			<div class="from">
				<section>
					<div class="from-text">选择银行:</div>
				    <select id="city" class="select">
				        <option value="贵阳">中国工商银行</option>
				        <option value="六盘水">中国农业银行</option>
				        <option value="都匀">中国建设银行</option>
				        <option value="福泉">中国银行</option>
				        <option value="遵义">交通银行</option>
				        <option value="兴义">招商银行</option>
				    </select>
			    </section>
			    <section>
			    	<div class="from-text">持卡人姓名：</div>
			    	<input type="name" id="name" />
			    </section>
			    <section>
			    	<div class="from-text">银行卡卡号：</div>
			    	<input type="number" id="nub" />
			    </section>
			</div>
		</div>
	</body>
</html>
