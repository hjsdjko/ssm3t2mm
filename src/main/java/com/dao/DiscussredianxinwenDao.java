package com.dao;

import com.entity.DiscussredianxinwenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussredianxinwenVO;
import com.entity.view.DiscussredianxinwenView;


/**
 * 热点新闻评论表
 * 
 * @author 
 * @email 
 * @date 2021-04-17 17:50:19
 */
public interface DiscussredianxinwenDao extends BaseMapper<DiscussredianxinwenEntity> {
	
	List<DiscussredianxinwenVO> selectListVO(@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);
	
	DiscussredianxinwenVO selectVO(@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);
	
	List<DiscussredianxinwenView> selectListView(@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);

	List<DiscussredianxinwenView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);
	
	DiscussredianxinwenView selectView(@Param("ew") Wrapper<DiscussredianxinwenEntity> wrapper);
	
}
