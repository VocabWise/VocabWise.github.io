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
			<img src="https://images.unsplash.com/photo-1509023464722-18d996393ca8?auto=format&fit=crop&q=80&w=2940&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" width = "400" alt="Mountain" />
		</div>
	</body>
</html>

Hi, this is [Qihang](https://qihang-zhang.github.io) I’m documenting my learning process in this notes. I built this project with [Mkdocs](https://www.mkdocs.org/) and use the theme of [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). It's a really powerful tool to build blog or notes.

I will post some notes on important courses, interesting papers, as well as how to use technical tools such as Git and Overleaf. Maybe there will be much more interesting content in the future. If you are also interested in those topics, feel free to [contact me](mailto:anchor-zhang@outlook.com), and I am really happy to discuss with various people.

Here is the instruction on how to build a website with [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/): [How to build your personal website/blog with MkDocs (Start from Material for MkDocs)](https://qihang-zhang.github.io/notes/technical_skills/mkdocs.html)