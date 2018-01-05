<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://www.icesoft.com/icefaces/component" prefix="ice"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ICEfaces, Ajax for Java EE</title>
<link rel="stylesheet" type="text/css"
	href="./xmlhttp/css/rime/rime.css" />
</head>
<body>
	<div id="navigation">
		<ul class="navigationlist">
			<li><a id="showpageid" class="headpage" href="<%=basePath%>"
				onmousemove="moveMenu('aid0','xiala1','menuxiala1');">首页</a></li>
			<li><a id="aid0" class="subpage"
				onmousemove="moveMenu('aid0','xiala0','menuxiala0');"
				onmouseout="outMenu('xiala0');" href="">undefined</a></li>
			<li><a id="aid1" class="subpage"
				onmousemove="moveMenu('aid1','xiala1','menuxiala1');"
				onmouseout="outMenu('xiala1');" href="">undefined</a></li>
			<li><a id="aid2" class="subpage"
				onmousemove="moveMenu('aid2','xiala2','menuxiala2');"
				onmouseout="outMenu('xiala2');" href="">undefined</a></li>
			<li><a id="aid3" class="subpage"
				onmousemove="moveMenu('aid3','xiala3','menuxiala3');"
				onmouseout="outMenu('xiala3');" href="">undefined</a></li>
			<li><a id="aid4" class="subpage"
				onmousemove="moveMenu('aid4','xiala4','menuxiala4');"
				onmouseout="outMenu('xiala4');" href="">undefined</a></li>
			<li><a id="aid5" class="subpage"
				onmousemove="moveMenu('aid5','xiala5','menuxiala5');"
				onmouseout="outMenu('xiala5');" href="">undefined</a></li>
			<li><a id="aid6" class="subpage"
				onmousemove="moveMenu('aid6','xiala6','menuxiala6');"
				onmouseout="outMenu('xiala6');" href="">undefined</a></li>
			<li><a id="aid7" class="subpage"
				onmousemove="moveMenu('aid7','xiala7','menuxiala7');"
				onmouseout="outMenu('xiala7');" href="">undefined</a></li>
		</ul>
	</div>
	<div class="menuxiala" id="menuxiala0" style="width:790px;"
		onmouseout="suboutMenu('menuxiala0');">
		<span id="xialaundefined" style="padding-left:14px;"
			onmousemove="submoveMenu('aid0','menuxiala0')"><a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=关于远元&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;</span>
	</div>
	<div class="menuxiala" id="menuxiala1" style="width:694px;"
		onmouseout="suboutMenu('menuxiala1');">
		<span id="xiala6" style="padding-left:14px;"
			onmousemove="submoveMenu('aid1','menuxiala1')"><a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元产业&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元产业&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元产业&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元产业&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元产业&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;</span>
	</div>
	<div class="menuxiala" id="menuxiala2" style="width:598px;"
		onmouseout="suboutMenu('menuxiala2');">
		<span id="xiala5" style="padding-left:14px;"
			onmousemove="submoveMenu('aid2','menuxiala2')"><a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=新闻中心&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;</span>
	</div>
	<div class="menuxiala" id="menuxiala3" style="width:502px;"
		onmouseout="suboutMenu('menuxiala3');">
		<span id="xiala3" style="padding-left:14px;"
			onmousemove="submoveMenu('aid3','menuxiala3')"><a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元文化&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元文化&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元文化&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元文化&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;</span>
	</div>
	<div class="menuxiala" id="menuxiala4" style="width:406px;"
		onmouseout="suboutMenu('menuxiala4');">
		<span id="xiala4" style="padding-left:14px;"
			onmousemove="submoveMenu('aid4','menuxiala4')"><a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元基金会&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元基金会&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=远元基金会&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;</span>
	</div>
	<div class="menuxiala" id="menuxiala5" style="width:310px;"
		onmouseout="suboutMenu('menuxiala5');">
		<span id="xiala3" style="padding-left:14px;"
			onmousemove="submoveMenu('aid5','menuxiala5')"><a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=联系我们&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=联系我们&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;<a
			onclick="openPage('http://localhost:9999/store/newsData.do?CATALOG_NAME=联系我们&amp;SUBDIRECTORY_NAME=undefined&amp;SUNCATALOGUE_NAME=')">undefined</a>&nbsp;&nbsp;
			&nbsp;</span>
	</div>
	<div class="menuxiala" id="menuxiala6" style="width:214px;"
		onmouseout="suboutMenu('menuxiala6');">
		<span id="xiala3" style="padding-left:14px;"
			onmousemove="submoveMenu('aid6','menuxiala6')"></span>
	</div>
	<div class="menuxiala" id="menuxiala7" style="width:118px;"
		onmouseout="suboutMenu('menuxiala7');">
		<span id="xiala0" style="padding-left:14px;"
			onmousemove="submoveMenu('aid7','menuxiala7')"></span>
	</div>
</body>
</html>
