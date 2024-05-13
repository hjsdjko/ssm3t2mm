package com.dao;

import com.entity.RedianxinwenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RedianxinwenVO;
import com.entity.view.RedianxinwenView;


/**
 * 热点新闻
 * 
 * @author 
 * @email 
 * @date 2021-04-17 17:50:19
 */
public interface RedianxinwenDao extends BaseMapper<RedianxinwenEntity> {
	
	List<RedianxinwenVO> selectListVO(@Param("ew") Wrapper<RedianxinwenEntity> wrapper);
	
	RedianxinwenVO selectVO(@Param("ew") Wrapper<RedianxinwenEntity> wrapper);
	
	List<RedianxinwenView> selectListView(@Param("ew") Wrapper<RedianxinwenEntity> wrapper);

	List<RedianxinwenView> selectListView(Pagination page,@Param("ew") Wrapper<RedianxinwenEntity> wrapper);
	
	RedianxinwenView selectView(@Param("ew") Wrapper<RedianxinwenEntity> wrapper);
	
}
