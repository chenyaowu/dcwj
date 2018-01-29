<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>专业课满意度调查</title>



<script type="text/javascript">

function alertw(name){
    var iframe = document.createElement("IFRAME");
    iframe.style.display="none";
    iframe.setAttribute("src", 'data:text/plain,');
    document.documentElement.appendChild(iframe);
    window.frames[0].window.alert(name);
    iframe.parentNode.removeChild(iframe);
  } 
	function check(){
		var question = ["q28","q29","q30","q31","q32","q33","q34","q35","q36","q37","q38","q39","q40","q41","q42","q43","q44","q45","q47"];
		for(var j=0;j<question.length;j++){
			var list = document.getElementsByName(question[j]);
			var isCheck = false;
			for(var i=0;i<list.length;i++){
				if(list[i].checked){
					isCheck = true;
					break;
				}
			}
			if(!isCheck){
				alertw("你还有未评分的问题");
				return false;
			}
				
			
			
		}
	}
</script>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="viewport"
		content="width=device-width, minimum-scale=1, maximum-scale=1,user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link rel="stylesheet" type="text/css" href="css/question.css" />
		<script src="https://staticfile.qnssl.com/jquery/1.10.1/jquery.min.js"></script>
		<script src="js/hintinfo.js" type="text/javascript"></script>
		<script src="https://www.wjx.cn/js/jqmobo2.js?v=347" type="text/javascript"></script>
		
