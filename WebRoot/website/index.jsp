<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>信息系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="远元集团">
<meta name="keywords" content="郑远元,远元集团">
<meta name="description" content="郑远元,远元集团 官网">
<link href="favicon.ico" type="image/x-icon" rel="icon">
<link href="favicon.ico" type="image/x-icon" rel="shortcut icon">
<link href="<%=basePath %>static/resource/assert/css/style.css" rel="stylesheet" type="text/css" />
 
<link href="<%=basePath %>static/resource/assert/css/animate.css" rel="stylesheet" type="text/css" />
 
<link rel="stylesheet" type="text/css" href="<%=basePath %>static/resource/assert/css/jquery.vm-carousel.css">
<style type="text/css">
  .vmc-centered .vmc_active .imgtitle { transform: scale(2.83,1.2);}
  .vmc-centered .vmc_active .centerImg {top:-125px;  }

.shake {
	display: inline-block;
	cursor:pointer;
	-webkit-transform-origin: center center;
	-ms-transform-origin: center center;
	transform-origin: center center;
}

.shake:hover{

	transform: scale(1.3,1.3);
}  

</style>
<script type="text/javascript" src="<%=basePath %>static/resource/assert/js/html5.js"></script>
<script type="text/javascript" src="<%=basePath %>static/resource/assert/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath %>static/resource/assert/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>static/resource/assert/js/common.js"></script>
<script type="text/javascript" src="<%=basePath %>static/resource/assert/js/jquery.SuperSlide.js"></script>
<script src="<%=basePath %>static/resource/assert/js/modernizr.js"></script>
<script type="text/javascript">
		 jQuery.ctx = "<%=basePath%>"; //在js中可以直接通过$.ctx来获取应用程序上下文
</script>
<script src="<%=basePath %>static/resource/assert/js/loadData.js"></script>
</head>

<body class="body_picture">

	<!--顶部 开始-->
	
		<div style="height:31px;background-color: red; color:white;" >
		<div class="mdhead">
			<div class="lhead">
				 <span>
					欢迎来远元集团。客服热线：400-029-0303
					<span style="width: 350px;">&nbsp;</span>&nbsp;&nbsp;
				 </span> 
	     	</div>

			 <div class="rhead">
		<!--      <ul><li><a>关注我们</a></li><li><a>进度查询</a></li><li><a>售后工单</a></li></ul> -->
				<a href="javascript:void(0)" onclick="setHomePage(this);" style="margin-right:10px;cursor: pointer;" >设为首页</a>|	&nbsp;&nbsp;
				 
				<a href="javascript:void(0)" onclick="addFavorite(this);" style="margin-right:10px;cursor: pointer;">加入收藏</a>|	&nbsp;&nbsp;
				
				<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=319147570&amp;site=qq&amp;menu=yes"  style="margin-right:10px;cursor: pointer;" >在线咨询 </a> 
			</div>
	    </div>
	</div> 
	<div class="clr">
