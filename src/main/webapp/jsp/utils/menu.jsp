<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户列表","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","入库","出库","订购"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车品牌列表","menuJump":"列表","tableName":"qichepinpai"}],"menu":"汽车品牌管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车类型列表","menuJump":"列表","tableName":"qicheleixing"}],"menu":"汽车类型管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"汽车颜色列表","menuJump":"列表","tableName":"qicheyanse"}],"menu":"汽车颜色管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"入库记录列表","menuJump":"列表","tableName":"rukujilu"}],"menu":"入库记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"出库记录列表","menuJump":"列表","tableName":"chukujilu"}],"menu":"出库记录管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","支付","收费"],"menu":"车辆购买列表","menuJump":"列表","tableName":"chelianggoumai"}],"menu":"车辆购买管理"},{"child":[{"buttons":["新增","查看","修改","删除","支付","状态"],"menu":"运输收费列表","menuJump":"列表","tableName":"yunshushoufei"}],"menu":"运输收费管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"订单状态列表","menuJump":"列表","tableName":"dingdanzhuangtai"}],"menu":"订单状态管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"liuyanbanguanli"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯列表","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员管理","tableName":"users"}],"menu":"管理员管理"}],"frontMenu":[{"child":[{"buttons":["查看","订购"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","支付"],"menu":"车辆购买列表","menuJump":"列表","tableName":"chelianggoumai"}],"menu":"车辆购买管理"},{"child":[{"buttons":["查看","支付"],"menu":"运输收费列表","menuJump":"列表","tableName":"yunshushoufei"}],"menu":"运输收费管理"},{"child":[{"buttons":["查看"],"menu":"订单状态列表","menuJump":"列表","tableName":"dingdanzhuangtai"}],"menu":"订单状态管理"},{"child":[{"buttons":["查看","删除"],"menu":"收藏列表","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","订购"],"menu":"车辆信息列表","menuJump":"列表","tableName":"cheliangxinxi"}],"menu":"车辆信息模块"}],"roleName":"用户","tableName":"yonghu"}];

var hasMessage = '是';