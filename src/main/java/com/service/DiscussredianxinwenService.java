package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussredianxinwenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussredianxinwenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussredianxinwenView;


/**
 * 热点新闻评论表
 *
 * @author 
 * @email 
 * @date 2021-04-17 17:50:19
 */
public interface DiscussredianxinwenService extends IService<DiscussredianxinwenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussredianxinwenVO> selectListVO(Wrapper<DiscussredianxinwenEntity> wrapper);
   	
   	DiscussredianxinwenVO selectVO(@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);
   	
   	List<DiscussredianxinwenView> selectListView(Wrapper<DiscussredianxinwenEntity> wrapper);
   	
   	DiscussredianxinwenView selectView(@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussredianxinwenEntity> wrapper);
   	
}

