/**
 * 
 */

	$(top.hangge());
		
		function uploadimg(){
			$('#uploadify1').uploadifyUpload();
		}
		
		//保存
		function save(){
 
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			
			alert("加载成功");
			$('#tp').ace_file_input({
				no_file:'请选择文件 ...',
				btn_choose:'选择',
				btn_change:'更改',
				droppable:false,
				onchange:null,
				thumbnail:false, //| true | large
				whitelist:'*',
				whitelist:'gif|png|jpg|jpeg',
				blacklist:'gif|png|jpg|jpeg'
				//onchange:''
				//
			});

			if(!$("#THEME").val()){
				
				$("#THEME").val("默认");
				$("#THEMECONTENT").val("static/config/theme.properties");
				$("#MODULAR1CONTENT").val("轮播主图");
			}
			
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});