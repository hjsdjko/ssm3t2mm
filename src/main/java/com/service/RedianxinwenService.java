package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.RedianxinwenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.RedianxinwenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.RedianxinwenView;


/**
 * 热点新闻
 *
 * @author 
 * @email 
 * @date 2021-04-17 17:50:19
 */
public interface RedianxinwenService extends IService<RedianxinwenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RedianxinwenVO> selectListVO(Wrapper<RedianxinwenEntity> wrapper);
   	
   	RedianxinwenVO selectVO(@Param("ew") Wrapper<RedianxinwenEntity> wrapper);
   	
   	List<RedianxinwenView> selectListView(Wrapper<RedianxinwenEntity> wrapper);
   	
   	RedianxinwenView selectView(@Param("ew") Wrapper<RedianxinwenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RedianxinwenEntity> wrapper);
   	
}

