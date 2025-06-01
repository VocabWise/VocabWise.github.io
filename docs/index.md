# 
<html>
	<head>
		<meta charset="UTF-8">
		<title>css add shadow</title>
		<style>
			.demo{
				width: 400px;
				height: 300px;
				margin: 50px auto;
			}
			.demo img{
				-webkit-filter: drop-shadow(10px 10px 10px rgba(0,0,0,.5)); /*考虑浏览器兼容性：兼容 Chrome, Safari, Opera */
                filter: drop-shadow(10px 10px 10px rgba(0,0,0,.5));
			}
		</style>
	</head>
	<body>
		<div class="demo">
			<img src="https://images.unsplash.com/photo-1738081359154-44d50176b2d0?q=80&w=4738&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" width = "400" alt="Mountain" />
		</div>
	</body>
</html>

Hi, this is the learning blog of [VocabWise](https://www.vocabwise.com). We are documenting our leanring process when building our product.
