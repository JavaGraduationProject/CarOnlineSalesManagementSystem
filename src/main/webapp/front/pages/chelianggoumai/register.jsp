<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 注册 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE; ">

		<div class="login-bg" style="background-image: url(../../img/banner.jpg);"></div>

		<div class="login-container">
			<!-- 标题 -->
			<h2 class="index-title" style="width: 480px;">USER / REGISTER</h2>
			<div class="line-container">
				<p class="line"> 车辆购买注册 </p>
			</div>
			<!-- 标题 -->
			<form class="layui-form login-form">
				
                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆编号：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangbianhao" name="cheliangbianhao" placeholder="请输入车辆编号" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆名称：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangmingcheng" name="cheliangmingcheng" placeholder="请输入车辆名称" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆品牌：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangpinpai" name="cheliangpinpai" placeholder="请输入车辆品牌" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆类型：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangleixing" name="cheliangleixing" placeholder="请输入车辆类型" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆颜色：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangyanse" name="cheliangyanse" placeholder="请输入车辆颜色" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">换挡方式：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="huandangfangshi" name="huandangfangshi" placeholder="请输入换挡方式" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆天窗：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangtianchuang" name="cheliangtianchuang" placeholder="请输入车辆天窗" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">汽车排量：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="qichepailiang" name="qichepailiang" placeholder="请输入汽车排量" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车座：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="chezuo" name="chezuo" placeholder="请输入车座" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">车辆价格：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="cheliangjiage" name="cheliangjiage" placeholder="请输入车辆价格" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">订购数量：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="dinggoushuliang" name="dinggoushuliang" placeholder="请输入订购数量" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">账号：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="zhanghao" name="zhanghao" placeholder="请输入账号" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">姓名：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="xingming" name="xingming" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">联系电话：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="lianxidianhua" name="lianxidianhua" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                <div class="layui-form-item layui-form-text">
					<label class="layui-form-label">收货地址：</label>
					<div class="layui-input-inline" style="width: 300px;">
						<input type="text" id="shouhuodizhi" name="shouhuodizhi" placeholder="请输入收货地址" autocomplete="off" class="layui-input">
					</div>
				</div>
                                                                                                                                                                                                                                                
				<div class="layui-form-item">
					<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
						<button class="layui-btn btn-submit" lay-submit lay-filter="register">注册</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div class="bottom-container">
				<a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var form = layui.form;
				var http = layui.http;
				var jquery = layui.jquery;

				var tablename = http.getParam('tablename');
								
				// 注册
				form.on('submit(register)', function(data) {
					data = data.field;
                    					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                        if(!isIntNumer(data.dinggoushuliang)){
                        layer.msg('订购数量应输入整数', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                            					                                                                                                                                                                http.requestJson(tablename + '/register', 'post', data, function(res) {
						layer.msg('注册成功', {
							time: 2000,
							icon: 6
						},function(){
							// 路径访问设置
							window.location.href = '../login/login.jsp';
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>