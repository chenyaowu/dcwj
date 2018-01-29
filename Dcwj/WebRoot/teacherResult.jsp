<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>教师问卷调查结果</title>

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
				
</head>
<body>


	<div class="header">
		<div class="head" style="position: static;">
			<p class="title" style="margin-right: 60px; margin-left: 60px;">黎映均老师问卷调查结果</p>

		</div>
	</div>

	</div>
	<s:hidden name="stuId" value="%{stuId}" />
	<s:hidden name="teaId" value="%{teaId}" />
	<br/>
	<br/>
	<table style="font-size: 14px; width: 95%;margin:5px; text-align: center;"  >
		<tr style="font-weight: bold;" >
			<td align="center" style="padding: 5px"  >课程：</td>
			<td align="center" style="padding: 5px" >英语</td>
			
			
			
		</tr>
		<tr style="font-weight: bold;" >
			 <td align="center" style="padding: 5px" >班级：</td>
			 <td align="center" style="padding: 5px" >全部</td>
			<td align="center" style="padding: 5px" >16影视动画班</td>
			<td align="center" style="padding: 5px" >16计算机应用1班</td>
		</tr>
		<tr style="font-weight: bold;" >
			 <td align="center" style="padding: 5px" >应测</td>
			 <td align="center" style="padding: 5px" >66</td>
			<td align="center" style="padding: 5px">实测</td>
			<td align="center" style="padding: 5px" >66</td>
			<td align="center" style="padding: 5px" >评估得分</td>
			<td align="center" >140.66</td>
		</tr>
		
		
		<!--  
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
	-->
</table>
<br/>
<br/>
<br/>

<table style="font-size: 12px; width: 95%;margin:5px; text-align: center;"  >
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 5px" width="10%">序号</td>
			<td align="center" style="padding: 5px"  width="20%">指标</td>
			<td align="center" style="padding: 5px" width="30%">评价内容</td>
			<td align="center" style="padding: 5px" width="20%">平均分</td>
		</tr>
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 5px" width="10%">1</td>
			<td align="center" style="padding: 5px" width="20%">教学态度</td>
			<td align="center" style="padding: 5px" width="30%">穿着整洁，语言文明，举止得体，符合教师形象要求</td>
			<td align="center" style="padding: 5px" width="20%"><a>9.8</a></td>
		</tr>
</table>



</body>
</html>
