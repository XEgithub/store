<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="homepage/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="HOMEPAGE_ID" id="HOMEPAGE_ID" value="${pd.HOMEPAGE_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:135px;text-align: right;padding-top: 13px;">主题名称:</td>
								<td><input type="text" name="THEME" id="THEME" value="${pd.THEME}" maxlength="255" placeholder="这里输入主题名称" title="主题名称" style="width:98%;"/></td>
								<td></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">主题内容:</td>
								<td><input type="text" name="THEMECONTENT" id="THEMECONTENT" value="${pd.THEMECONTENT}" maxlength="255" placeholder="这里输入主题内容" title="主题内容" style="width:98%;"/></td>
									<td></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块1名称:</td>
								<td><input type="text" name="MODULAR1NAME" id="MODULAR1NAME" value="${pd.MODULAR1NAME}" maxlength="255" placeholder="这里输入模块一名称" title="模块一名称" style="width:98%;"/></td>
									<td></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块一内容:</td>
								<td>
								
									<input type="file" name="File_name" id="uploadify1" keepDefaultStyle = "true"/>
									
									
								<input type="text" name="MODULAR1CONTENT" id="MODULAR1CONTENT" value="${pd.MODULAR1CONTENT}" maxlength="255" placeholder="这里输入模块一内容" title="模块一内容" style="width:98%;"/></td>
									<td></td>
									
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块2名称:</td>
								<td><input type="text" name="MODULAR2NAME" id="MODULAR2NAME" value="${pd.MODULAR2NAME}" maxlength="255" placeholder="这里输入模块2名称" title="模块2名称" style="width:98%;"/></td>
							bvb </tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块2内容:</td>
								<td><input type="text" name="MODULAR2CONTENT" id="MODULAR2CONTENT" value="${pd.MODULAR2CONTENT}" maxlength="255" placeholder="这里输入模块2内容" title="模块2内容" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块3名称:</td>
								<td><input type="text" name="MODULAR3NAME" id="MODULAR3NAME" value="${pd.MODULAR3NAME}" maxlength="255" placeholder="这里输入模块3名称" title="模块3名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块3内容:</td>
								<td><input type="text" name="MODULAR3CONTENT" id="MODULAR3CONTENT" value="${pd.MODULAR3CONTENT}" maxlength="255" placeholder="这里输入模块3内容" title="模块3内容" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块4名称:</td>
								<td><input type="text" name="MODULAR4NAME" id="MODULAR4NAME" value="${pd.MODULAR4NAME}" maxlength="255" placeholder="这里输入模块4名称" title="模块4名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">模块4内容:</td>
								<td><input type="text" name="MODULAR4CONTENT" id="MODULAR4CONTENT" value="${pd.MODULAR4CONTENT}" maxlength="255" placeholder="这里输入模块4内容" title="模块4内容" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		
		function uploadimg(){
			$('#uploadify1').uploadifyUpload();
		}
		
		//保存
		function save(){
			if($("#THEME").val()==""){
				$("#THEME").tips({
					side:3,
		            msg:'请输入主题名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#THEME").focus();
			return false;
			}
			if($("#THEMECONTENT").val()==""){
				$("#THEMECONTENT").tips({
					side:3,
		            msg:'请输入主题内容',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#THEMECONTENT").focus();
			return false;
			}
			if($("#MODULAR1NAME").val()==""){
				$("#MODULAR1NAME").tips({
					side:3,
		            msg:'请输入模块一名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR1NAME").focus();
			return false;
			}
			if($("#MODULAR1CONTENT").val()==""){
				$("#MODULAR1CONTENT").tips({
					side:3,
		            msg:'请输入模块一内容',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR1CONTENT").focus();
			return false;
			}
			if($("#MODULAR2NAME").val()==""){
				$("#MODULAR2NAME").tips({
					side:3,
		            msg:'请输入模块2名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR2NAME").focus();
			return false;
			}
			if($("#MODULAR2CONTENT").val()==""){
				$("#MODULAR2CONTENT").tips({
					side:3,
		            msg:'请输入模块2内容',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR2CONTENT").focus();
			return false;
			}
			if($("#MODULAR3NAME").val()==""){
				$("#MODULAR3NAME").tips({
					side:3,
		            msg:'请输入模块3名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR3NAME").focus();
			return false;
			}
			if($("#MODULAR3CONTENT").val()==""){
				$("#MODULAR3CONTENT").tips({
					side:3,
		            msg:'请输入模块3内容',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR3CONTENT").focus();
			return false;
			}
			if($("#MODULAR4NAME").val()==""){
				$("#MODULAR4NAME").tips({
					side:3,
		            msg:'请输入模块4名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR4NAME").focus();
			return false;
			}
			if($("#MODULAR4CONTENT").val()==""){
				$("#MODULAR4CONTENT").tips({
					side:3,
		            msg:'请输入模块4内容',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MODULAR4CONTENT").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			if(!$("#THEME").val()){
				
				$("#THEME").val("默认");
				$("#THEMECONTENT").val("static/config/theme.properties");
				$("#MODULAR1CONTENT").val("轮播主图");
			}
			
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>