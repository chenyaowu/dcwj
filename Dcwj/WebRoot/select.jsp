<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>专业课满意度调查</title>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport"
		content="width=device-width, minimum-scale=1, maximum-scale=1,user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link rel="stylesheet" type="text/css" href="css/question.css" />
		<script src="js/jquery.min.js"></script>
		<script src="js/hintinfo.js" type="text/javascript"></script>
		<link rel="stylesheet"
			href="http://www.mixin.cc:80/rrtsmc/weixinapp/css/bootstrap.min.css">
			<link rel="stylesheet"
				href="http://www.mixin.cc:80/rrtsmc/weixinapp/css/index.css?20170205">
				<script type="text/javascript">
	function post(stuId,teaId,courName){
		var form = document.createElement("form");
		if(courName == '班主任'){
			form.action = "question_Main";
		}else if(teaId != 0){
			form.action = "question_Common";
		}else{
			form.action = "question_School";
		}
		form.method = "post";
		form.style.display = "none";
		var stuIdText = document.createElement("input");
		var tedIdText = document.createElement("input");
		var courText = document.createElement("input");
		stuIdText.name="stuId";
		tedIdText.name="teaId";
		courText.name = "courName"
		stuIdText.type = "text";
		tedIdText.type = "text";
		courText.type = "text";
		stuIdText.value = stuId;
		tedIdText.value = teaId;
		courText.value = courName;
		form.appendChild(stuIdText);
		form.appendChild(tedIdText);
		form.appendChild(courText);
		document.body.appendChild(form);
		form.submit();
		
		
	}
</script>
</head>
<body>


	<div class="header">
		<div class="head" style="position: static;">
			<p class="title" style="margin-right: 60px; margin-left: 60px;">博伦职校问卷调查</p>

		</div>
	</div>

	</div>
	<s:hidden name="stuId" value="%{stuId}" />
	<s:hidden name="teaId" value="%{teaId}" />
	<br/>
	<p style="font-size: 16px;margin: 10px">请对老师进行评价</p>
	<br/>
	<table style="font-size: 16px; width: 95%;margin:5px; text-align: center;"  >
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 10px" >课程/教师 </td>
			
			<td align="center" style="padding: 10px">操作</td>
		</tr>

		<s:iterator value="list" >
		
				<s:if test="%{evaluate == 0}">
				
					<tr style="border-top-style:outset ;border-color: #fff;border-width: 1px;";background-color: #eee" onclick="post(<s:property value="stuId"/>,<s:property value="teaId"/>,'<s:property value="courName"/>' )">
					
				</s:if>
				<s:else>
					<tr style="border-top-style:outset;border-color: #fff;border-width: 1px;";	>
				</s:else>


				
				<td align="center" style="padding: 10px;">
				
					<p style="font-size: 16px;font-style: normal;"><s:property value="courName" /></p>
					
					<p style="font-size: 12px;"> <s:property value="teaName" /></p>
				</td>
					

				<td align="center" >
				<s:if test="%{evaluate == 1}">
						完成</td>
				</s:if> <s:else>
						<a style="color: #0299BA;">评教</a> </td>
					</s:else>
				
			</tr>
		</div>
	</s:iterator>
</table>
<br>

</br>
</body>
</html>
