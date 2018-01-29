<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" 
"http://www.w3.org/TR/html4/frameset.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>提交成功</title>
<meta
	content="米信人人通,米信教师版,米信校园版,米信老师版,学生卡,IC卡,2.4G远距离考勤,电子校卡,儿童手机,卡片手机,校园平安卡,儿童安全,学生安全,校园安全,家校互动,校讯通,亲情通,学护卡,平安卡,儿童定位"
	name="keywords" />
<meta name="description"
	content="米信是致力于为中小学生用户群设计的校园安全产品，为学生提供更好的学习方式、学习环境，为家长、学生、老师之间建立全新的交流平台。米信，中国创新的数据通信服务平台，满足家长与学校的全方位信息化需求，为孩子提供新一代绿色安全通信服务，是伴随孩子们快乐成长的贴心好伙伴。" />
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://www.mixin.cc:80/weixinapp/css/bootstrap.min.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="http://www.mixin.cc:80/weixinapp/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="http://www.mixin.cc:80/weixinapp/css/ext/login.css">
<link rel="stylesheet" type="text/css" href="css/success.css" />
<style type="text/css">

</style>

</head>

<body
	style="background-image: url('img/bg.png');background-size:cover;margin-top: 50px;margin-bottom: 130px;">
	<meta name="viewport" content="width=device-width">
	<div style="margin-left: auto;margin-right: auto;width: 100px;">
		<img src="img/logo.png" width="100px"  />	
	</div>
	<div style="margin-top: 8px;">
		<form id="form1" name="form1" class="form-signin show" 
			action="duty_findStuById" method="post">
			<s:hidden name="id" value="%{stuId}"/>
			<div style="width: 100%;height: auto;margin-bottom: 8px;">
			</div>
			
			<div style="margin-left: auto;margin-right: auto;width: 80px;"> 
			 <img  src="img/success.png" width="80px" />
			  </div>
			  <br>
				<input style="width: 100%;height: 43px;border-radius:10px;background-color: #13b5b1;color: white;font-size: 18px;border-width: 0; "	 type="submit" value="确定">
        
		</form>
	</div>
	</meta>
	
</body>
</html>