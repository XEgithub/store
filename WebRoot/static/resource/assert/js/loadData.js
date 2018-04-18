/**
 * 
 */
	$(document).ready(function (e) {
		
		$.ajax({
			type: "POST",
			url:$.ctx +'getshowMenuData.do?tm='+new Date().getTime(),
			dataType:'json',
			success: function(res){
				var data=res["dictionList"];
				var str="";
				var wid=790;
				for(var i=0;i<data.length;i++){
					k=i+1;
					str+="<li><a id=\"aid"+k+"\" class=\"subpage\" onmousemove=\"moveMenu('aid"+k+"','xiala"+k+"','menuxiala"+k+"');\" " +
							" onmouseout=\"outMenu('xiala"+k+"');\" href=\"\"  >"+data[i].name+"</a></li>";
				  var sublist=data[i].subDict;
				  var subTitle=""; 
				  var subDIV="<div class=\"menuxiala\" id=\"menuxiala"+k+"\" style=\"width: "+wid+"px;\" onmouseout=\"suboutMenu('menuxiala"+k+"');\">"+
						"<span id=\"xiala"+k+"\" style=\"padding-left:14px;\" onmousemove=\"submoveMenu('aid"+k+"','menuxiala"+k+"')\" >";
					 
				  for(var j=0;j<sublist.length;j++){
					 
					  subTitle+="<a onclick=\"openPage('"+$.ctx+"newsData.do?CATALOG_NAME="+data[i].name+"&amp;SUBDIRECTORY_NAME="+sublist[j].name+"&amp;SUNCATALOGUE_NAME=')\">"+sublist[j].name+"</a>&nbsp;&nbsp; &nbsp;   ";
				  }
				  wid=wid-96;
				  $("#logo").append(subDIV+subTitle+"</span></div>"); 
				}
				$(".navigationlist").append(str);
				
				var homepages=res["homepgeList"];
				
				var aboutData=res["aboutList"];
			 
			//	initAboutUS(aboutData);
				var bottomImgList=[];
				var headimgStr="";
				for(var i=0;i<homepages.length;i++){  
					
					var title=homepages[i].MODULAR1NAME;
					var width=$(window).width();
					var str='<li><a href="javascript:void(0)" ><img src="'+$.ctx+homepages[i].MODULAR1CONTENT+'"  style="width:100%;height:450px;"  /></a></li>';
				
					if(title=="首页轮播图"){  
						headimgStr+=str;
					}
					if(title=="关于远元"){
						
						$("#aboutimgId").attr("src",$.ctx+homepages[i].MODULAR1CONTENT);
					} 
					if(title=="首页底部轮播图"){
						bottomImgList.push($.ctx+homepages[i].MODULAR1CONTENT);
					}
				}
				 initBottomImg(bottomImgList);
			 
				$("#headulid").append(headimgStr);
				slideImage();
			}
		});
		
		var $li = $('#tab li');
		var $ul = $('#content ul');
		//新闻资讯直接加载
		getWebSiteData("newsimgid","newstitleid","newsbriefid","","新闻中心","",2);		
		$li.mouseover(function(){
		 
			var $this = $(this);
			var $t = $this.index();
			$li.removeClass();
			$this.addClass('current');
			$ul.css('display','none');
			$ul.eq($t).css('display','block');
			//市场动态
			if($t==1){ 
				getWebSiteData("media_img_id","media_title_id","media_brief_id","新闻中心","市场动态","",2);
			}
			// 店面分布 
			if($t==2){ 
				 
			}
			if($t==3){ 
				getWebSiteData("","onlineVideo","","新闻中心","媒体聚焦","",6);	   
			}
			
		});	
		
	});
	
	function initBottomImg(bottomImgList){
		var str="";
		for(var i=0;i<bottomImgList.length;i++){
			if(i%2==0){
				str+='<li><a href="#"  target="_blank">'
					+'<img class="imgtitle" src="'+bottomImgList[i]+'" width="250" height="180" /></a>';
			}else{
				str+='<div class="centerImg" >'
				+'<img  class="shake" src="'+bottomImgList[i]+'" width="90" height="90">'
	 	 		+'</div></li>';
			}
		}
		
		$("#bottomImgUIID").append(str); 
		animationImg(); 
		 
	}
	
	function animationImg(){
		 $('.vmcarousel-centered-infitine').vmcarousel({
			 centered: true,
			 start_item: 1,
			 autoplay: true,
			 infinite: true
		  });   
		
	}
	
	function initAboutUS(aboutData){
	
		for(var i=0;i<aboutData.length;i++){  
			var name=aboutData[i].SUBDIRECTORY_NAME;
			if(name=="集团简介"){
				var content=aboutData[i].CONTENT;
				var newcontent=content.substring(0,1950);
				$("#aboutUSContentID").append(newcontent);
			}
		}
	}
	
	/**
	 * 首页轮播图
	 */
	function slideImage(){
		
		if ($(".bannerlist li").length > 0) {
			 $('#banner_main').slide({
					titCell: '.hd ul',
					mainCell: '#banner ul',
					autoPlay: true,
					autoPage: true,
					delayTime: 500,
					effect: 'left',
					prevCell:'#bgnextid',
					nextCell:'#bgfrontid',
					trigger:"click"
				}); 
				$(window).resize(function () {
					CenterBanner();
				});
				 
					CenterBanner();
				 
			} else {
			 
				$("#banner_main").hide();
			}
		
		function CenterBanner() {
			var imgWidth = parseInt($(".bannerlist li img:first").width());
			if (imgWidth <= 0)
				return;
			var winWidth = parseInt($(window).width());
			var offset = parseInt((winWidth - imgWidth) / 2);
		 
		} 
		
		
	}
	
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
    /**
     * 
     * @param aid
     * @param divid
     * @param menuxialaid
     */
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
 
     /**
      * 
      * @param aid
      * @param subid
      */
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