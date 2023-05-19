<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../js/layui/css/layui.css" media="all">
<body>
	<div style="padding: 10px;">
		<div class="userTable">
			  搜索宠物：
			  <div class="layui-inline">
			    <input class="layui-input" name="name" id="demoReload" autocomplete="off">
			  </div>
			  <button class="layui-btn " data-type="reload">搜索</button>
			</div>
			<!-- 获取数据的表格 -->
			 <table id="userList" lay-filter="user-filter"></table>
			 <!-- 底部固定区域 -->
			 <div class="layui-footer">
			     &nbsp;&nbsp;&nbsp;
                          宠物是人类的好朋友，欢迎领养吧。
	      </div>
      </div>
      <!-- 操作列的标签-->
<script type="text/html" id="userSexTemple">
 {{#  if(d.sex === 'M'){ }}
 	雄
 {{#  } }}

 {{#  if(d.sex === 'F'){ }}
 	雌
 {{#  } }}

 {{#  if(d.sex === 'Y'){ }}
 	妖
 {{#  } }}
</script>
<!-- 操作列的标签-->
<script type="text/html" id="userOperBar">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">放生</a>
</script>
      <script src="../js/jquery-1.8.2.min.js"></script>
      <script src="../js/layui/layui.js"></script>
      <script src="../js/userList.js"></script>
</body>
</html>
