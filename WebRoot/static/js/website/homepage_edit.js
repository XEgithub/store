 /**
 * 首页设置
 * 页面动态配置
 *
 */

$(top.hangge());

/**
 *  这是里设置模块内容的类型数据值
 * @param obj		checkbox this
 * @param valueid	input id 
 * @param typeNum	checkbox number
 */
function showPicButton(obj,valueid,typeNum){
	 
	if($(obj).prop("checked")){ 
		
		$("#"+valueid).attr("value"+typeNum,1);
	}else{
		$("#"+valueid).attr("value"+typeNum,0);
	} 
}

/**
 * 新增模块的方法
 */
function addNewModular(){
  
	var modularNum= $("#table_report").attr("modularNum");
	 modularNum++;
	 var tempStr='<tr id="modularTrId'+modularNum+'" modularContentNum="1" style="background-color:#D5E9ED;">'+
	  '<td style="width:75px;text-align: right;padding-top: 13px;">模块'+modularNum+'名称:</td>'+
	  '<td>'+
	  	'<input type="text" name="MODULAR'+modularNum+'NAME" id="MODULAR'+modularNum+'NAME" value="" maxlength="255" placeholder="这里输入模块'+modularNum+'名称" title="模块'+modularNum+'名称" style="width:98%;"/>'+
	  '</td>'+
	  '<td colspan="2" ><a class="btn btn-mini btn-danger" onclick="delModular(\''+modularNum+'\');">删除模块</a>'+
	  '<input value1="1" value2="0" value3="0" modularNum="'+modularNum+'"    name="types'+modularNum+'"  id="types'+modularNum+'" type="hidden">'+ 
	   '<input name="checkbox1" type="checkbox" checked="checked" class="ace ace-checkbox-2" onclick="showPicButton(this,\'types'+modularNum+'\',1);">'+
	   '<span class="lbl">图片</span>'+
	   '<input name="checkbox2" type="checkbox" class="ace ace-checkbox-2"  onclick="showPicButton(this,\'types'+modularNum+'\',2);">'+
	   '<span class="lbl">文字</span>'+
	   '<input name="checkbox3" type="checkbox" class="ace ace-checkbox-2"  onclick="showPicButton(this,\'types'+modularNum+'\'3);">'+
	   '<span class="lbl">视频</span>'+
	   '</td>'+
	 '</tr>'+ 
	 '<tr   parentId="modularTrId'+modularNum+'"  modularContentNum="1">'+
	  	   '<td style="width:75px;text-align: right;padding-top: 13px;">模块'+modularNum+'内容:</td>'+
	  	   '<td>'+
	  	   		'<input type="text" id="imgpath_'+modularNum+'_1" hompageId=""  placeholder="路径" class="col-xs-10 col-sm-7" value="">&nbsp;'+
	  	   		'<input type="text" id="file_'+modularNum+'_1" placeholder="提示文字" class="col-xs-10" style="display: none;" />'+
		   '</td>'+
		   '<td colspan="2">'+
			 '<a class="btn btn-mini btn-success" onclick="addNewModularContent('+modularNum+');">新  增</a>&nbsp;'+
			 '<a class="btn btn-mini btn-warn" onclick="uploadimg(\'file_'+modularNum+'_1\');">上传</a>&nbsp;'+
			 '<a class="btn btn-mini btn-danger" onclick="delPicImg();">删除图片</a>&nbsp;'+
			 '<a class="btn btn-mini btn-danger" onclick="viewPicImg(\'imgpath_'+modularNum+'_1\');">查看图片</a>&nbsp;'+
		  '</td></tr>';  
	
  	$("#table_report").attr("modularNum",modularNum); 
	$("#solidTr").before(tempStr);
	uploadModularImage("imgpath_"+modularNum+"_1","file_"+modularNum+"_1");
	
}

/**
 * 删除模块的方法
 */
function delModular(modularNum){
	$("#modularTrId"+modularNum).remove();
	$("tr[parentId='modularTrId"+modularNum+ "']").remove();    	
}

/**
 * 新增模块内容的方法   
 */
