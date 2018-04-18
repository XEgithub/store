package com.fh.controller.website.homepage;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.homepage.HomePage;
import com.fh.service.website.homepage.HomePageManager;
import com.fh.util.AppUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;

/**
 * 说明：首页设置 创建人：dp 创建时间：2018-04-02
 */
@Controller
@RequestMapping(value = "/homepage")
public class HomePageController extends BaseController {

	String menuUrl = "homepage/list.do"; // 菜单地址(权限用)
	@Resource(name = "homepageService")
	private HomePageManager homepageService;

	/**
	 * 保存
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/save")
	public ModelAndView save() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "新增HomePage");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
			return null;
		} // 校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String arrData = pd.getString("arrData");
		 

		HomePage[] homePages = (HomePage[]) JSONArray.toArray(
				JSONArray.fromObject(arrData), HomePage.class);
		
		for (HomePage homePage : homePages) {
			//HOMEPAGE_ID
			if(null!=homePage.getHOMEPAGE_ID()&&!homePage.getHOMEPAGE_ID().equals("")){ 
				pd.put("HOMEPAGE_ID", homePage.getHOMEPAGE_ID());  
			}else{
				pd.put("HOMEPAGE_ID", this.get32UUID());  
			}
			
			
			pd.put("THEME", homePage.getTHEME());  
			pd.put("THEMECONTENT", homePage.getTHEMECONTENT());  
			pd.put("MODULAR1NAME", homePage.getMODULAR1NAME()); 
			pd.put("MODULAR1CONTENT", homePage.getMODULAR1CONTENT());  
			pd.put("TYPES", homePage.getTYPES());  
			if(null!=homePage.getHOMEPAGE_ID()&&!homePage.getHOMEPAGE_ID().equals("")){
				homepageService.edit(pd);
			}else {
				homepageService.save(pd);
				
			}
		}
	
		mv.addObject("msg", "success");
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 删除
	 * 
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value = "/delete")
	public void delete(PrintWriter out) throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "删除HomePage");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "del")) {
			return;
		} // 校验权限
		PageData pd = new PageData();
		pd = this.getPageData();
		homepageService.delete(pd);
		out.write("success");
		out.close();
	}

	/**
	 * 修改
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/edit")
	public ModelAndView edit() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "修改HomePage");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "edit")) {
			return null;
		} // 校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		homepageService.edit(pd);
		mv.addObject("msg", "success");
		mv.setViewName("save_result");
		return mv;
	}

	/**
	 * 列表
	 * 
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(Page page) throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "列表HomePage");
		// if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		// //校验权限(无权查看时页面会有提示,如果不注释掉这句代码就无法进入列表页面,所以根据情况是否加入本句代码)
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String keywords = pd.getString("keywords"); // 关键词检索条件
		if (null != keywords && !"".equals(keywords)) {
			pd.put("keywords", keywords.trim());
		}
		page.setPd(pd);
		List<PageData> varList = homepageService.list(page); // 列出HomePage列表
		mv.setViewName("website/homepage/homepage_list");
		mv.addObject("varList", varList);
		mv.addObject("pd", pd);
		mv.addObject("QX", Jurisdiction.getHC()); // 按钮权限
		return mv;
	}
	
	
	/**
	 * 得到电视视频地址 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/getHomePageData")  
	@ResponseBody
	public   String getHomePageData() throws Exception{
		
		PageData pd = new PageData(); 
		pd = this.getPageData(); 
		pd.put("STATUS", "true");
		List<PageData> varList = homepageService.listAll(pd);
		String json = ""; 
		if (null != varList) {
			JSONArray arr = JSONArray.fromObject(varList);  
			json = arr.toString();
		}
		return json;
		
	}
	

	/**
	 * 去新增页面
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/goAdd")
	public ModelAndView goAdd() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		mv.setViewName("website/homepage/homepage_edit");
		mv.addObject("msg", "save");
		mv.addObject("pd", pd);
		return mv;
	}

	/**
	 * 去修改页面
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/goEdit")
	public ModelAndView goEdit() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = homepageService.findById(pd); // 根据ID读取
		mv.setViewName("website/homepage/homepage_edit");
		mv.addObject("msg", "edit");
		mv.addObject("pd", pd);
		return mv;
	}

	/**
	 * 批量删除
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/deleteAll")
	@ResponseBody
	public Object deleteAll() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "批量删除HomePage");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "del")) {
			return null;
		} // 校验权限
		PageData pd = new PageData();
		Map<String, Object> map = new HashMap<String, Object>();
		pd = this.getPageData();
		List<PageData> pdList = new ArrayList<PageData>();
		String DATA_IDS = pd.getString("DATA_IDS");
		if (null != DATA_IDS && !"".equals(DATA_IDS)) {
			String ArrayDATA_IDS[] = DATA_IDS.split(",");
			homepageService.deleteAll(ArrayDATA_IDS);
			pd.put("msg", "ok");
		} else {
			pd.put("msg", "no");
		}
		pdList.add(pd);
		map.put("list", pdList);
		return AppUtil.returnObject(pd, map);
	}

	/**
	 * 导出到excel
	 * 
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value = "/excel")
	public ModelAndView exportExcel() throws Exception {
		logBefore(logger, Jurisdiction.getUsername() + "导出HomePage到excel");
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "cha")) {
			return null;
		}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("主题名称"); // 1
		titles.add("主题内容"); // 2
		titles.add("模块名称"); // 3
		titles.add("模块内容"); // 4
		titles.add("模块类型"); // 5
		dataMap.put("titles", titles);
		List<PageData> varOList = homepageService.listAll(pd);
		List<PageData> varList = new ArrayList<PageData>();
		for (int i = 0; i < varOList.size(); i++) {
			PageData vpd = new PageData();
			vpd.put("var1", varOList.get(i).getString("THEME")); // 1
			vpd.put("var2", varOList.get(i).getString("THEMECONTENT")); // 2
			vpd.put("var3", varOList.get(i).getString("MODULAR1NAME")); // 3
			vpd.put("var4", varOList.get(i).getString("MODULAR1CONTENT")); // 4
			vpd.put("var5", varOList.get(i).getString("TYPES")); // 5
			varList.add(vpd);
		}
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();
		mv = new ModelAndView(erv, dataMap);
		return mv;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,
				true));
	}
}