</div>

	<!--顶部 结束-->
	<!--Logo 开始-->

	<div id="logo_main">
		<div id="logo">
			<!--网站Logo 开始-->
			<div class="WebLogo">
				<a href="javascript:void(0)" target="_self">
					<img src="<%=basePath %>static/resource/images1/LOGO.png" height="58"  title="远元集团" alt="远元集团" style="top:30px;margin-top: 20px; " />
				</a>
			</div>
			<!--网站Logo  结束-->
			<!--导航条 开始-->
			<div id="navigation">
				<ul class="navigationlist">
					<li><a id="showpageid" class="headpage" href="<%=basePath %>"  onmousemove="moveMenu('aid0','xiala1','menuxiala1');" >首页</a></li>
				 
				 
				</ul>
			</div>
		 
			<!--导航条 结束-->
		</div>
	</div>
	 
	 
	<!--JS幻灯片 开始-->
	<div id="banner_main">
		<!--幻灯片 开始-->
		<div id="banner" >
			<ul class="bannerlist" id="headulid">
			 
			</ul>
			
			<div id="bgnextid"  > 
				<img alt="上一图" style="cursor: pointer;" onclick="nextimg();" width="50" height="50" src="<%=basePath %>static/resource/images1/r-left.png" 
			 >  </div>
			<div id="bgfrontid"  > 
				<img alt="下一图" style="cursor: pointer;"  onclick="frontimg();" width="50" height="50" src="<%=basePath %>static/resource/images1/r-right.png" 
				 >  
			</div>
		</div>
		<div class="hd">
			<ul></ul>
		</div>
  	 
		<!--幻灯片 结束-->
	</div>
	 
 <div style="  clear: both;height: 20px;"></div>
	<!--主体内容 开始-->
	 <div class="mainContent">    
		<div id="aboutme" style="float:left;width: 750px;height: 290px;border:1px solid #ddd;"> 
		 	<div style="float: left;"  >
				 <img alt="下一图"  onclick="frontimg();" id="aboutimgId" width="278" height="290" src="<%=basePath %>static/resource/images1/y-5.jpg"> 
			 </div>
			 	<div style="float: right;width:445px;"  > 
			 			<table border="0" style="width: 96%;height: 100%;margin: 10px 5px 5px 10px;" >
			 				<tr>
			 					<td style="height: 30px;"><h1 style="height:60;font-weight: bold;" >关于我们</h1> </td>
			 				</tr>
			 				<tr>
			 					<td  id="aboutUSContentID" style="height: 200px;word-wrap:break-word;word-break:break-all;line-height: 36px;font-size: 16px;cursor: pointer; " 
			 					onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=集团简介&amp;SUNCATALOGUE_NAME=')">  
			 						        &nbsp; &nbsp;陕西郑远元专业修脚保健服务集团有限公司（简称远元集团），是由陕西省工商局核准成立的全国知名连锁性集团公司，
			 						        并由国家工商行政管理总局商标局批准“郑远元”为注册商标，2014年获得陕西省著名商标。
			 						        远元集团以 ...
			 					</td>
			 					</tr>
			 					<tr>
			 					<td  style="height: 40px;"> 
			 						<div   class="btn1" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=集团简介&amp;SUNCATALOGUE_NAME=')"  >查看详情</div> 
			 					</td>
			 				</tr>
			 			</table> 
			 	</div>
		</div>
		<div  style="float: right;width:445px;height: 290px;border:1px solid #ddd;">
	 		 <ul id="tab" >
			        <li class="current" >新闻资讯</li>
			        <li style=" margin-bottom: 0px;">市场动态</li>
			        <li style=" margin-bottom: 0px;">店面分布</li>
			      	<li style=" margin-bottom: 0px;">在线视频</li>
			    </ul>
			    <div id="content">
			        <ul style="display:block;">
		           			<table border="0" style="width:410px; margin-left : -10px; margin-top : 15px;">
		           				<tr> 
		           					<td  rowspan="2" style="width: 130px;">
		           					 <img  id="newsimgid1"  width="113px"  height="76px" src=" "> 
		           					</td>
		           					<td height="35" style="font-size: 14px;font-weight: bold;cursor: pointer;" id="newstitleid1" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=新闻中心&amp;SUNCATALOGUE_NAME=')">
		           						 
		           					</td>
		           				</tr>
		           				<tr>
		           					<td height="60" style="font-size: 10px;text-indent:35px;cursor: pointer;" id="newsbriefid1" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=新闻中心&amp;SUNCATALOGUE_NAME=')">
		           						 
		           					</td>
		           				</tr>
		           				<tr height="20" >
		           					<td colspan="2" >
		           					</td>
		           				</tr>
		           				<tr>
		           					<td  rowspan="2">
		           					   <img  id="newsimgid2"  width="113px"  height="76px" src=" "> 
		           					</td>
		           					<td height="30" style="font-size: 14px;font-weight: bold;cursor: pointer;" id="newstitleid2" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=新闻中心&amp;SUNCATALOGUE_NAME=')">
		           					 
		           					</td>
		           				</tr>
		           				<tr>
		           					<td height="60" style="font-size: 10px;text-indent:35px;cursor: pointer;" id="newsbriefid2" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=新闻中心&amp;SUNCATALOGUE_NAME=')">
		           							 
		           					</td>
		           				</tr>
		           		 </table>	
			        </ul>
			         <ul style=" margin-bottom: 0px;">
			            	<table border="0" style="width:410px; margin-left : -10px; margin-top : 15px;">
		           				<tr> 
		           					<td  rowspan="2" style="width: 130px;">
		           					 <img id="media_img_id1" alt="下一图"  width="113px"  height="76px"  src=""> 
		           					</td>
		           					<td height="30" style="font-size: 14px;font-weight: bold;cursor: pointer; " id="media_title_id1" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=市场动态&amp;SUNCATALOGUE_NAME=')">
		           						
		           					</td>
		           				</tr>
		           				<tr>
		           					<td height="60" style="font-size: 10px;cursor: pointer;" id="media_brief_id1" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=市场动态&amp;SUNCATALOGUE_NAME=')">
		           						
		           					</td>
		           				</tr>
		           				<tr height="20" >
		           					<td colspan="2">
		           					</td>
		           				</tr>
		           				<tr>
		           					<td  rowspan="2">
		           					 <img id="media_img_id2"  width="113px"  height="76px" alt="下一图" src=""> 
		           					</td>
		           					<td height="30" style="font-size: 14px;font-weight: bold;cursor: pointer;" id="medi_title_id2">
		           					
		           					</td>
		           				</tr>
		           				<tr>
		           					<td height="60" style="font-size: 10px;cursor: pointer;" id="media_brief_id2">
		           						 
		           					</td>
		           				</tr>
		           		 </table>	
			        </ul>
			        <ul style=" margin-bottom: 0px;">   
						<img alt="下一图" style="width: 300px;height:190px;" src="<%=basePath %>static/resource/images1/y-23.png">
						<div   class="btn2" onclick="openStoreDistribution();" >查看详情</div> 
			        </ul>
			         <ul  id="onlineVideo" style=" margin-bttom: 0px;"> 
			         		
			         		<table border="0" style="width:430px; margin-left : -10px; margin-top : 10px;">
			         			<tr  height="35">
			         			<td style="width: 14px;">■</td><td style="font-size: 14px;cursor: pointer;" id="onlineVideo1" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=聚焦媒体&amp;SUNCATALOGUE_NAME=')"> </td>
			         			</tr>
			         			<tr>
			         			<td  height="35">■&nbsp; </td><td style="font-size: 14px;cursor: pointer;"  id="onlineVideo2" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=聚焦媒体&amp;SUNCATALOGUE_NAME=')"></td>
			         			</tr>
			         			<tr>
			         			<td  height="35">■&nbsp; </td><td style="font-size: 14px;cursor: pointer;"   id="onlineVideo3" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=聚焦媒体&amp;SUNCATALOGUE_NAME=')"></td>
			         			</tr>
			         			<tr>
			         			<td height="35">■&nbsp; </td><td style="font-size: 14px;cursor: pointer;"  id="onlineVideo4" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=聚焦媒体&amp;SUNCATALOGUE_NAME=')"></td>
			         			</tr>
			         			<tr>
			         			<td height="35">■&nbsp; </td><td style="font-size: 14px;cursor: pointer;" id="onlineVideo5" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=聚焦媒体&amp;SUNCATALOGUE_NAME=')"></td>
			         			</tr>
			         			<tr>
			         			<td height="35">■&nbsp; </td><td style="font-size: 14px;cursor: pointer;"  id="onlineVideo6" onclick="openPage('<%=basePath %>newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=聚焦媒体&amp;SUNCATALOGUE_NAME=')"></td>
			         			</tr>
			         		
			         		</table>
			          
			        </ul>
		    </div>
		</div>
	</div>
    <div style="clear: both;height:15px;"></div>
     <div  style="width: 1440px;height:180px; margin:0 auto;">
		<ul id="bottomImgUIID" class="vmcarousel-centered-infitine vmc-centered">
			 
		</ul>
    </div>
    
	<div style="  clear: both;height:30px;"></div>
	<!--主体内容 结束-->
	<!--foot-->
	<div id="floor_14_main">
	 <div class="footer">
	    <div class="in">
		        <div class="nag">
		            <div class="e e_first">
		                <label>全国服务热线:<span style="font-size: 14px;">工作时间：9:00-18:00</span> </label>
		                <br/>  
		                 <span style="font-size:40px;color:red;" >400-029-0303</span>
		                 <br/>  
		                  <br/>
		            </div>
		            <div  style="  float: left;width: 280px;line-height:30px; margin-right: 50px;margin-left: 50px;border-right : 1px solid #e6e6e6;  ">
		               
		              A:西安市和平路108号佳腾大厦13层C座</a><br>
		              T:86-029-8751 2455/8751 9238<br>
		                 F:029-8752 9245
		            </div>
		           
		           <div class="code c_first">
		            	<table border="0" >
		            		<tr style="width: 116px;">
		            			<td  rowspan="3" >
		            			  <img style="float: left;margin-right: 6px;" width="90" height="90" src="<%=basePath %>static/resource/images1/guanfang.png" alt="APP下载">
		            			</td>
		            			<td>
		            			  <img style="float: left;" width="26" height="26" src="<%=basePath %>static/resource/images1/weibo-1.png" alt="APP下载">
		            			</td>
		            		</tr>
		            			<tr>
		            			<td>官远方元</td>
		            			
		            		</tr>
		            		<tr>
		            		<td>微集博团</td>
		            		</tr>
		            	</table>
		            </div>
		            <div class="code c_first">
		               <table style="text-align:right;">
		            		<tr>
		            			<td   rowspan="3">
		            			  <img style="float: left;margin-right: 6px;" width="90" height="90" src="<%=basePath %>static/resource/images1/dingyue.jpg" alt="APP下载">
		            			</td>
		            			<td>
		            			  <img style="float: left;" width="26" height="26" src="<%=basePath %>static/resource/images1/weixin-1.png" alt="APP下载">
		            			</td>
		            		</tr>
		            		<tr>
		            			<td>订远阅元</td>
		            		</tr>
		            		<tr>
		            		<td>号集   团</td>
		            		</tr>
 		            	</table>
		            </div>
		            <div class="code c_first">
		                  <table style="text-align:right;">
		            		<tr>
		            			<td  rowspan="3">
		            			  <img style="float: left;margin-right: 6px;" width="90" height="90" src="<%=basePath %>static/resource/images1/fuwu.jpg" alt="APP下载">
		            			</td>
		            			<td>
		            			  <img style="float: left;" width="26" height="26" src="<%=basePath %>static/resource/images1/weixin-1.png" alt="APP下载">
		            			</td>
		            		</tr>
		            		<tr>
		            			<td>服远务元</td>
		            		</tr>
		            		<tr>
		            		<td>号集团</td>
		            		</tr>
		            		
		            		</tr>
		            	</table>
		            </div>
		            
		            <div class="clear"></div>
		        </div>
	      </div>
	   </div>
	</div>
	<!--第五行频道 结束-->
	<!-- 友情链接 开始-->
	<!--div id="link_main"></div-->
	<!-- 友情链接 结束-->
	<!-- 底部版权 开始-->
	<div id="copyright_main">
		<div id="copyright">
			<span><a href="http://www.zhengyuanyuan.com" target="_self">远元集团</a>&nbsp;版权所有&nbsp;2014-2019&nbsp;陕ICP备16019859号&nbsp;</span>
		</div>
	</div>
 	 <div id="panel" style="" >
		<ul class="icons">
			<li class="up" title="上一页"></li>
			<li class="qq"></li>
			<li class="tel"></li>
			<li class="wx"></li>
			<li class="down" title="下一页"></li>
		</ul> 
		<ul class="info"> 
			<li class="qq" style="display: none;">
			<p>在线沟通，请点我<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=319147570&amp;site=qq&amp;menu=yes" target="_blank">在线咨询</a></p>
			</li>
			<li class="tel" style="display: list-item;">
			<p>咨询热线：<br>400-029-0303<br>客服qq：<br>319147570</p>
			</li>
			<li class="wx" style="display: none;"> 
			<div class="img">
				<img src="<%=basePath %>static/resource/images1/guanfang.png" width="120" height="120">
			</div> 
			
			</li>
		</ul>  
	</div>
<!-- 	 <div class="index_cy"></div> -->
	 <script src="<%=basePath %>static/resource/assert/js/bootstrap.min.js"></script>
	 <script src="<%=basePath %>static/resource/assert/js/jquery.vm-carousel.js"></script>
	 <script src="<%=basePath %>static/resource/assert/js/scolltop.js"></script>
 
 
</body>
</html>
