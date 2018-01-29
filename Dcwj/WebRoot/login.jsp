<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>博伦职校评教系统</title>
<meta
	content="米信人人通,米信教师版,米信校园版,米信老师版,学生卡,IC卡,2.4G远距离考勤,电子校卡,儿童手机,卡片手机,校园平安卡,儿童安全,学生安全,校园安全,家校互动,校讯通,亲情通,学护卡,平安卡,儿童定位"
	name="keywords" />
<meta name="description"
	content="米信是致力于为中小学生用户群设计的校园安全产品，为学生提供更好的学习方式、学习环境，为家长、学生、老师之间建立全新的交流平台。米信，中国创新的数据通信服务平台，满足家长与学校的全方位信息化需求，为孩子提供新一代绿色安全通信服务，是伴随孩子们快乐成长的贴心好伙伴。" />
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://www.mixin.cc:80/weixinapp/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->

<link rel="stylesheet" href="http://www.mixin.cc:80/weixinapp/css/ext/login.css">
<style type="text/css">
#account{
	width: 100%;
	height: 15px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
	background-image: url('http://www.mixin.cc:80/weixinapp/images/user.png');
	line-height: 15px;
	padding: 23px 0 22px 45px;
	border-style: solid;
	border-bottom-color: #DAD6D6;
	border-bottom-width: 0.1;
	border-top-width: 0;
	border-left-width: 0;
	border-right-width: 0;
}

inout {
	color: #cccccc;
}

#password {
	width: 100%;
	height: 15px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	background-image: url('http://www.mixin.cc:80/weixinapp/images/pwd.png');
	line-height: 15px;
	-ms-line-height: 45px;
	padding: 23px 0 22px 45px;
	border-style: solid;
	border-width: 0;
}

.show {
	display: block;
}

.hide {
	display: none;
}

ul li{
	list-style-type:none;
}
#login{
	float:left;
}
#getcode{
	float:right;
	margin-right:25px;
	margin-bottom:10px;
}
#c999{
	height:25px;
}

li a,#quick{
	font-size:17px;
	font-family:"微软雅黑";
	color:#5EDBFF;
}
#mess{
	color:red;
}
a{
	cursor: pointer;
}
</style>

</head>

<body
	style="background-image: url('img/bg.png');background-size:cover;margin-top: 20px;margin-bottom: 130px;">
	<meta name="viewport" content="width=device-width">
	<div style="margin-left: auto;margin-right: auto;width: 100px;">
	<img src="img/logo.png" width="100px" />
	<h4 align="center">博伦职校</h4>
	</div>
	<div style="margin-top: 8px;">
	
		<form id="form1" name="form1" class="form-signin show"
			action="login" method="post">
			<div style="width: 100%;height: auto;margin-bottom: 8px;color: red;">
			
			<s:actionerror/> 
			
			</div>
			
			<div style="width: 100%;height: auto;margin-bottom: 8px;">
				<input name="username" type="text" id="account" maxlength="20" placeholder="请输入账号" > <input
					name="password" type="password" id="password" maxlength="32" >
					
			</div>
			<input type="submit" style="width: 100%;height: 43px;border-radius:10px;background-color: #13b5b1;color: white;font-size: 18px;border-width: 0; "
 " value="登录">
		
        <input name="code" value="" style="display: none;">
         <input name="openId" value="" style="display: none;">
		</form>
	</div>
	</meta>
	
</body>
</html>