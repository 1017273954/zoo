<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>把宠物带回家应用案例</title>
	<meta name="description" content="把宠物带回家应用案例">
	<meta name="keywords" content="index">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
	<link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/supersized.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/typeit.css">
    <link rel="stylesheet" href="../css/date.css">
</head>
<body>
<!-- <img src="../images/logo.png"> -->
<div class="page-container">
            <h1 class="title"></h1>
            <div style="margin-top: 15%;">
            	<button class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius" onclick="adduser()">添加宠物</button>
                <button class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius" onclick="queryuserList()">今晚遛哪个</button>
            </div>
        </div>
        <script src="../js/jquery-1.8.2.min.js"></script>
        <script src="../js/layui/layui.js"></script>
        <script src="../js/supersized.3.2.7.min.js"></script>
        <script src="../js/supersized-init.js"></script>
        <script src="../js/typeit.js"></script>
        <script src="../js/date.js"></script>
        <script src="../js/index.js"></script>
        <script type="text/javascript">
        	 $('.title').typeIt({
           	  whatToType: "这里有很多宠物，挑一个回家吧！",
              typeSpeed: 300,
              lifeLike: true,
              breakLines :true
        	}, function() {
        		  console.log('This is tomcat callback function!');
        	});
         </script>
</body>
</html>