function addNewModularContent(modularNum){ 
	var modularContentNum= 	$("#modularTrId"+modularNum).attr("modularContentNum"); 
	modularContentNum=parseInt(modularContentNum)+1;   
	var tempStr='<tr parentId="modularTrId'+modularNum+'"  modularContentNum="'+modularContentNum+'">'+ 
				'<td style="width:75px;text-align: right;padding-top: 13px;">模块'+modularContentNum+'内容:</td><td>'+
					 ' <input type="text" id="imgpath_'+modularNum+'_'+modularContentNum+'" hompageId=""  placeholder="路径" class="col-xs-10 col-sm-7" value="">&nbsp;'+
					 '<input type="text" id="file_'+modularNum+'_'+modularContentNum+'" placeholder="提示文字" class="col-xs-10" style="display: none;" />'+
				'</td>'+
				'<td colspan="2">'+
					'<a class="btn btn-mini btn-danger" onclick="delNewModularContent('+modularNum+','+modularContentNum+');">删除</a>&nbsp;'+
					 '<a class="btn btn-mini btn-warn" onclick="uploadimg(\'file_'+modularNum+'_'+modularContentNum+'\');">上传</a>&nbsp;'+
					 '<a class="btn btn-mini btn-danger" onclick="delPicImg();">删除图片</a>&nbsp;'+
					 '<a class="btn btn-mini btn-danger" onclick="viewPicImg(\'imgpath_'+modularNum+'_'+modularContentNum+'\');">查看图片</a>&nbsp;'+
				'</td></tr>';  
	$("#modularTrId"+modularNum).attr("modularContentNum",modularContentNum);  
	$("tr[parentId='modularTrId"+modularNum+"'][modularContentNum='"+(modularContentNum-1)+"']").after(tempStr);
	uploadModularImage("imgpath_"+modularNum+"_"+modularContentNum,"file_"+modularNum+"_"+modularContentNum);
} 
/**
 * 删除模块内容的方法
 */
function delNewModularContent(parentId,id){
	//这里行数必须大于1
	if(parseInt(id)>1){
		var modularContentNum=parseInt(id)-1; 
		
		bootbox.confirm("确定要删除吗?", function(result) {
			if(result) {
			 
				var str=$("#imgpath_"+parentId+"_"+modularContentNum).attr("hompageId");			 
				$.ajax({
					type: "POST",
					url: $ctx+'homepage/deleteAll.do?tm='+new Date().getTime(),
			    	data: {DATA_IDS:str},
					dataType:'json',
					//beforeSend: validateData,
					cache: false,
					success: function(data){
						$("#modularTrId"+parentId).attr("modularContentNum",modularContentNum);  
						$("tr[parentId='modularTrId"+parentId+"'][modularContentNum='"+id+"']").remove();  
					}
				});
			}
		});      
	}
}
/**
 * 上传图片
 * @param id
 */
function uploadimg(id){
	
	$("#"+id).uploadifyUpload();
}

/**
 * 显示图片
 * @param id
 */
function viewPicImg(id){
	
	var imgpath=$("#"+id).val();
	$("#imageDivID").css({
		"background-image":"url('"+imgpath+"')" 
	}).show();
  
}

/**
 * 隐藏图片的方法
 * @param id
 */
function hidePicImage(id){
	$("#"+id).hide();
}
/**
 * 上传模块图片的方法
 */
function  uploadModularImage(txtid,uploadID){
 
		$("#"+uploadID).uploadify({
			'buttonImg'	: 	$ctx+"static/images/fileup.png",
			'uploader'	:	$ctx+"plugins/uploadify/uploadify.swf",
			'script'    :	$ctx+"plugins/uploadify/uploadFile.jsp;jsessionid="+jsessionid,
			'cancelImg' :	$ctx+"plugins/uploadify/cancel.png",
			'folder'	:	$ctx+"uploadFiles/uploadFile",//上传文件存放的路径,请保持与uploadFile.jsp中PATH的值相同
			'queueId'	:	"fileQueue",
			'queueSizeLimit'	:	1,//限制上传文件的数量
			'fileExt'	:	"*.jpg;*.png;*.gif",
			'fileDesc'	:	"*.jpg;*.png;*.gif",//限制文件类型
//			'fileExt'     : "*.jpg,*.png,*.gif",
			'fileDesc'    : 'Please choose(.*, .*, .*)',
			'auto'		:	false,
			'multi'		:	false,//是否允许多文件上传
			'simUploadLimit':	2,//同时运行上传的进程数量
			'buttonText':	"files",
			'scriptData':	{'uploadPath':'/uploadFiles/uploadFile/'},//这个参数用于传递用户自己的参数，此时'method' 必须设置为GET, 后台可以用request.getParameter('name')获取名字的值
			'method'	:	"GET",
			'onComplete':function(event,queueId,fileObj,response,data){
				var str = response.trim();//单个上传完毕执行 
			 	$("#"+txtid).val("uploadFiles/uploadFile/"+str); 
			} 
		});
	  
	 
}
 
 

/**
 * 保存数据
 */
