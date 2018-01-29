<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>班主任满意度调查</title>
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
		var question = ["q1","q2","q3","q4","q5","q6","q7","q8","q9","q10","q11","q12","q13","q14","q15"];
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
	
	<form id="form1" method="post" action="scoreTea">
		<s:hidden name="stuId" value="%{stuId}"/>
		<s:hidden name="teaId" value="%{teaId}"/>
		<s:hidden name="courName" value="%{courName}"/>
		
		
		
		<div id="toptitle">
			<div class="header_left"></div>
			<h1 class="htitle">专业课满意度调查</h1>
		</div>
		<div id="divContent">
			<div id="divQuestion">
				<fieldset class='fieldset' style='' id='fieldset1'>
				
				<!-- 开始     -->
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3>教学态度</h3>
						<div class='field-label'>
							1. 专业理论课课时安排是否能满足教学需求<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q1_10' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q1_9' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q1_8' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q1_7' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q1_6' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q1_5' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q1_4' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q1_3' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q1_2' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q1_1' name='q1' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							2. 关心学生的学习和生活，能主动对生活和学习困难的同学给予帮助。对学生一视同仁，不偏心<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q2_10' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q2_9' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q2_8' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q2_7' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q2_6' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q2_5' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q2_4' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q2_3' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q2_2' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q2_1' name='q2' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q2_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						
						<div class='field-label'>
							3. 尊重学生，以理服人，不强迫、不辱骂、不体罚或变相体罚<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q3_10' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q3_9' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_2'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q3_8' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q3_7' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q3_6' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q3_5' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q3_4' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q3_3' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q3_2' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q3_1' name='q3' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q3_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							4. 严以律己，以身作则，不收家长财物，不有偿补课，不向学生和家长推销辅导资料或其它产品<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q4_10' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q4_9' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q4_8' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q4_7' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q4_6' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q4_5' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q4_4' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q4_3' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q4_2' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q4_1' name='q4' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q4_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							5. 重视品德教育，传授为人处世的道理，充满正能量<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q5_10' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q5_9' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q5_8' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q5_7' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q5_6' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q5_5' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q5_4' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q5_3' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q5_2' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q5_1' name='q5' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q5_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3>教学能力</h3>
						<div class='field-label'>
							1. 按时上、下课，不迟到、不早退、不旷课、不拖堂<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q6_10' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q6_9' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q6_8' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q6_7' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q6_6' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q6_5' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q6_4' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q6_3' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q6_2' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q6_1' name='q6' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q6_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							2. 上课时严格考勤，对睡觉、玩手机的同学能严格管理，且能有效管控班级纪律，威信高<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q7_10' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q7_9' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q7_8' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q7_7' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q7_6' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q7_5' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q7_4' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q7_3' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q7_2' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q7_1' name='q7' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q7_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							3. 每堂课都认真备课，知识传授简洁、有序、准确<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q8_10' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q8_9' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q8_8' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_8'>8分</div>
							</div>

							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q8_7' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q8_6' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q8_5' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q8_4' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q8_3' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q8_2' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q8_1' name='q8' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q8_1'>1分</div>
							</div>
							
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							4. 教学方法得当，有吸引力，课堂气氛好，同学们很愿意上该老师的课<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q9_10' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q9_9' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q9_8' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q9_7' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q9_6' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q9_5' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q9_4' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q9_3' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q9_2' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q9_1' name='q9' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q9_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							5. 能借助信息技术提高教学效率，但不过度依赖视频教学<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q10_10' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q10_9' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q10_8' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q10_7' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q10_6' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q10_5' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q10_4' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q1_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q10_3' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q10_2' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q10_1' name='q10' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q10_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							6. 课堂能体现学生主体性，有自主学习，小组合作，交流展示等活动，知识点能做到堂堂清<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q11_10' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q11_9' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q11_8' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q11_7' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q11_6' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q11_5' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q11_4' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q11_3' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q11_2' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q11_1' name='q11' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q11_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							7. 作业布置合理，批改认真，评讲及时<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q12_10' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q12_9' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q12_8' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q12_7' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q12_6' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q12_5' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q12_4' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q12_3' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q12_2' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q12_1' name='q12' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q12_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							8. 老师上课能关注每个同学，学生提问、发言机会多<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q13_10' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q13_9' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q13_8' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q13_7' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q13_6' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q13_5' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q13_4' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q13_3' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q13_2' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q13_1' name='q13' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q13_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							9. 老师在课堂上从不接、打手机，不做与教学无关的事，不讲与教学无关的有负面影响的话<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q14_10' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q14_9' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q14_8' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q14_7' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q14_6' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q14_5' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q14_4' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q14_3' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q14_2' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q14_1' name='q14' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q14_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					
					<div class='field ui-field-contain' id='div1' req='1' topic='1'
						data-role='fieldcontain' type='3'>
						<h3></h3>
						<div class='field-label'>
							10. 老师的教学使全班同学该科成绩有显著提高<span class='req'>*</span>
						</div>
						<div class='ui-controlgroup'>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='10' id='q15_10' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_10'>10分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='9' id='q15_9' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_9'>9分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='8' id='q15_8' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_8'>8分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='7' id='q15_7' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_7'>7分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='6' id='q15_6' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_6'>6分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='5' id='q15_5' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_5'>5分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='4' id='q15_4' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_4'>4分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='3' id='q15_3' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_3'>3分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='2' id='q15_2' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_2'>2分</div>
							</div>
							<div class='ui-radio'>
								<span class='jqradiowrapper'><input type='radio'
									value='1' id='q15_1' name='q15' style='display:none;' /><a
									class='jqradio' href='javascript:;'></a></span>
								<div class='label' for='q15_1'>1分</div>
							</div>
						</div>
						<div class='errorMessage'></div>
					</div>
					
					<!-- 结束 -->
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
			
					<input type="submit" style="margin:30px 0 30px 0;width: 100%;height: 43px;border-radius:10px;background-color: #13b5b1;color: white;font-size: 18px;border-width: 0; " value="提交" onclick="return check()"/>
				
			</div>
	</form>
</body>
</html>
