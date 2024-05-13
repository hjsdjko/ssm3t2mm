package com.entity.view;

import com.entity.RedianxinwenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热点新闻
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-17 17:50:19
 */
@TableName("redianxinwen")
public class RedianxinwenView  extends RedianxinwenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RedianxinwenView(){
	}
 
 	public RedianxinwenView(RedianxinwenEntity redianxinwenEntity){
 	try {
			BeanUtils.copyProperties(this, redianxinwenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
