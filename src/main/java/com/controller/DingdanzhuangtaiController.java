package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.DingdanzhuangtaiEntity;
import com.entity.view.DingdanzhuangtaiView;

import com.service.DingdanzhuangtaiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 订单状态
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-02 18:40:15
 */
@RestController
@RequestMapping("/dingdanzhuangtai")
public class DingdanzhuangtaiController {
    @Autowired
    private DingdanzhuangtaiService dingdanzhuangtaiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DingdanzhuangtaiEntity dingdanzhuangtai, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			dingdanzhuangtai.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<DingdanzhuangtaiEntity> ew = new EntityWrapper<DingdanzhuangtaiEntity>();
    	PageUtils page = dingdanzhuangtaiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanzhuangtai), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DingdanzhuangtaiEntity dingdanzhuangtai, HttpServletRequest request){
        EntityWrapper<DingdanzhuangtaiEntity> ew = new EntityWrapper<DingdanzhuangtaiEntity>();
    	PageUtils page = dingdanzhuangtaiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dingdanzhuangtai), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DingdanzhuangtaiEntity dingdanzhuangtai){
       	EntityWrapper<DingdanzhuangtaiEntity> ew = new EntityWrapper<DingdanzhuangtaiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( dingdanzhuangtai, "dingdanzhuangtai")); 
        return R.ok().put("data", dingdanzhuangtaiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DingdanzhuangtaiEntity dingdanzhuangtai){
        EntityWrapper< DingdanzhuangtaiEntity> ew = new EntityWrapper< DingdanzhuangtaiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( dingdanzhuangtai, "dingdanzhuangtai")); 
		DingdanzhuangtaiView dingdanzhuangtaiView =  dingdanzhuangtaiService.selectView(ew);
		return R.ok("查询订单状态成功").put("data", dingdanzhuangtaiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        DingdanzhuangtaiEntity dingdanzhuangtai = dingdanzhuangtaiService.selectById(id);
        return R.ok().put("data", dingdanzhuangtai);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        DingdanzhuangtaiEntity dingdanzhuangtai = dingdanzhuangtaiService.selectById(id);
        return R.ok().put("data", dingdanzhuangtai);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DingdanzhuangtaiEntity dingdanzhuangtai, HttpServletRequest request){
    	dingdanzhuangtai.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(dingdanzhuangtai);

        dingdanzhuangtaiService.insert(dingdanzhuangtai);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DingdanzhuangtaiEntity dingdanzhuangtai, HttpServletRequest request){
    	dingdanzhuangtai.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(dingdanzhuangtai);

        dingdanzhuangtaiService.insert(dingdanzhuangtai);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DingdanzhuangtaiEntity dingdanzhuangtai, HttpServletRequest request){
        //ValidatorUtils.validateEntity(dingdanzhuangtai);
        dingdanzhuangtaiService.updateById(dingdanzhuangtai);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        dingdanzhuangtaiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<DingdanzhuangtaiEntity> wrapper = new EntityWrapper<DingdanzhuangtaiEntity>();
		if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = dingdanzhuangtaiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
