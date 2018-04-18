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
	<link rel="stylesheet" href="static/ace/css/bootstrap.css" />
	<link rel="stylesheet" href="static/ace/css/font-awesome.css" />
	<!-- page specific plugin styles -->
	<!-- text fonts -->
	<link rel="stylesheet" href="static/ace/css/ace-fonts.css" />
	<!-- ace styles -->
	<link rel="stylesheet" href="static/ace/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
	<script type="text/javascript">
	var $ctx='<%=basePath%>';
	var jsessionid = "<%=session.getId()%>";  //勿删，uploadify兼容火狐用到
	</script>
	
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
 	<!-- 百度富文本编辑框-->
 	<script src="static/ace/js/jquery.js"></script>
	 	<!-- 上传插件 -->
	<link href="plugins/uploadify/uploadify.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="plugins/uploadify/swfobject.js"></script>
	<script type="text/javascript" src="plugins/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
	
	<script src="static/ace/js/bootstrap.js"></script>
	<!-- 表单构建组建 -->
    <script src="plugins/fhform/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="plugins/fhform/js/content.min.js?v=1.0.0"></script>
    <script src="plugins/fhform/js/jquery-ui-1.10.4.min.js"></script>
    <script src="plugins/fhform/js/beautifyhtml/beautifyhtml.js"></script>
	<!-- 百度富文本编辑框-->
	<script type="text/javascript" charset="utf-8">window.UEDITOR_HOME_URL = "/store/plugins/ueditor/";</script>
	<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.js"></script>
	<!-- 百度富文本编辑框-->
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!-- 上传控件 -->
	<script src="static/ace/js/ace/elements.fileinput.js"></script>
<!-- 删除时确认窗口 -->
	<script src="static/ace/js/bootbox.js"></script>
 
	
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
						<table id="table_report" modularNum="1" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:135px;text-align: right;padding-top: 13px;">主题名称:</td>
								<td style="width:365px;">
									<input type="hidden" name="HOMEPAGE_ID" id="HOMEPAGE_ID" value="">
									<input type="text" name="THEME" id="THEME" value="" maxlength="255" placeholder="这里输入主题名称" title="主题名称" style="width:98%;"/></td>
								<td style="width:135px;text-align: right;padding-top: 13px;">主题内容:</td>
								<td><input type="text" name="THEMECONTENT" id="THEMECONTENT" value="${pd.THEMECONTENT}" maxlength="255" placeholder="这里输入主题内容" title="主题内容" style="width:98%;"/></td>
							</tr>						 
							<tr style="background-color:#D5E9ED;" id="modularTrId1" modularContentNum="1">
								 <td style="width:75px;text-align: right;padding-top: 13px;">模块1名称:</td>
								 <td><input type="text" name="MODULAR1NAME" id="MODULAR1NAME" value="${pd.MODULAR1NAME}" maxlength="255" placeholder="这里输入模块一名称" title="模块一名称" style="width:98%;"/></td>
								 <td colspan="2" >
						 		 	<a class="btn btn-mini btn-success" onclick="addNewModular();">新增模块</a>
								    <input value1="1" value2="0" value3="0" modularNum="2" name="types1"  id="types1" type="hidden">
									   <input name="checkbox1" type="checkbox" checked="checked" class="ace ace-checkbox-2" id="pic1_1_1" onclick="showPicButton(this,'types1',1);" >	
									   <span class="lbl">图片</span>
									   <input name="checkbox2" type="checkbox" class="ace ace-checkbox-2" id="txt2_1_1" onclick="showPicButton(this,'types1',2);">	
									   <span class="lbl">文字</span>
									   <input name="checkbox3" type="checkbox" class="ace ace-checkbox-2" id="vid3_1_1" onclick="showPicButton(this,'types1',3);">
									   <span class="lbl">视频</span>
								 </td>
							</tr>   
							<tr  modularContentNum="1" parentId="modularTrId1" >
								<td style="width:75px;text-align: right;padding-top: 13px;">模块1内容:</td>
								<td>
								   <input type="text" id="imgpath_1_1" hompageId=""  placeholder="路径" class="col-xs-10 col-sm-7" value="">&nbsp;
								   <input type="text" id="file_1_1" placeholder="提示文字" class="col-xs-10" style="display: none;" />
								</td>
								<td colspan="2" >
									<a class="btn btn-mini btn-success" onclick="addNewModularContent('1');">新  增</a>
								    <a class="btn btn-mini btn-warn" onclick="uploadimg('file_1_1');">上传</a>
								    <a class="btn btn-mini btn-danger" onclick="delPicImg();">删除图片</a>
								    <a class="btn btn-mini btn-danger" onclick="viewPicImg('imgpath_1_1');">查看图片</a>
								</td>
							</tr>
							<tr id="solidTr">
								<td style="text-align: center;" colspan="10">
								<input name="arrData" id="arrData" type="hidden" value="";>
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
	<!-- 主题配置 -->
	<script type="text/javascript" src="static/js/website/homepage_edit.js"></script>
	
	
	<div id="imageDivID" style="position: absolute;width: 100%;height: 100%;background-size:70% 70%;background-repeat:no-repeat; border:1px solid red;display:none; z-index: 99999;left:0px;top: 0px;" 
	onclick="hidePicImage('imageDivID');"
	>&nbsp;</div>
</body>
</html>