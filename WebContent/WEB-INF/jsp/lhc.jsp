<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE >
<html>
	<title></title>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/six.css" />
		<script src="js/jquery-3.2.1.min.js"></script>
		 <script type="text/javascript">
        function ChangeBGC(obj)  
        {  
        	console.log(obj.style.background);
           		if (obj.style.background=="red") {
           						obj.style.background="#DDD";
           		} 
           		else{
           						obj.style.background="red";
           		}
        }  
    </script>
		<style>
			body {
				margin: 0;
				background: #fdeae5;
			}
			
			.container {
				background: #FFF;
			}
			/*top*/
			
			.nav {
				padding: 10px;
				height: 50px;
				width: 900px;
			}
			
			.nav-right {
				float: right;
			}
			
			.all-ball {
				position: relative;
				left: 100px;
			}
			
			.balls {
				width: 30px;
				text-align: center;
				float: left;
			}
			
			.ball {
				height: 30px;
				width: 30px;
			}
			
			.Sred {
				color: red;
				font-weight: 600;
			}
			
			.nav-right button {
				margin-left: 50px;
    border: 1px;
    border-radius: 5px;
    height: 30px;
    width: 71px;
			}
			button:hover{
				background: #FFE400;
			}
			/*选择类型*/
			
			.genretop {
				margin-left: 20px;
				color: red;
				font-weight: 600;
				height: 60px;
				line-height: 60px;
			}
			
			.genres {
				height: 170px;
				width: 100%;
				background: #FFF;
				padding-left: 20px;
			}
			
			.genred {
				width: 100%;
				background: #FFF;
				padding-left: 20px;
			}
			
			.active {
				float: left;
				height: 102px;
				margin-right: 40px;
				width: 216px;
				background: #DDD;
				line-height: 110px;
				text-align: center;
				margin-top: 30px;
			}
			.actives{
				height: 170px;
			    width: 100%;
			    background: #FFF;
			}
		</style>
	</head>

	<body>

	</body>
	<div class="container">
		<div class="nav">
			<div class="data" style="position: absolute;top: 15px;">
				<span>第</span><span class="Sred">2018007</span><span>期</span>
			</div>
			<div class="all-ball">
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
				<div class="balls"><span>+</span></div>
				<div class="balls">
					<img src="" class="ball" />
					<span>猪</span>
				</div>
			</div>
			<div class="nav-right">
				<span>第</span><span class="Sred">2018008</span><span>期</span> &nbsp;
				<span>投注截止：</span><span class="Sred">34时34分32秒</span>
				<button>下单</button>
			</div>
		</div>
	</div>
	<div class="genre">
		<div class="genretop">
			<span>-&nbsp;选择类型</span>
		</div>
		<div class="genres">
			<div class="active"onclick="ChangeBGC(this)">
				<span>中</span>
			</div>
			<div class="active"onclick="ChangeBGC(this)">
				<span>不中</span>
			</div>
		</div>
		<div class="genretop">
			<span>-&nbsp;选择类型</span>
		</div>
		<div class="genred">
			<div class="actives">
				<div class="active"onclick="ChangeBGC(this)">
					<span>中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
			</div>
			<div class="actives">
				<div class="active"onclick="ChangeBGC(this)">
					<span>中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
			</div>
			<div class="actives">
				<div class="active"onclick="ChangeBGC(this)">
					<span>中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
			</div>
			<div class="actives">
				<div class="active"onclick="ChangeBGC(this)">
					<span>中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
				<div class="active"onclick="ChangeBGC(this)">
					<span>不中</span>
				</div>
			</div>
		</div>
	</div>
	</body>

</html>