</head>
<body>
	
	<form id="form1" method="post" action="scoreSchool">
		<s:hidden name="stuId" value="%{stuId}"/>
		<s:hidden name="teaId" value="%{teaId}"/>
		<div id="toptitle">
			<div class="header_left"></div>
			<h1 class="htitle">学生在校体验满意度调查</h1>
		</div>
		<div id="divContent">
			<div id="divQuestion">
				<fieldset class='fieldset' style='' id='fieldset1'>
				<h4 align="center">为了更好地服务学生，特做此次调查。感谢您的参与！</h4>
				
			
				
				<!-- 开始     -->
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							1.	您对学校宿舍环境的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q28_5' name='q28' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q28_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q28_4' name='q28' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q28_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q28_3' name='q28' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q28_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q28_2' name='q28' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q28_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q28_1' name='q28' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q28_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							2.	您对学校食堂满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q29_5' name='q29' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q29_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q29_4' name='q29' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q29_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q29_3' name='q29' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q29_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q29_2' name='q29' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q29_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q29_1' name='q29' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q29_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						
						<div class='field-label'>
							3.	您对学校体育设施的满意度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q30_5' name='q30' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q30_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q30_4' name='q30' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q30_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q30_3' name='q30' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q30_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q30_2' name='q30' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q30_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q30_1' name='q30' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q30_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							4.	您对学校医疗条件（主要指校医室）的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q31_5' name='q31' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q31_4' name='q31' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q31_3' name='q31' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q31_2' name='q31' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q31_1' name='q31' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q31_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							5.	您对学校硬件设施（如教学楼、图书馆、机房、实训室等）的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q32_5' name='q32' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q32_4' name='q32' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q32_3' name='q32' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q32_2' name='q32' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q32_1' name='q32' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q32_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							6.	您对学校建筑风格以及总体设计的满意程度<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q33_5' name='q33' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q33_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q33_4' name='q33' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q33_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q33_3' name='q33' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q33_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q33_2' name='q33' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q33_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q33_1' name='q33' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q33_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							7.	您对学勤管理的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q34_5' name='q34' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q34_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q34_4' name='q34' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q34_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q34_3' name='q34' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q34_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q34_2' name='q34' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q34_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q34_1' name='q34' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q34_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							8.	您对学校教学管理工作（教务处工作）的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q35_5' name='q35' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q35_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q35_4' name='q35' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q35_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q35_3' name='q35' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q35_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q35_2' name='q35' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q35_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q35_1' name='q35' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q35_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							9.	您对学校管理的整体满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q36_5' name='q36' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_5'>A</div>
							</div>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q36_4' name='q36' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q36_3' name='q36' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q36_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q36_2' name='q36' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q36_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q36_1' name='q36' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q36_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							10.	您对学校师资力量的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q37_5' name='q37' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q37_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q37_4' name='q37' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q37_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q37_3' name='q37' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q37_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q37_2' name='q37' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q37_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q37_1' name='q37' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q37_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							11.	您对学校教师教学质量的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q38_5' name='q38' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q38_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q38_4' name='q38' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q38_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q38_3' name='q38' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q38_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q38_2' name='q38' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q38_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q38_1' name='q38' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q38_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							12.	您对学校学习气氛的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q39_5' name='q39' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q39_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q39_4' name='q39' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q39_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q39_3' name='q39' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q39_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q39_2' name='q39' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q39_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q39_1' name='q39' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q39_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							13.	您对学校对学生的考核方式和标准的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q40_5' name='q40' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q40_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q40_4' name='q40' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q40_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q40_3' name='q40' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q40_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q40_2' name='q40' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q40_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q40_1' name='q40' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q40_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							14.	您对师生间沟通的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q41_5' name='q41' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q41_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q41_4' name='q41' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q41_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q41_3' name='q41' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q41_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q41_2' name='q41' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q41_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q41_1' name='q41' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q41_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							15.	您对学生管理工作（主要是德育处工作）的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q42_5' name='q42' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q42_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q42_4' name='q42' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q42_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q42_3' name='q42' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q42_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q42_2' name='q42' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q42_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q42_1' name='q42' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q42_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							16.	你对学生会工作、活动的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q43_5' name='q43' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q43_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q43_4' name='q43' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q43_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q43_3' name='q43' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q43_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q43_2' name='q43' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q43_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q43_1' name='q43' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q43_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							17.	您对学校社团工作、活动的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
						
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q44_5' name='q44' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q44_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q44_4' name='q44' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q44_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q44_3' name='q44' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q44_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q44_2' name='q44' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q44_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q44_1' name='q44' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q44_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							18.	您对学校组织的相关活动的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q45_5' name='q45' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q45_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q45_4' name='q45' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q45_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q45_3' name='q45' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q45_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q45_2' name='q45' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q45_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q45_1' name='q45' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q45_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							19.	您对学校奖学金、助学金制度的满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q46_5' name='q46' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q46_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q46_4' name='q46' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q46_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q46_3' name='q46' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q46_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q46_2' name='q46' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q46_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q46_1' name='q46' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q46_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					
					
					
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							20.	您对学校整体满意程度是<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='A' id='q47_5' name='q47' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q47_5'>A</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='B' id='q47_4' name='q47' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q47_4'>B</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='C' id='q47_3' name='q47' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q47_3'>C</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='D' id='q47_2' name='q47' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q47_2'>D</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='E' id='q47_1' name='q47' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q47_1'>E</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					<h5>您的意见和建议</h5>
					<textarea rows="10" cols="10" style="width: 100%" name="q48"></textarea>
					
					
					
					
					
				</fieldset>
			</div>
			<div id="divMatrixRel"
				style="position: absolute; display: none; width: 80%; margin: 0 10%;"
				class="ui-input-text">
				<input type="text" placeholder="请注明..." id="matrixinput"
					style="min-height: 2em;
                width: 100%; padding: 0.3em 0.6em;" />
			</div>
			<div id="divMatrixHeader"
				style="position: absolute; display: none;font-size:12px;color:#8c8c8c">

			</div>
			<div class="shopcart" id="shopcart" style="display:none;"></div>
			
					<input type="submit" style="margin:30px 0 30px 0;width: 100%;height: 43px;border-radius:10px;background-color: #13b5b1;color: white;font-size: 18px;border-width: 0; " value="提交" value="提交" onclick="return check()"/>
				
			</div>
	</form>
</body>
</html>