function save() {
	//获取主题
	var THEME=$("#THEME").val();
	var ArrData=[];  
	
	//获取模块名称 modularTrId1	
	var THEMECONTENT=$("#THEMECONTENT").val();	
	//获取模块名称下的值
	  var item11Num= $("tr[id^='modularTrId']").length;
	 $("tr[id^='modularTrId']").each(function(){
	 
		   var id=$(this).attr("id")+"";
		   var mainNum=id.substr(id.lastIndexOf("d")+1);
		   var itemNum= $("tr[parentId='"+id+"']").length;
		   var MODULAR1CONTENT="";
		   
		   var MODULAR1NAME=$("#MODULAR"+mainNum+"NAME").val();
			 
		   var types1=$("#types"+mainNum).attr("value1");
		   var types2=$("#types"+mainNum).attr("value2"); 
		   var types3=$("#types"+mainNum).attr("value3");
		   var types=types1+"_"+types2+"_"+types3; 	
			 
		   for(var j=1;j<=itemNum;j++){
				var imgPath=$("#imgpath_"+mainNum+"_"+j).val();
				  HOMEPAGE_ID=$("#imgpath_"+mainNum+"_"+j).attr("hompageId");
				 ArrData. push({
						HOMEPAGE_ID:HOMEPAGE_ID,
						THEME:THEME,
						THEMECONTENT:THEMECONTENT,
						MODULAR1NAME:MODULAR1NAME,
						MODULAR1CONTENT:imgPath,
						TYPES:types
					}); 
		   }	 
		 
		  
	 });
	 
	 var arrDataStr=JSON.stringify(ArrData); 
	 $("#arrData").val(arrDataStr);  

	 $("#Form").submit();
	 $("#zhongxin").hide();
	 $("#zhongxin2").show();
}

 function myClick(){
	 
	 
	 alert('触发方法');
 }
 //
 function initEditData(){
	 
	 var url=$ctx+"homepage/getHomePageData";
		$.ajax({
			url:url,
			dataType:'json',
			success:function(data){
				
				if(null!=data&&data.length>0){
					
					$("#HOMEPAGE_ID").val(data[0].HOMEPAGE_ID); 
			
					$("#THEMECONTENT").val(data[0].THEMECONTENT);
					var modularNameConstant=data[0].MODULAR1NAME;
				
				
					
					var types=data[0].TYPES;
					$("#THEME").val(data[0].THEME);
					
					var typeArr=types.split("_");
					$("#MODULAR1NAME").val(modularNameConstant);
					$("#imgpath_1_1").attr("hompageId",data[0].HOMEPAGE_ID); 
					$("#types1").attr("value1",typeArr[0]).attr("value2",typeArr[1]).attr("value3",typeArr[3]); 
					$("#imgpath_1_1").val(data[0].MODULAR1CONTENT);
					var modularnum=1;
					var itemNum=1;
				  for(var i=1;i<data.length;i++){
						/*
						 * 创建组件，并赋予值,一组值 ，如何分类
						 * 如果组件存在，则增加条目，
						 */
						var MODULAR1NAME=data[i].MODULAR1NAME;
						var MODULAR1CONTENT= data[i].MODULAR1CONTENT;
						var TYPES=data[i].TYPES;
						if(modularNameConstant.indexOf(MODULAR1NAME)<0){
							//增加模块
							modularNameConstant+=MODULAR1NAME+",";	
							addNewModular();
							itemNum=1;
							modularnum+=1; 
							modularNameConstant=data[i].MODULAR1NAME;
							
							$("#MODULAR"+modularnum+"NAME").val(modularNameConstant);
							$("#imgpath_"+modularnum+"_"+itemNum).val(data[i].MODULAR1CONTENT);
							$("#imgpath_"+modularnum+"_"+itemNum).attr("hompageId",data[i].HOMEPAGE_ID);
							types=data[i].TYPES;
							typeArr=types.split("_"); 
						 
							$("#types"+modularnum).attr("value1",typeArr[0]).attr("value2",typeArr[1]).attr("value3",typeArr[3]); 
						
						}else{
							//增加条目
							    addNewModularContent(modularnum);
							    itemNum+=1;
							    $("#imgpath_"+modularnum+"_"+itemNum).val(data[i].MODULAR1CONTENT);
								$("#imgpath_"+modularnum+"_"+itemNum).attr("hompageId",data[i].HOMEPAGE_ID); 
								
						}
						
						
					  
					  
					}
					
				}
				 
			}
		});
 }

$(function () {
	initEditData();
	uploadModularImage("imgpath_1_1","file_1_1");
	


	if (!$("#THEME").val()) {

		$("#THEME").val("默认");
		$("#THEMECONTENT").val("static/config/theme.properties");
		$("#MODULAR1CONTENT").val("轮播主图");
	}

	//查询所有信息，初始化
	 
});
