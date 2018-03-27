/**
 * 
 */
	$(document).ready(function (e) {
		
/*		
		var navigatinStr=""; 
		$.ajax({
			type: "POST",
			url:$.ctx +'getshowMenuData.do?tm='+new Date().getTime(),
			dataType:'json',
			success: function(data){
				var subMenuStr="";
				var navigatinStr='<div id="navigation"><ul class="navigationlist">';
				    navigatinStr+='<li><a id="showpageid" class="headpage" href="'+$.ctx+'"  onmousemove="moveMenu(\'aid0\',\'xiala1\',\'menuxiala1\');" >首页</a></li>';
				 var initWidth=790;
				   for (var i = 0; i < data.length; i++) {
					  var menu=data[i];
					  if(menu.NAME!="在线视频"&&menu.NAME!="行业动态"){ 
						  navigatinStr+='<li><a id="aid'+(i+1)+'" class="subpage" onmousemove="moveMenu(\'aid'+(i+1)+'\',\'xiala'+(i+1)+'\',\'menuxiala'+(i+1)+'\');"  onmouseout="outMenu(\'xiala'+i+'\');" href=""  >'+menu.NAME+'</a></li>';
						  var subMenuArr=menu.subDict;
						  subMenuStr+='<div class="menuxiala" id="menuxiala'+(i+1)+'" style="width:'+initWidth+'px;" onmouseout="suboutMenu(\'menuxiala'+(i+1)+'\');">';
						  subMenuStr+='<span id="xiala'+j+'" style="padding-left:14px;" onmousemove="submoveMenu(\'aid'+i+'\',\'menuxiala'+i+'\')" >';
						  for (var j = 0; j < subMenuArr.length; j++) {
							  var subMenu=subMenuArr[j];
							  subMenuStr+='<a onclick="openPage(\''+$.ctx+'newsData.do?CATALOG_NAME='+menu.NAME+'&amp;SUBDIRECTORY_NAME='+subMenu.NAME+'&amp;SUNCATALOGUE_NAME=\')">'+subMenu.NAME+'</a>&nbsp;&nbsp; &nbsp;';
						  }
						  subMenuStr+="</span></div>"; 
						  initWidth-=96;  
						  
					  }
				  }  
				   navigatinStr+="</ul></div>";
				   console.info(navigatinStr+subMenuStr); 
				   
				  // $("#logo").append(navigatinStr+subMenuStr	);
				
			} 
			
		});*/
		
		$.ajax({
			type: "POST",
			url:$.ctx +'getshowMenuData.do?tm='+new Date().getTime(),
			dataType:'json',
			success: function(data){
				
				var str="";
				var wid=790;
				for(var i=0;i<data.length;i++){
					k=i+1;
					str+="<li><a id=\"aid"+k+"\" class=\"subpage\" onmousemove=\"moveMenu('aid"+k+"','xiala"+k+"','menuxiala"+k+"');\" " +
							" onmouseout=\"outMenu('xiala"+k+"');\" href=\"\"  >"+data[i].NAME+"</a></li>";
				  var sublist=data[i].subDict;
				  var subTitle=""; 
				  var subDIV="<div class=\"menuxiala\" id=\"menuxiala"+k+"\" style=\"width: "+wid+"px;\" onmouseout=\"suboutMenu('menuxiala"+k+"');\">"+
						"<span id=\"xiala"+k+"\" style=\"padding-left:14px;\" onmousemove=\"submoveMenu('aid"+k+"','menuxiala"+k+"')\" >";
					 
				  for(var j=0;j<sublist.length;j++){
					  subTitle+="<a onclick=\"openPage('"+$.ctx+"newsData.do?CATALOG_NAME="+data[i].NAME+"&amp;SUBDIRECTORY_NAME="+sublist[j].NAME+"&amp;SUNCATALOGUE_NAME=')\">"+sublist[j].NAME+"</a>&nbsp;&nbsp; &nbsp;   ";
				  }
				  wid=wid-96;
				  $("#logo").append(subDIV+subTitle+"</span></div>"); 
				}
				$(".navigationlist").append(str);
			}
		});
		
		var $li = $('#tab li');
		var $ul = $('#content ul');
		//新闻资讯直接加载
		getWebSiteData("newsimgid","newstitleid","newsbriefid","新闻中心","新闻中心","",2);		
		$li.mouseover(function(){
		 
			var $this = $(this);
			var $t = $this.index();
			$li.removeClass();
			$this.addClass('current');
			$ul.css('display','none');
			$ul.eq($t).css('display','block');
			//行业动态
			if($t==1){ 
				getWebSiteData("media_img_id","media_title_id","media_brief_id","行业动态","","",2);
			}
			// 店面分布 
			if($t==2){ 
				 
			}
			if($t==3){ 
				getWebSiteData("","onlineVideo","","新闻中心","聚焦媒体","",6);	   
			}
			
		});	
		
	});
	
	
	function getWebSiteData(imgid,titleid,briefid,CATALOG_NAME,SUBDIRECTORY_NAME,SUNCATALOGUE_NAME,number){
		$.ajax({
			type: "POST",
			url:$.ctx +'goNews.do?tm='+new Date().getTime(),
	    	data: {
	    		CATALOG_NAME:CATALOG_NAME,
				SUBDIRECTORY_NAME:SUBDIRECTORY_NAME, 
				SUNCATALOGUE_NAME:SUNCATALOGUE_NAME
	    	},
			dataType:'json',
			success: function(data){

				if(number<data.length){
					number=data.length; 
				}
			 	for(var i=0;i<number;i++){   
					 	var pagedata=data[i];
					 	if(!!pagedata){
					 	if(imgid.length>0){
					  	
					  		$("#"+imgid+(i+1)).attr("src",$.ctx +pagedata.IMGPATH);	
					 	}
					 
					 	if(undefined!=pagedata.TITLE){
					 		var title=pagedata.TITLE; 
					 		
					 		var titleLen=30;
					 		if(briefid.length>0){
					 			titleLen=18;
					 		}
							if(title.length>=titleLen){
								title=title.substring(0,titleLen)+'……'; 
							} 	
					 	}
						var brief=pagedata.BRIEF_INTRODUCTION;
						
						if(brief.length>=42){
							brief=brief.substring(0,42)+'……';
						}
						
						if(titleid.length>0){
							$("#"+titleid+(i+1)).empty();
							$("#"+titleid+(i+1)).append(title); 
						}
						
						if(briefid.length>0){  
							 
							$("#"+briefid+(i+1)).empty();
							$("#"+briefid+(i+1)).append(brief);  
						}
					 }
				}  
			}
		}); 
	 
	}
	
	function setHomePage(obj) {
	 
        var aUrls = document.URL.split("/");
        var vDomainName = "http://" + aUrls[2] + "/";
        try {
            obj.style.behavior = "url(#default#homepage)";        
            obj.setHomePage(vDomainName);
            
        } catch (e) {
            if (window.netscape) {
                try {
                    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                }catch (e) {
                    alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将[signed.applets.codebase_principal_support]设置为'true'");
                } 
                var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
                prefs.setCharPref('browser.startup.homepage', vDomainName);
            }
        }
        if (window.netscape) alert("设置首页成功！");
        return false;
    }
	
    //加入收藏函数
    function addFavorite(obj) {
        var aUrls = document.URL.split("/");
        var vDomainName = "http://" + aUrls[2] + "/";
        var description = obj.title;
        try {//IE
            window.external.AddFavorite(vDomainName, description);
        } catch (e) {//Firefox
        	 try {
        		 window.sidebar.addPanel(description, vDomainName, "");
        	 }catch (e) {
        			if (/Opera/.test(window.navigator.userAgent)) { // Opera
        				obj.rel = "sidebar";
        				obj.href = url;
        				return true;
        			}
        	 }
        }
        return false; //阻止a标签继续执行
    }
 
     function moveMenu(aid,divid,menuxialaid){
    	
    	 if(aid=="aid0"){
    		 $(".navigationlist a").css({
        		 "background":"#ffffff",
        		 "color":"#000000"
        	 });
    		 $(".menuxiala").hide();
    		 $("#showpageid").css({
        		 "background":"#f00",
        		 "color":"#ffffff"
        	 });
    		 
    	 }else{
    		 var offset=$("#"+aid).position();
        	 var divwidth= $("#"+divid).width()+30;
        	 var mwidth=offset.left;
        	 var mtop=offset.top+100;
        	 
    		 $(".navigationlist a").css({
        		 "background":"#ffffff",
        		 "color":"#000000"
        	 });
        	 
        	 $("#"+aid).css({
        		 "background":"#f00",
        		 "color":"#ffffff"
        	 });
        	 
        	 $(".menuxiala").hide();
         
        	 $("#"+menuxialaid).css({
        		 "position":"absolute",
        		 "left":mwidth,
        		  top:mtop
        		 
        	 }).show();
        		$("#"+divid).show();
    		 
    	 }
     }
     
     function outMenu(id){
    	 
    	// $(".menuxiala").hide();
     }
 
     function submoveMenu(aid,subid){
    
    	 
    	 $(".navigationlist a").css({
    		 "background":"#ffffff",
    		 "color":"#000000"
    	 });
    	 
    	 $("#"+aid).css({
    		 "background":"#f00",
    		 "color":"#ffffff"
    	 });
    	 $("#"+subid).show();  
    	
    	
     }
     
     function suboutMenu(menuxialaid){
    	 
    	  $("#"+menuxialaid).hide();  
     }
 
    /*
               打开店面分布图
    */
    function openStoreDistribution(){ 
     		
       window.location.href=$.ctx+"website/storeDistribution.jsp"; 	 	
     		
    }