<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>博伦职校问卷调查结果</title>

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
			function change(type){
				var list = ["dutyTeacher","mainTeacher","school"];
				for(var i = 0 ;i <list.length;i++){
					var ele = document.getElementById(list[i]);
					if(list[i] == type){
						ele.style.display  = "block";
					}else{
						ele.style.display  = "none";
					}
				}
			}
			
			</script>
</head>
<body>


	<div class="header">
		<div class="head" style="position: static;">
			<p class="title" style="margin-right: 60px; margin-left: 60px;">博伦职校问卷调查结果</p>

		</div>
	</div>
	<div style="margin: 10px;font-size: 15px; ">
	选择查看选项：
	<div>
	<input type="radio" name="type"  checked="checked" onclick="change('dutyTeacher')"> 任课老师</input>&nbsp;&nbsp;&nbsp;
	<input type="radio" name="type"  onclick="change('mainTeacher')">班主任</input>&nbsp;&nbsp;&nbsp;
	<input type="radio" name="type"  onclick="change('school')">学校</input>&nbsp;&nbsp;&nbsp;
	</div>
	</div>
	<s:hidden name="stuId" value="%{stuId}" />
	<s:hidden name="teaId" value="%{teaId}" />
	<div id="dutyTeacher" >
	<table style="font-size: 12px; width: 95%;margin:0 5px 5px 5px; text-align: center;"  >
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 2px" >姓名</td>
			<td align="center" style="padding: 2px" >课程</td>
			<td align="center" style="padding: 2px">评估得分</td>
			<td align="center" style="padding: 2px">应评</td>
			<td align="center" style="padding: 2px">实评</td>
		</tr>
		<s:iterator value="allList" >
			<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
				 <td align="center" style="padding: 2px" ><a href="teacherResult.jsp?teaId=<s:property  value="teaId"/> "> <s:property  value="teaName"/> </a></td>
				<td align="center" style="padding: 2px" ><s:property  value="courName"/></td>
				<td align="center" style="padding: 2px"><s:property  value="score"/></td>
				<td align="center" style="padding: 2px"><s:property value="num1"/> </td>
				<td align="center" style="padding: 2px"><s:property value="num2"/></td>
			</tr>
		</s:iterator>
	</table>
</div>
<!-- 班主任 -->
<div id="mainTeacher"  style="display: none" >
	<table style="font-size: 12px; width: 95%;margin:0 5px 5px 5px; text-align: center;"  >
	
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 2px" >姓名</td>
			<td align="center" style="padding: 2px">评估得分</td>
			<td align="center" style="padding: 2px">应评</td>
			<td align="center" style="padding: 2px">实评</td>
		</tr>
		<s:iterator value="mainList">
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			 <td align="center" style="padding: 2px" ><a href="teacherResult.jsp"><s:property value="mainTeacher"/> </a></td>
			<td align="center" style="padding: 2px"><s:property value="score"/></td>
			<td align="center" style="padding: 2px"><s:property value="num1"/></td>
			<td align="center" style="padding: 2px"><s:property value="num2"/></td>
		</tr>
		</s:iterator>
		
	</table>
</div>

<!-- 学校 -->
<div id="school" style="display: none" >
	<table style="font-size: 12px; width: 95%;margin:0 5px 5px 5px; text-align: center;"  >
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 2px" >姓名</td>
			<td align="center" style="padding: 2px" >课程</td>
			<td align="center" style="padding: 2px">评估得分</td>
			<td align="center" style="padding: 2px">应评</td>
			<td align="center" style="padding: 2px">实评</td>
		</tr>
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			 <td align="center" style="padding: 2px" ><a href="teacherResult.jsp"> 学校</a></td>
			<td align="center" style="padding: 2px" >英语</td>
			<td align="center" style="padding: 2px">140.66</td>
			<td align="center" style="padding: 2px">66</td>
			<td align="center" style="padding: 2px">66</td>
		</tr>
		<tr style="font-weight: bold;border-top-style:outset;border-color: #fff;border-width: 1px;" >
			<td align="center" style="padding: 2px" ><a>曹慧</a></td>
			<td align="center" style="padding: 2px" >计算机基础</td>
			<td align="center" style="padding: 2px">136.32</td>
			<td align="center" style="padding: 2px">63</td>
			<td align="center" style="padding: 2px">60</td>
		</tr>
	</table>
</div>



<br>

</br>
</body>
</html>
