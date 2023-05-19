$(function(){
	layui.use('table', function(){
		  var table = layui.table;
		  table.render({
		    elem: '#userList'
		    ,url:'queryUserList'
		    ,cellMinWidth: 80 
		    ,page: true
		    ,id: 'userListReload'
		    ,height: 500
		    ,cols: [[
		      {field:'name', width:180,title: '宠物昵称'}
		      ,{field:'age',  title: '宠物年龄',sort: true}
		      ,{field:'sex', width:80, title: '性别',templet: '#userSexTemple'}
		    ,{fixed:'right', width:250, align:'center',title: '操作',toolbar: '#userOperBar'}
		    ]]
		   
		  });
		  
		//监听操作工具条
		  table.on('tool(user-filter)', function(obj){
		    var data = obj.data;
		    if(obj.event === 'online'){
		      layer.msg('title：'+ data.title + ' 的查看操作');
		    } else if(obj.event === 'offline'){
		    	layer.msg('title：'+ data.title + ' 的查看操作');
		    } else if(obj.event === 'del'){
		    	layer.confirm('您确定要将'+data.name+'放生吗？',{
		    		icon: 3,
		    		btn: ['确定','取消'] //按钮
		    		}, function(){
		    		  obj.del();
		    		  layer.msg('放生成功！！', {icon: 1});
		    		}, function(index){
		    			layer.close(index);
		    		});
		    } else if(obj.event === 'edit'){
		    	window.location=contextPath+'/admin/hotsearch/load/'+data.id
		    }
		  });
		  
		//异步搜索条件
		  var $ = layui.$, active = {
				    reload: function(){
				      var demoReload = $('#demoReload');
				      //执行重载
				      table.reload('userListReload', {
				        page: {
				          curr: 1 //重新从第 1 页开始
				        }
				        ,where: {
				        	 name: demoReload.val()
				        }
				      });
				    }
				  };
				  
				  $('.userTable .layui-btn').on('click', function(){
				    var type = $(this).data('type');
				    active[type] ? active[type].call(this) : '';
				  });
		});
});
