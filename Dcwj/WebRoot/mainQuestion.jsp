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
		var question = ["q16","q17","q18","q19","q20","q21","q22","q23","q24","q25","q26","q27"];
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
		<script src="https://www.wjx.cn/js/jqmobo2.js?v=347" type="text/javascript"></script>
		
</head>
<body>
	
	<form id="form1" method="post" action="scoreMainTea">
		<s:hidden name="stuId" value="%{stuId}"/>
		<s:hidden name="teaId" value="%{teaId}"/>
		<s:hidden name="courName" value="%{courName}"/>
		<div id="toptitle">
			<div class="header_left"></div>
			<h1 class="htitle">班主任满意度调查</h1>
		</div>
		<div id="divContent">
			<div id="divQuestion">
				<fieldset class='fieldset' style='' id='fieldset1'>
				
				<!-- 开始     -->
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							1. 为学生服务的精神<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q16_8' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q16_7' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q16_6' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q16_5' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q16_4' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q16_3' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q16_2' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q16_1' name='q16' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q16_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							2. 为人师表，在学生中的威信<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q17_8' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q17_7' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q17_6' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q17_5' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q17_4' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q17_3' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q17_2' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q17_1' name='q17' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q17_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						
						<div class='field-label'>
							3. 与学生的关系<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q18_8' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q18_7' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q18_6' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q18_5' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q18_4' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q18_3' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q18_2' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q18_1' name='q18' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q18_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							4. 抓班级学生气氛、处理歪风邪气方面<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q19_8' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q19_7' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q19_6' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q19_5' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q19_4' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q19_3' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q19_2' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q19_1' name='q19' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q19_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							5. 对班级的日常管理、处理偶发事件方面<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q20_8' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q20_7' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q20_6' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q20_5' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q20_4' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q20_3' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q20_2' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q20_1' name='q20' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q20_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<div class='field-label'>
							6、抓自习课纪律、关心课堂纪律、与任课老师沟通<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q21_8' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q21_7' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q21_6' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q21_5' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q21_4' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q21_3' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q21_2' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q21_1' name='q21' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q21_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							7. 对班委会、团支部的工作指导<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q22_8' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q22_7' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q22_6' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q22_5' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q22_4' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q22_3' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q22_2' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q22_1' name='q22' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q22_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							8. 善于做学生的思想工作方面<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q23_8' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_8'>8分</div>
							</div>

							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q23_7' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q23_6' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q23_5' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q23_4' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q23_3' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q23_2' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q23_1' name='q23' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q23_1'>1分</div>
							</div>
							
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							9. 组织班级学校各项活动和社会实践并获得成效方面<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q24_8' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q24_7' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q24_6' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q24_5' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q24_4' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q24_3' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q24_2' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q24_1' name='q24' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q24_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							10. 培养学生的学习和生活能力并获得成效方面<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q25_8' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q25_7' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q25_6' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q25_5' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q25_4' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q25_3' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q25_2' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q25_1' name='q25' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q25_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							11. 培养和发展学生的个性、特长方面<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q26_8' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q26_7' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q26_6' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q26_5' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q26_4' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q26_3' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q26_2' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q26_1' name='q26' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q26_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							12. 班级后进生转化情况<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q27_8' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q27_7' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q27_6' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q27_5' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q27_4' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q27_3' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q27_2' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q27_1' name='q27' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q27_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					
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
